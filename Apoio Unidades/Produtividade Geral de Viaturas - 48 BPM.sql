/***************************************************************************************
 * RELATÓRIO DINÂMICO DE PRODUTIVIDADE OPERACIONAL - 48º BPM
 * OBJETIVO: Consolidar dados de presos, armas, drogas e valores por ocorrência.
 * FILTROS: Ano 2026, Unidade 48 BPM, Viaturas específicas.
 * SOLICITAÇÃO: Ten Avelar 48 BPM
 * AUTOR: Sgt Maykol - P3 2 RPM
 ***************************************************************************************/

WITH 
-- 1. Identifica Envolvidos Presos/Apreendidos (Filtragem inicial)
PRESOS AS (
    SELECT
        ENV.numero_ocorrencia,
        ENV.ind_mandado_prisao,
        ENV.id_tipo_prisao_apreensao,
        ENV.natureza_ocorrencia_codigo,
        ENV.valor_idade_aparente,
        ENV.id_envolvimento,
        ENV.numero_envolvido
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    INNER JOIN db_bisp_reds_reporting.tb_ocorrencia OCO ON OCO.numero_ocorrencia = ENV.numero_ocorrencia
    WHERE YEAR(ENV.data_hora_fato) = 2026
        AND ENV.digitador_id_orgao = 0
        AND ENV.id_tipo_prisao_apreensao IN (1, 2, 3, 4, 6, 7)
        AND OCO.unidade_responsavel_registro_nome LIKE '%48 BPM/2 RPM%'
),

-- 2. Consolida Quantitativos de Presos por Natureza
QTDE_PRESOS AS (
    SELECT
        P.numero_ocorrencia,
        COUNT(P.numero_ocorrencia) AS total_presos,
        COUNT(DISTINCT CASE WHEN P.natureza_ocorrencia_codigo IN ('C01157') AND P.id_envolvimento IN (35, 36, 44) THEN P.numero_envolvido END) AS quantidade_presos_roubo,
        COUNT(DISTINCT CASE WHEN P.natureza_ocorrencia_codigo IN ('B01121', 'B01504') AND P.id_envolvimento IN (35, 36, 44) THEN P.numero_envolvido END) AS quantidade_presos_homicidio,
        COUNT(DISTINCT CASE WHEN P.natureza_ocorrencia_codigo IN ('C01155') AND P.id_envolvimento IN (35, 36, 44) THEN P.numero_envolvido END) AS quantidade_presos_furto,
        COUNT(DISTINCT CASE WHEN P.natureza_ocorrencia_codigo IN ('C01180') AND P.id_envolvimento IN (35, 36, 44) THEN P.numero_envolvido END) AS quantidade_presos_receptacao,
        COUNT(DISTINCT CASE WHEN P.ind_mandado_prisao = 'S' THEN P.numero_envolvido END) AS quantidade_presos_mandado,
        COUNT(DISTINCT CASE WHEN P.id_tipo_prisao_apreensao = 7 AND P.id_envolvimento IN (35, 36, 44) THEN P.numero_envolvido END) AS quantidade_presos_tco,
        COUNT(DISTINCT CASE WHEN P.valor_idade_aparente < 18 THEN P.numero_envolvido END) AS quantidade_presos_menor
    FROM PRESOS P
    GROUP BY P.numero_ocorrencia
),

-- 3. Consolida Valores em Moeda/Dinheiro apreendido
MOEDA AS (
    SELECT
        MAO.numero_ocorrencia, 
        CASE 
            WHEN MAO.valor_material IS NOT NULL THEN MAO.valor_material
            WHEN MAO.quantidade_material IS NOT NULL THEN MAO.quantidade_material
            ELSE 1
        END AS valor_final_material
    FROM db_bisp_reds_reporting.tb_material_apreendido_ocorrencia AS MAO
    WHERE YEAR(MAO.data_hora_fato) = 2026
        AND MAO.digitador_id_orgao = 0
        AND MAO.unidade_responsavel_registro_nome LIKE '%48 BPM/2 RPM%'
        AND MAO.tipo_objeto_codigo = '0701'
        AND MAO.situacao_codigo IN ('0100', '0600', '0700')
),

-- 4. Identifica ocorrências de Letalidade (para exclusão posterior)
LETALIDADE AS (
    SELECT ENV.numero_ocorrencia
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    WHERE YEAR(ENV.data_hora_fato) = 2026
        AND ENV.natureza_ocorrencia_codigo IN ('B01121', 'B01129')
        AND ENV.id_envolvimento IN (35, 36, 44)
        AND ENV.ind_militar_policial = 'M'
        AND ENV.ind_militar_policial_servico = 'S'
),

-- 5. Consolida Armas de Fogo (Exclui simulacros e pressão)
ARMAS AS (
    SELECT AFO.numero_ocorrencia
    FROM db_bisp_reds_reporting.tb_arma_ocorrencia AS AFO
    WHERE YEAR(AFO.data_hora_fato) = 2026            
      AND AFO.situacao_codigo IN ('0100', '0700')
      AND AFO.unidade_responsavel_registro_nome LIKE '%48 BPM/2 RPM%'
      AND AFO.digitador_id_orgao = 0 
      AND AFO.tipo_arma_descricao NOT LIKE '%PRESSAO%'
),

QTDE_ARMAS AS (
    SELECT numero_ocorrencia, COUNT(*) AS total_armas
    FROM ARMAS GROUP BY numero_ocorrencia
),

-- 6. Consolida Entorpecentes por Tipo
DROGAS AS (
    SELECT 
        MAO.numero_ocorrencia, 
        MAO.tipo_objeto_codigo, 
        MAO.quantidade_material
    FROM db_bisp_reds_reporting.tb_material_apreendido_ocorrencia AS MAO
    WHERE YEAR(MAO.data_hora_fato) = 2026
        AND MAO.digitador_id_orgao = 0 
        AND MAO.unidade_responsavel_registro_nome LIKE '%48 BPM/2 RPM%'
        AND MAO.tipo_objeto_codigo IN ('5104','5199','5201','5299','5601','5604','5699')
),

QTDE_DROGAS AS (
    SELECT
        D.numero_ocorrencia,
        SUM(CASE WHEN D.tipo_objeto_codigo IN ('5104','5199') THEN D.quantidade_material ELSE 0 END) AS quantidade_cocaina,
        SUM(CASE WHEN D.tipo_objeto_codigo IN ('5201','5299') THEN D.quantidade_material ELSE 0 END) AS quantidade_crack,
        SUM(CASE WHEN D.tipo_objeto_codigo IN ('5601','5699') THEN D.quantidade_material ELSE 0 END) AS quantidade_maconha,
        SUM(CASE WHEN D.tipo_objeto_codigo IN ('5604') THEN D.quantidade_material ELSE 0 END) AS quantidade_maconha_barras
   	FROM DROGAS D
    GROUP BY D.numero_ocorrencia
)

-- CONSULTA PRINCIPAL
SELECT
    -- Dados da Ocorrência
    OCO.numero_ocorrencia,
    FROM_TIMESTAMP(OCO.data_hora_fato, 'dd/MM/yy') AS data_fato,
    MONTH(OCO.data_hora_fato) AS mes_fato,
    OCO.unidade_area_militar_codigo,
    OCO.unidade_area_militar_nome,
    OCO.unidade_responsavel_registro_nome,
    OCO.natureza_codigo,
    OCO.natureza_descricao,
    OCO.nome_municipio,
    
    -- Dados da Guarnição e Viatura
    GROUP_CONCAT(DISTINCT IGO.numero_matricula, ', ') AS matriculas_militares,
    VO.numero_sequencial_viatura, 
    VO.placa, 
    VO.tipo, 
    
    -- Produtividade: Presos
    COALESCE(QP.total_presos, 0) AS total_presos,
    COALESCE(QP.quantidade_presos_roubo, 0) AS presos_roubo,
    COALESCE(QP.quantidade_presos_homicidio, 0) AS presos_homicidio,
    COALESCE(QP.quantidade_presos_mandado, 0) AS presos_mandado,
    COALESCE(QP.quantidade_presos_tco, 0) AS presos_tco,
    COALESCE(QP.quantidade_presos_menor, 0) AS presos_menor,
    COALESCE(QP.quantidade_presos_furto, 0) AS presos_furto,
    COALESCE(QP.quantidade_presos_receptacao, 0) AS presos_receptacao,
    
    -- Produtividade: Materiais
    COALESCE(QA.total_armas, 0) AS armas_apreendidas,
    COALESCE(QD.quantidade_cocaina, 0) AS cocaina,
    COALESCE(QD.quantidade_crack, 0) AS crack,
    COALESCE(QD.quantidade_maconha, 0) AS maconha,
    COALESCE(QD.quantidade_maconha_barras, 0) AS maconha_barras,
    COALESCE(M.valor_final_material, 0) AS dinheiro  

FROM db_bisp_reds_reporting.tb_ocorrencia OCO
LEFT JOIN db_bisp_reds_reporting.tb_viatura_ocorrencia VO ON OCO.numero_ocorrencia = VO.numero_ocorrencia
LEFT JOIN db_bisp_reds_reporting.tb_integrante_guarnicao_ocorrencia IGO ON OCO.numero_ocorrencia = IGO.numero_ocorrencia
LEFT JOIN QTDE_PRESOS QP ON OCO.numero_ocorrencia = QP.numero_ocorrencia
LEFT JOIN LETALIDADE LET ON OCO.numero_ocorrencia = LET.numero_ocorrencia
LEFT JOIN MOEDA M ON OCO.numero_ocorrencia = M.numero_ocorrencia
LEFT JOIN QTDE_ARMAS QA ON OCO.numero_ocorrencia = QA.numero_ocorrencia
LEFT JOIN QTDE_DROGAS QD ON OCO.numero_ocorrencia = QD.numero_ocorrencia

WHERE YEAR(OCO.data_hora_fato) = 2026
    AND OCO.digitador_id_orgao = 0
    AND OCO.codigo_tipo_ocorrencia IN ('0','1','2','11')
    AND VO.numero_registro IN ('26386','26387') -- Filtro de Viaturas
    AND LET.numero_ocorrencia IS NULL           -- Exclui Letalidade

GROUP BY
    OCO.numero_ocorrencia,
    data_fato,
    mes_fato,
    OCO.unidade_area_militar_codigo,
    OCO.unidade_area_militar_nome,
    OCO.unidade_responsavel_registro_nome,
    OCO.natureza_codigo,
    OCO.natureza_descricao,
    OCO.nome_municipio,
    VO.numero_sequencial_viatura,
    VO.placa,
    VO.tipo,
    total_presos,
    presos_roubo,
    presos_homicidio,
    presos_mandado,
    presos_tco,
    presos_menor,
    presos_furto,
    presos_receptacao,
    armas_apreendidas, 
    dinheiro,
    cocaina,
    crack,
    maconha,
    maconha_barras

ORDER BY OCO.numero_ocorrencia;