/*
================================================================================
PROJETO: Análise de Eventos de Roubos - Ribeirão das Neves (40º BPM)
DESCRIÇÃO: Consolida dados de ocorrências de roubo, agregando métricas 
           de prisões, apreensão de armas/drogas e tempo de resposta. 
           Realiza exclusão de letalidade policial e tratamento geoespacial.
MUNICÍPIO: Ribeirão das Neves (IBGE: 315460)
PERÍODO: 2023 - 2025
PRODUÇÃO: Sgt Maykol - 2ª RPM
SOLICITAÇÃO: Cap Antunes, via 40º BPM
================================================================================
           O primeiro script refere aos dados de eventos de roubo.
           O segundo script refere aos dados dos autores de roubo.
================================================================================           
*/

WITH AGUAS AS (
    -- Tabela de exceção para tratamento de coordenadas em curso d'água
    SELECT '310800810000009' AS setor_codigo, 'Rural'  AS zona_agua UNION ALL
    SELECT '311440205000086', 'Rural'  UNION ALL
    SELECT '312520005000014', 'Rural'  UNION ALL
    SELECT '312570510000021', 'Rural'  UNION ALL
    SELECT '312610910000009', 'Rural'  UNION ALL
    SELECT '315180005000418', 'Rural'  UNION ALL
    SELECT '315430905000031', 'Urbana' UNION ALL
    SELECT '315690810000020', 'Rural'  UNION ALL
    SELECT '316225205000015', 'Urbana' UNION ALL
    SELECT '316720205010026', 'Urbana' UNION ALL
    SELECT '316935605000093', 'Urbana' UNION ALL
    SELECT '310160705000238', 'Rural'  UNION ALL
    SELECT '310160705000241', 'Rural'  UNION ALL
    SELECT '310430405000063', 'Rural'  UNION ALL
    SELECT '310430405000071', 'Rural'  UNION ALL
    SELECT '311130905000043', 'Rural'  UNION ALL
    SELECT '311860105280029', 'Urbana' UNION ALL
    SELECT '312570508000008', 'Rural'  UNION ALL
    SELECT '312700805000039', 'Urbana' UNION ALL
    SELECT '313760105000244', 'Urbana' UNION ALL
    SELECT '314330205000733', 'Urbana' UNION ALL
    SELECT '314350005000030', 'Rural'  UNION ALL
    SELECT '315050510000006', 'Rural'  UNION ALL
    SELECT '316720205010022', 'Urbana' UNION ALL
    SELECT '310160710000006', 'Rural'  UNION ALL
    SELECT '310430405000056', 'Rural'  UNION ALL
    SELECT '310430405000058', 'Rural'  UNION ALL
    SELECT '310430405000065', 'Rural'  UNION ALL
    SELECT '310710905000056', 'Rural'  UNION ALL
    SELECT '314990305000064', 'Rural'  UNION ALL
    SELECT '316130405000021', 'Rural'  UNION ALL
    SELECT '316935610000016', 'Rural'  UNION ALL
    SELECT '310110205000035', 'Urbana' UNION ALL
    SELECT '312520005000012', 'Rural'  UNION ALL
    SELECT '312710705000131', 'Rural'  UNION ALL
    SELECT '313115805000020', 'Urbana' UNION ALL
    SELECT '314350010000007', 'Rural'  UNION ALL
    SELECT '316250030000015', 'Rural'  UNION ALL
    SELECT '316720205020024', 'Urbana' UNION ALL
    SELECT '310070805000015', 'Rural'  UNION ALL
    SELECT '312700805000037', 'Rural'  UNION ALL
    SELECT '312700820000008', 'Urbana' UNION ALL
    SELECT '313000205000017', 'Rural'  UNION ALL
    SELECT '313450905000031', 'Urbana' UNION ALL
    SELECT '314460720000006', 'Rural'  UNION ALL
    SELECT '315180005000419', 'Rural'  UNION ALL
    SELECT '310430405000068', 'Rural'  UNION ALL
    SELECT '310670505090031', 'Urbana' UNION ALL
    SELECT '311160605000065', 'Rural'  UNION ALL
    SELECT '311160610000011', 'Rural'  UNION ALL
    SELECT '311460005000033', 'Rural'  UNION ALL
    SELECT '312070605000007', 'Urbana' UNION ALL
    SELECT '312570505000047', 'Rural'  UNION ALL
    SELECT '316250010000008', 'Rural'  UNION ALL
    SELECT '311440210000014', 'Rural'  UNION ALL
    SELECT '312570510000030', 'Rural'  UNION ALL
    SELECT '312610925000020', 'Rural'  UNION ALL
    SELECT '313040805000023', 'Rural'  UNION ALL
    SELECT '313430120000010', 'Rural'  UNION ALL
    SELECT '313450905000023', 'Rural'  UNION ALL
    SELECT '313820305000223', 'Rural'  UNION ALL
    SELECT '315050505000027', 'Rural'  UNION ALL
    SELECT '315160205000036', 'Rural'  UNION ALL
    SELECT '317010705000100', 'Rural'
),

LETALIDADE AS ( 
    -- Identifica registros de intervenção policial para exclusão da pesquisa principal
    SELECT DISTINCT ENV.numero_ocorrencia
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    WHERE ENV.natureza_ocorrencia_codigo IN ('B01121','B01129')
      AND ENV.id_envolvimento IN (35, 36, 44)
      AND ENV.ind_militar_policial = 'M'
      AND ENV.ind_militar_policial_servico = 'S'
      AND ENV.orgao_lotacao_policial_sigla = 'PM'
      AND ENV.data_hora_fato BETWEEN '2023-01-01 00:00:00' AND '2025-12-31 23:59:59'
),

QTDE_RECUPERADOS AS (
    -- Contabiliza materiais recuperados em ocorrências de natureza C01157 - Roubo
    SELECT MAO.numero_ocorrencia, COUNT(MAO.numero_ocorrencia) AS qtde_objetos_recuperados
    FROM db_bisp_reds_reporting.tb_material_apreendido_ocorrencia MAO
    INNER JOIN db_bisp_reds_reporting.tb_ocorrencia OCO ON OCO.numero_ocorrencia = MAO.numero_ocorrencia
    WHERE YEAR(MAO.data_hora_fato) > 2022
      AND OCO.natureza_codigo = 'C01157'
      AND MAO.situacao_codigo = '0700' 
      AND OCO.codigo_municipio = 315460
    GROUP BY MAO.numero_ocorrencia
),

DROGAS AS (
    -- Identifica ocorrências com apreensão de entorpecentes
    SELECT DISTINCT MAO.numero_ocorrencia
    FROM db_bisp_reds_reporting.tb_material_apreendido_ocorrencia AS MAO
    INNER JOIN db_bisp_reds_reporting.tb_ocorrencia AS OCO ON OCO.numero_ocorrencia = MAO.numero_ocorrencia
    WHERE YEAR(MAO.data_hora_fato) > 2022
      AND OCO.natureza_codigo = 'C01157'        
      AND MAO.digitador_id_orgao = 0 
      AND (MAO.unidade_responsavel_registro_nome LIKE '%/2 RPM%' OR MAO.unidade_responsavel_registro_nome LIKE '%/2RPM%')
      AND MAO.tipo_objeto_codigo IN ('5800', '5599','5999','5699','5301','5503','5104','5399','5103','5102','5299','5603','5202','5605','5201','5499','5604','5601','5602','5302','5704','5101','5504','5199','5708')
      AND OCO.codigo_municipio = 315460
),

PRESOS AS (
    -- Filtra envolvidos com prisão/apreensão ativa
    SELECT ENV.numero_ocorrencia, ENV.numero_envolvido, ENV.id_envolvimento, ENV.natureza_ocorrencia_codigo
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    INNER JOIN db_bisp_reds_reporting.tb_ocorrencia OCO ON OCO.numero_ocorrencia = ENV.numero_ocorrencia
    WHERE YEAR(ENV.data_hora_fato) > 2022
      AND ENV.digitador_id_orgao = 0
      AND ENV.id_tipo_prisao_apreensao IN (1, 2, 3, 4, 6, 7)
      AND OCO.natureza_codigo = 'C01157'        
      AND OCO.codigo_municipio = 315460
),

QTDE_PRESOS AS (
    SELECT P.numero_ocorrencia, 
           COUNT(P.numero_ocorrencia) AS total_presos,
           COUNT(DISTINCT CASE WHEN P.natureza_ocorrencia_codigo = 'C01157' AND P.id_envolvimento IN (35, 36, 44) THEN P.numero_envolvido END) AS quantidade_presos_especificos
    FROM PRESOS P
    GROUP BY P.numero_ocorrencia
),

ARMAS AS (
    -- Detalha armas de fogo apreendidas (exclui simulacros/pressão)
    SELECT AFO.numero_ocorrencia
    FROM db_bisp_reds_reporting.tb_arma_ocorrencia AS AFO
    INNER JOIN db_bisp_reds_reporting.tb_ocorrencia OCO ON OCO.numero_ocorrencia = AFO.numero_ocorrencia
    WHERE YEAR(AFO.data_hora_fato) > 2022
      AND OCO.natureza_codigo = 'C01157'            
      AND OCO.codigo_municipio = 315460
      AND AFO.situacao_codigo IN ('0100', '0700')
      AND AFO.digitador_id_orgao = 0 
      AND AFO.tipo_arma_descricao NOT LIKE '%PRESSAO%'
),

QTDE_ARMAS AS (
    SELECT numero_ocorrencia, COUNT(numero_ocorrencia) AS total_armas
    FROM ARMAS
    GROUP BY numero_ocorrencia
)

/* CONSULTA PRINCIPAL: Consolidação de Dados Geográficos e Operacionais */
SELECT DISTINCT                                                        
    OCO.numero_ocorrencia,
    FROM_TIMESTAMP(OCO.data_hora_fato, 'dd/MM/yy') AS data_fato,
    FROM_TIMESTAMP(OCO.data_hora_fato, 'HH:mm') AS hora_fato,
    YEAR(OCO.data_hora_fato) AS ano,
    MONTH(OCO.data_hora_fato) AS mes,
    OCO.natureza_ind_consumado,
    OCO.unidade_area_militar_nome,
    OCO.unidade_responsavel_registro_nome,
    
    -- Lógica de Localização (Rural/Urbano e SIRGAS)
    geo.latitude_sirgas2000,
    geo.longitude_sirgas2000,
    CASE WHEN OCO.ocorrencia_uf <> 'MG' THEN 'Outra_UF'
         WHEN OCO.numero_latitude IS NULL THEN 'Invalido'
         WHEN geo.situacao_codigo = 9 THEN AG.zona_agua
         ELSE COALESCE(geo.situacao_zona, 'Erro_Processamento')
    END AS situacao_zona,  
    
    OCO.nome_municipio,
    OCO.nome_bairro,
    OCO.instrumento_utilizado_descricao,
    OCO.motivo_presumido_descricao,
    
    -- Cálculo de Tempo de Resposta (Minutos)
    CEILING((UNIX_TIMESTAMP(OCO.data_hora_local) - UNIX_TIMESTAMP(OCO.data_hora_fato)) / 60) AS tempo_resposta_minutos,

    -- Indicadores de Inteligência Geográfica
    COALESCE(MUB.udi, 'SEM INFORMAÇÃO') AS udi,
    COALESCE(MUB.ueop, 'SEM INFORMAÇÃO') AS ueop,
    COALESCE(MUB.cia, 'SEM INFORMAÇÃO') AS cia,
    
    -- Flags de Produtividade
    CASE WHEN D.numero_ocorrencia IS NOT NULL THEN 'S' ELSE 'N' END AS apreensao_drogas,
    COALESCE(R.qtde_objetos_recuperados, 0) AS qtde_materiais_recuperados,
    COALESCE(P.total_presos, 0) AS total_prisoes,
    COALESCE(A.total_armas, 0) AS armas_apree_recupe,
    OCO.historico_ocorrencia

FROM db_bisp_reds_reporting.tb_ocorrencia AS OCO
INNER JOIN db_bisp_reds_reporting.tb_envolvido_ocorrencia AS ENV ON OCO.numero_ocorrencia = ENV.numero_ocorrencia
LEFT JOIN LETALIDADE LET ON OCO.numero_ocorrencia = LET.numero_ocorrencia
LEFT JOIN DROGAS D ON OCO.numero_ocorrencia = D.numero_ocorrencia
LEFT JOIN QTDE_RECUPERADOS R ON OCO.numero_ocorrencia = R.numero_ocorrencia
LEFT JOIN QTDE_PRESOS P ON OCO.numero_ocorrencia = P.numero_ocorrencia
LEFT JOIN QTDE_ARMAS A ON OCO.numero_ocorrencia = A.numero_ocorrencia
LEFT JOIN db_bisp_reds_master.tb_ocorrencia_setores_geodata AS geo ON OCO.numero_ocorrencia = geo.numero_ocorrencia
LEFT JOIN db_bisp_shared.tb_pmmg_setores_geodata AS MUB ON geo.setor_codigo = MUB.setor_codigo
LEFT JOIN AGUAS AG ON geo.setor_codigo = AG.setor_codigo

WHERE 1=1      
    AND LET.numero_ocorrencia IS NULL -- Exclui Letalidade Policial
    AND OCO.ind_estado = 'F' -- Apenas registros finalizados
    AND OCO.natureza_codigo = 'C01157'
    AND OCO.digitador_sigla_orgao IN ('PM','PC')
    AND OCO.data_hora_fato BETWEEN '2023-01-01 00:00:00' AND '2025-12-31 23:59:59'
    AND OCO.codigo_municipio = 315460 -- Ribeirão das Neves
    ;

/*
================================================================================
PROJETO: Higienização de Dados de Envolvidos - 40º BPM (Ribeirão das Neves)
DESCRIÇÃO: Script para extração de autores/coautores com tratamento de campos 
           nulos ou desconhecidos (Nome, Mãe e Data de Nascimento). 
           Cria chaves de identificação únicas para indivíduos não identificados
           e integra dados de georreferenciamento (MUB/IBGE).
NATUREZA FOCO: C01157 (Roubo)
PERÍODO: 2023 - 2026
================================================================================
*/

WITH AGUAS AS (
    -- Tabela de exceção para tratamento de georreferenciamento em cursos d'água
    SELECT '310800810000009' AS setor_codigo, 'Rural'  AS zona_agua UNION ALL
    SELECT '311440205000086', 'Rural'  UNION ALL
    SELECT '312520005000014', 'Rural'  UNION ALL
    SELECT '312570510000021', 'Rural'  UNION ALL
    SELECT '312610910000009', 'Rural'  UNION ALL
    SELECT '315180005000418', 'Rural'  UNION ALL
    SELECT '315430905000031', 'Urbana' UNION ALL
    SELECT '315690810000020', 'Rural'  UNION ALL
    SELECT '316225205000015', 'Urbana' UNION ALL
    SELECT '316720205010026', 'Urbana' UNION ALL
    SELECT '316935605000093', 'Urbana' UNION ALL
    SELECT '310160705000238', 'Rural'  UNION ALL
    SELECT '310160705000241', 'Rural'  UNION ALL
    SELECT '310430405000063', 'Rural'  UNION ALL
    SELECT '310430405000071', 'Rural'  UNION ALL
    SELECT '311130905000043', 'Rural'  UNION ALL
    SELECT '311860105280029', 'Urbana' UNION ALL
    SELECT '312570508000008', 'Rural'  UNION ALL
    SELECT '312700805000039', 'Urbana' UNION ALL
    SELECT '313760105000244', 'Urbana' UNION ALL
    SELECT '314330205000733', 'Urbana' UNION ALL
    SELECT '314350005000030', 'Rural'  UNION ALL
    SELECT '315050510000006', 'Rural'  UNION ALL
    SELECT '316720205010022', 'Urbana' UNION ALL
    SELECT '310160710000006', 'Rural'  UNION ALL
    SELECT '310430405000056', 'Rural'  UNION ALL
    SELECT '310430405000058', 'Rural'  UNION ALL
    SELECT '310430405000065', 'Rural'  UNION ALL
    SELECT '310710905000056', 'Rural'  UNION ALL
    SELECT '314990305000064', 'Rural'  UNION ALL
    SELECT '316130405000021', 'Rural'  UNION ALL
    SELECT '316935610000016', 'Rural'  UNION ALL
    SELECT '310110205000035', 'Urbana' UNION ALL
    SELECT '312520005000012', 'Rural'  UNION ALL
    SELECT '312710705000131', 'Rural'  UNION ALL
    SELECT '313115805000020', 'Urbana' UNION ALL
    SELECT '314350010000007', 'Rural'  UNION ALL
    SELECT '316250030000015', 'Rural'  UNION ALL
    SELECT '316720205020024', 'Urbana' UNION ALL
    SELECT '310070805000015', 'Rural'  UNION ALL
    SELECT '312700805000037', 'Rural'  UNION ALL
    SELECT '312700820000008', 'Urbana' UNION ALL
    SELECT '313000205000017', 'Rural'  UNION ALL
    SELECT '313450905000031', 'Urbana' UNION ALL
    SELECT '314460720000006', 'Rural'  UNION ALL
    SELECT '315180005000419', 'Rural'  UNION ALL
    SELECT '310430405000068', 'Rural'  UNION ALL
    SELECT '310670505090031', 'Urbana' UNION ALL
    SELECT '311160605000065', 'Rural'  UNION ALL
    SELECT '311160610000011', 'Rural'  UNION ALL
    SELECT '311460005000033', 'Rural'  UNION ALL
    SELECT '312070605000007', 'Urbana' UNION ALL
    SELECT '312570505000047', 'Rural'  UNION ALL
    SELECT '316250010000008', 'Rural'  UNION ALL
    SELECT '311440210000014', 'Rural'  UNION ALL
    SELECT '312570510000030', 'Rural'  UNION ALL
    SELECT '312610925000020', 'Rural'  UNION ALL
    SELECT '313040805000023', 'Rural'  UNION ALL
    SELECT '313430120000010', 'Rural'  UNION ALL
    SELECT '313450905000023', 'Rural'  UNION ALL
    SELECT '313820305000223', 'Rural'  UNION ALL
    SELECT '315050505000027', 'Rural'  UNION ALL
    SELECT '315160205000036', 'Rural'  UNION ALL
    SELECT '317010705000100', 'Rural'
),

LETALIDADE AS ( 
    -- Identifica registros de intervenção policial para filtragem (Exclusão)
    SELECT DISTINCT ENV.numero_ocorrencia
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    WHERE ENV.natureza_ocorrencia_codigo IN ('B01121','B01129')
      AND ENV.id_envolvimento IN (35,36,44)
      AND ENV.ind_militar_policial = 'M'
      AND ENV.ind_militar_policial_servico = 'S'
      AND ENV.orgao_lotacao_policial_sigla = 'PM'
      AND ENV.data_hora_fato BETWEEN '2023-01-01 00:00:00' AND '2026-01-01 00:00:00'
)

SELECT 
    OCO.numero_ocorrencia,
    ENV.envolvimento_descricao,
    ENV.numero_envolvido,

    -- TRATAMENTO DE NOMES DESCONHECIDOS:
    -- Cria uma string única baseada no número da ocorrência para evitar agrupamento indevido.
    CASE 
        WHEN UPPER(ENV.nome_completo_envolvido) IS NULL 
             OR TRIM(UPPER(ENV.nome_completo_envolvido)) = '' 
             OR UPPER(ENV.nome_completo_envolvido) LIKE '%DESCONHECID%' 
             OR UPPER(ENV.nome_completo_envolvido) LIKE '%IGNORAD%' 
             OR UPPER(ENV.nome_completo_envolvido) LIKE '%IDENTIFICAD%'  
        THEN CONCAT('DESCONHECIDO ', CAST(SUBSTRING(ENV.numero_ocorrencia, 6, 9) AS STRING), '0', CAST(ENV.numero_envolvido AS STRING))
        ELSE UPPER(ENV.nome_completo_envolvido)
    END AS nome_completo_higienizado,

    -- TRATAMENTO DO NOME DA MÃE
    CASE 
        WHEN UPPER(ENV.nome_mae) IS NULL 
             OR TRIM(UPPER(ENV.nome_mae)) = '' 
             OR UPPER(ENV.nome_mae) LIKE '%DESCONHECID%' 
             OR UPPER(ENV.nome_completo_envolvido) LIKE '%IGNORAD%' 
        THEN CONCAT('MÃE ', CAST(SUBSTRING(ENV.numero_ocorrencia, 6, 9) AS STRING), '0', CAST(ENV.numero_envolvido AS STRING))
        ELSE UPPER(ENV.nome_mae)
    END AS nome_mae_higienizado,

    -- TRATAMENTO DE DATA DE NASCIMENTO NULA
    CASE 
        WHEN COALESCE(CAST(ENV.data_nascimento AS STRING), '') = '' 
        THEN CONCAT('CAMPO NULO ', CAST(SUBSTRING(ENV.numero_ocorrencia, 6, 9) AS STRING), '0', CAST(ENV.numero_envolvido AS STRING))
        ELSE CAST(ENV.data_nascimento AS STRING)
    END AS data_nascimento_higienizada,

    ENV.valor_idade_aparente AS idade,
    ENV.codigo_sexo,
    ENV.numero_documento_id,
    ENV.numero_cpf_cnpj,
    ENV.relacao_vitima_autor_descricao,
    ENV.cor_pele_descricao,
    ENV.descricao_ocupacao_profissional,
    ENV.condicao_fisica_descricao,

    -- Dados de Localização e Unidade
    OCO.unidade_area_militar_nome,
    OCO.unidade_responsavel_registro_nome,
    geo.latitude_sirgas2000,
    geo.longitude_sirgas2000,
    
    -- Lógica Geoespacial (Urbano/Rural)
    CASE 
        WHEN oco.ocorrencia_uf <> 'MG' THEN 'Outra_UF'
        WHEN oco.numero_latitude IS NULL THEN 'Invalido'
        WHEN geo.situacao_codigo = 9 THEN AG.zona_agua
        ELSE COALESCE(geo.situacao_zona, 'Erro_Processamento')
    END AS situacao_zona,

    OCO.nome_municipio,
    OCO.nome_bairro,
    OCO.data_hora_fato,
    YEAR(OCO.data_hora_fato) AS ano,
    MONTH(OCO.data_hora_fato) AS mes,

    -- Dados MUB (Inteligência Geográfica PMMG)
    COALESCE(MUB.udi, 'SEM INFORMAÇÃO') AS udi,
    COALESCE(MUB.ueop, 'SEM INFORMAÇÃO') AS ueop,
    COALESCE(MUB.cia, 'SEM INFORMAÇÃO') AS cia

FROM db_bisp_reds_reporting.tb_ocorrencia AS OCO
INNER JOIN db_bisp_reds_reporting.tb_envolvido_ocorrencia AS ENV ON OCO.numero_ocorrencia = ENV.numero_ocorrencia
LEFT JOIN LETALIDADE LET ON OCO.numero_ocorrencia = LET.numero_ocorrencia
LEFT JOIN db_bisp_reds_master.tb_ocorrencia_setores_geodata AS geo ON OCO.numero_ocorrencia = geo.numero_ocorrencia 
LEFT JOIN db_bisp_shared.tb_ibge_setores_geodata AS ibge ON geo.setor_codigo = ibge.setor_codigo 
LEFT JOIN db_bisp_shared.tb_pmmg_setores_geodata AS MUB ON geo.setor_codigo = MUB.setor_codigo 
LEFT JOIN AGUAS AG ON geo.setor_codigo = AG.setor_codigo

WHERE 1=1
    AND LET.numero_ocorrencia IS NULL -- Filtro de exclusão de Letalidade
    AND ENV.envolvimento_codigo IN ('0100','0200') -- Filtra apenas Autor e Coautor
    AND OCO.ind_estado ='F' -- Apenas ocorrências finalizadas
    AND OCO.natureza_codigo = 'C01157' -- Roubo
    AND OCO.digitador_sigla_orgao IN ('PM','PC')
    AND OCO.local_imediato_codigo NOT IN ('1302','1310')
    AND OCO.data_hora_fato BETWEEN '2023-01-01 00:00:00' AND '2026-01-01 00:00:00'
    AND OCO.codigo_municipio = 315460 -- Ribeirão das Neves

ORDER BY 
    OCO.data_hora_fato, 
    OCO.numero_ocorrencia, 
    nome_completo_higienizado;