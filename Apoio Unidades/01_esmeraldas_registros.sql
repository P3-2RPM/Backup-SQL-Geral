/*
================================================================================
PROJETO: Painel de Produtividade Operacionais - 6ª Cia PM Ind / 2ª RPM
DESCRIÇÃO: Script para extração e contagem de produtividade (Presos, Armas, 
           Veículos e Mortes) baseada em registros de ocorrências do ano 2025.
VERSÃO: 1.0
CONTATO: Davy Maykol
================================================================================
*/

WITH GUARNICAO AS (
    -- Consolida os militares da guarnição em uma única linha por ocorrência
    SELECT
        IGO.numero_ocorrencia,
        GROUP_CONCAT(DISTINCT IGO.numero_matricula, ',') AS matriculas_militares
    FROM db_bisp_reds_reporting.tb_integrante_guarnicao_ocorrencia IGO
    WHERE YEAR(IGO.data_hora_fato) = 2025
      AND (IGO.unidade_servico_nome LIKE '%6 CIA PM IND/2 RPM%' 
           OR IGO.unidade_servico_nome LIKE '%6 CIA PM IND/2RPM%')
    GROUP BY IGO.numero_ocorrencia
),

PRESOS AS (
    -- Filtra envolvidos com prisão/apreensão ativa (exceto militares em serviço)
    SELECT
        ENV.numero_ocorrencia,
        ENV.ind_mandado_prisao,
        ENV.id_tipo_prisao_apreensao,
        ENV.natureza_ocorrencia_codigo,
        ENV.ind_militar_policial,
        ENV.ind_militar_policial_servico,
        ENV.valor_idade_aparente,
        ENV.id_envolvimento,
        ENV.numero_envolvido
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    INNER JOIN db_bisp_reds_reporting.tb_ocorrencia OCO
        ON OCO.numero_ocorrencia = ENV.numero_ocorrencia
    WHERE YEAR(ENV.data_hora_fato) = 2025
      AND ENV.digitador_id_orgao = 0
      AND ENV.id_tipo_prisao_apreensao IN (1, 2, 3, 4, 6, 7)
      AND ENV.ind_militar_policial IS DISTINCT FROM 'M' 
      AND ENV.ind_militar_policial_servico IS DISTINCT FROM 'S'
      AND (OCO.unidade_responsavel_registro_nome LIKE '%6 CIA PM IND/2 RPM%' 
           OR OCO.unidade_responsavel_registro_nome LIKE '%6 CIA PM IND/2RPM%')
),

QTDE_PRESOS AS (
    -- Agrega contagens de presos por categorias específicas (CVPA, CVPE, Tráfico, etc)
    SELECT
        P.numero_ocorrencia,
        COUNT(P.numero_ocorrencia) AS total_presos,
        COUNT(DISTINCT CASE WHEN P.natureza_ocorrencia_codigo IN ('C01157','C01158','C01159') AND P.id_envolvimento IN (35, 36, 44) THEN P.numero_envolvido END) AS quantidade_presos_cvpa,
        COUNT(DISTINCT CASE WHEN P.natureza_ocorrencia_codigo IN ('B01121','B01148','B02001','B01504') AND P.id_envolvimento IN (35, 36, 44) THEN P.numero_envolvido END) AS quantidade_presos_cvpe,
        COUNT(DISTINCT CASE WHEN P.natureza_ocorrencia_codigo IN ('C01155') AND P.id_envolvimento IN (35, 36, 44) THEN P.numero_envolvido END) AS quantidade_presos_furto,
        COUNT(DISTINCT CASE WHEN P.natureza_ocorrencia_codigo IN ('I04033','I04035','I04332','I04037','K21011','I04331','I04036','Y60001','Y02002') AND P.id_envolvimento IN (35, 36, 44) THEN P.numero_envolvido END) AS quantidade_presos_trafico,
        COUNT(DISTINCT CASE WHEN P.ind_mandado_prisao = 'S' THEN P.numero_envolvido END) AS quantidade_presos_mandado,
        COUNT(DISTINCT CASE WHEN P.id_tipo_prisao_apreensao = 7 AND P.id_envolvimento IN (35, 36, 44) THEN P.numero_envolvido END) AS quantidade_presos_tco,
        COUNT(DISTINCT CASE WHEN P.valor_idade_aparente < 18 THEN P.numero_envolvido END) AS quantidade_presos_menor
    FROM PRESOS P
    GROUP BY P.numero_ocorrencia
),

MORTES AS (
    -- Identifica registros de mortes violentas com atual formato
    SELECT DISTINCT ENV.numero_ocorrencia
    FROM db_bisp_reds_reporting.tb_ocorrencia AS OCO
    INNER JOIN db_bisp_reds_reporting.tb_envolvido_ocorrencia AS ENV ON OCO.numero_ocorrencia = ENV.numero_ocorrencia 
    WHERE ENV.id_envolvimento IN (25, 32, 1097, 26, 27, 28, 872)
      AND ENV.condicao_fisica_codigo = '0100' -- Óbito
      AND ENV.natureza_ocorrencia_codigo IN ('B01121','C01157','B02001','B01129','B01148','B01504')
      AND OCO.digitador_sigla_orgao IN ('PM','PC')
      AND OCO.nome_tipo_relatorio IN ('POLICIAL','REFAP')
      AND OCO.local_imediato_codigo NOT IN ('1302','1310') -- Exclui mortes dentro de unidades prisionais
      AND YEAR(ENV.data_hora_fato) = 2025
),

ARMAS AS (  
    -- Seleciona armas de fogo apreendidas (excluindo artesanais e simulacros)
    SELECT AFO.numero_ocorrencia
    FROM db_bisp_reds_reporting.tb_arma_ocorrencia AS AFO
    WHERE YEAR(AFO.data_hora_fato) = 2025
      AND AFO.situacao_codigo IN ('0100', '0700')
      AND AFO.digitador_id_orgao = 0 
      AND (AFO.unidade_responsavel_registro_nome LIKE '%6 CIA PM IND/2 RPM%' OR AFO.unidade_responsavel_registro_nome LIKE '%6 CIA PM IND/2RPM%')
      AND AFO.tipo_arma_descricao NOT LIKE '%PRESSAO%' 
      AND AFO.marca_arma_codigo NOT IN ('0400') -- Exclui fabricação artesanal
      AND NOT (AFO.marca_arma_codigo IN ('9900') AND (UPPER(AFO.informacao_complementar) LIKE '%FABRICA__O ARTESANAL%' OR UPPER(AFO.informacao_complementar) LIKE '%FABRICA__O CASEIRA%'))
),

QTDE_ARMAS AS (
    SELECT numero_ocorrencia, COUNT(numero_ocorrencia) AS total_armas
    FROM ARMAS
    GROUP BY numero_ocorrencia
),

VEICULOS AS (
    -- Filtra veículos removidos, apreendidos ou recuperados
    SELECT
        VEI.numero_ocorrencia,
        VEI.situacao_placa_codigo,
        VEI.numero_placa
    FROM db_bisp_reds_reporting.tb_veiculo_ocorrencia VEI
    WHERE YEAR(VEI.data_hora_fato) = 2025
      AND VEI.situacao_placa_codigo IN ('0500','0100','0400')
      AND VEI.digitador_id_orgao = 0
      AND (VEI.unidade_responsavel_registro_nome LIKE '%6 CIA PM IND/2 RPM%' OR VEI.unidade_responsavel_registro_nome LIKE '%6 CIA PM IND/2RPM%')
),

QTDE_VEICULOS AS (
    SELECT
        numero_ocorrencia,
        COUNT(DISTINCT CASE WHEN situacao_placa_codigo = '0500' THEN numero_placa END) AS quantidade_veiculos_removidos,
        COUNT(DISTINCT CASE WHEN situacao_placa_codigo = '0100' THEN numero_placa END) AS quantidade_veiculos_apreendidos,
        COUNT(DISTINCT CASE WHEN situacao_placa_codigo = '0400' THEN numero_placa END) AS quantidade_veiculos_recuperados
    FROM VEICULOS
    GROUP BY numero_ocorrencia
),

LETALIDADE AS (
    -- Filtra ocorrências com intervenção policial (Letalidade Policial)
    SELECT ENV.numero_ocorrencia
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    WHERE YEAR(ENV.data_hora_fato) = 2025
      AND ENV.natureza_ocorrencia_codigo IN ('B01121', 'B01129')
      AND ENV.id_envolvimento IN (35, 36, 44)
      AND ENV.ind_militar_policial = 'M'
      AND ENV.ind_militar_policial_servico = 'S'
)

/* CONSULTA FINAL:
   Une as métricas calculadas à tabela base de ocorrências 
*/
SELECT DISTINCT
    i.chamada_id, 
    o.numero_ocorrencia,
    FROM_TIMESTAMP(o.data_hora_fato, 'dd/MM/yy') AS data_fato,
    o.nome_tipo_relatorio,
    o.data_hora_fechamento,
    o.natureza_codigo,
    -- Flags de Classificação
    CASE WHEN o.natureza_codigo IN ('B01121','B01504','C01157','C01158','C01159','B01148','B02001') THEN 'S' END AS cv,
    CASE WHEN o.natureza_codigo IN ('I04033','I04035','I04332','I04037','K21011','I04331','I04036','Y60001','Y02002') THEN 'S' END AS trafico_drogas,
    CASE WHEN o.natureza_codigo IN ('Y10003','A08000') THEN 'S' END AS mp,
    CASE WHEN (o.id_compl_natureza IN (238,231,559) AND o.natureza_codigo IN ('C01155')) THEN 'S' END AS ind_furto_vei_res,
    CASE WHEN IMV.numero_ocorrencia IS NOT NULL THEN 'S' END AS imv,
    -- Localização e Unidade
    o.nome_bairro,
    o.nome_municipio,
    o.unidade_area_militar_codigo,
    o.unidade_area_militar_nome,
    o.unidade_responsavel_registro_nome,
    -- Produtividade e Guarnição
    COALESCE(G.matriculas_militares, '') AS matriculas_militares,
    COALESCE(QP.total_presos, 0) AS total_presos,
    COALESCE(QA.total_armas, 0) AS total_armas,
    COALESCE(QV.quantidade_veiculos_removidos, 0) AS vei_rem,
    COALESCE(QV.quantidade_veiculos_apreendidos, 0) AS vei_apr,
    COALESCE(QV.quantidade_veiculos_recuperados, 0) AS vei_rec,
    FROM_TIMESTAMP(o.data_hora_fim_preenchimento, 'dd/MM/yy') AS data_registro
FROM db_bisp_reds_reporting.tb_ocorrencia o
LEFT JOIN db_bisp_cad_reporting.tb_integracao_reds i  ON o.numero_ocorrencia = i.reds_numero
LEFT JOIN LETALIDADE LET ON o.numero_ocorrencia = LET.numero_ocorrencia
LEFT JOIN GUARNICAO G    ON o.numero_ocorrencia = G.numero_ocorrencia
LEFT JOIN QTDE_PRESOS QP ON o.numero_ocorrencia = QP.numero_ocorrencia
LEFT JOIN MORTES IMV     ON o.numero_ocorrencia = IMV.numero_ocorrencia
LEFT JOIN QTDE_ARMAS QA  ON o.numero_ocorrencia = QA.numero_ocorrencia
LEFT JOIN QTDE_VEICULOS QV ON o.numero_ocorrencia = QV.numero_ocorrencia
WHERE YEAR(o.data_hora_fato) = 2025
  AND (o.unidade_responsavel_registro_nome LIKE '%6 CIA PM IND/2 RPM%' 
       OR o.unidade_responsavel_registro_nome LIKE '%6 CIA PM IND/2RPM%')
  AND o.ind_estado = 'F' -- Apenas ocorrências finalizadas
  AND LET.numero_ocorrencia IS NULL -- Exclui ocorrências de letalidade policial da contagem geral
ORDER BY o.numero_ocorrencia;
