WITH 
GUARNICAO AS (
    SELECT 
        IGO.numero_ocorrencia as numero_ocorrencia,
        GROUP_CONCAT(DISTINCT IGO.numero_matricula, ', ') AS matriculas_militares
    FROM db_bisp_reds_reporting.tb_integrante_guarnicao_ocorrencia IGO
    WHERE YEAR (IGO.data_hora_fato) = :ANO
    AND (IGO.unidade_servico_nome LIKE  '%/2 RPM%'	or 	IGO.unidade_servico_nome LIKE  '%/2RPM%')
    GROUP BY IGO.numero_ocorrencia
),
PRESOS AS (
    SELECT 
        ENV.numero_ocorrencia,
        COUNT(DISTINCT ENV.numero_envolvido) AS quantidade_presos
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    INNER JOIN db_bisp_reds_reporting.tb_ocorrencia OCO 
        ON OCO.numero_ocorrencia = ENV.numero_ocorrencia
    WHERE 1 = 1 
        AND YEAR (ENV.data_hora_fato) = :ANO
        AND ENV.digitador_id_orgao = 0
        AND ENV.id_envolvimento IN (35,36,44) 
        AND ENV.id_tipo_prisao_apreensao IN (1,2,3,4,6,7) 
        AND (OCO.unidade_responsavel_registro_nome LIKE  '%/2 RPM%' OR OCO.unidade_responsavel_registro_nome LIKE  '%/2RPM%')
    GROUP BY ENV.numero_ocorrencia
),
SIMULACRO AS (
    SELECT 
        SIMAFO.numero_ocorrencia as numero_ocorrencia,
        SIMAFO.tipo_objeto_codigo as tipo_objeto_codigo,
        SIMAFO.tipo_objeto_descricao as tipo_objeto_descricao,
        SIMAFO.situacao_codigo as situacao_codigo,
        SIMAFO.situacao_descricao as situacao_descricao,
        CASE 
        WHEN SIMAFO.quantidade_material IS NOT NULL THEN SIMAFO.quantidade_material
        ELSE 1
    END AS qtde
    FROM db_bisp_reds_reporting.tb_material_apreendido_ocorrencia   AS SIMAFO
    WHERE 1 = 1
        AND YEAR(SIMAFO.data_hora_fato) = 2025
        AND SIMAFO.situacao_codigo IN ('0100')
        AND SIMAFO.digitador_id_orgao = 0 
        AND (SIMAFO.unidade_responsavel_registro_nome LIKE '%/2 RPM%' OR SIMAFO.unidade_responsavel_registro_nome LIKE '%/2RPM%')
        AND SIMAFO.tipo_objeto_codigo = '2020'
)
SELECT 
    OCO.numero_ocorrencia,
    FROM_TIMESTAMP(OCO.data_hora_fato, 'dd/MM/yy') AS data_fato,
    MONTH (OCO.data_hora_fato) as mes_fato,
    OCO.unidade_responsavel_registro_nome,
    CASE WHEN OCO.unidade_responsavel_registro_nome LIKE '%TM/%' THEN 'SIM'
    END TM,
    COALESCE(G.matriculas_militares, 'SEM MILITARES') AS matriculas_militares,
    SIMAFO.tipo_objeto_codigo AS simulacro_codigo,
    SIMAFO.tipo_objeto_descricao AS simulacro_descricao,
    CASE 
        WHEN SIMAFO.quantidade_material > 0 THEN SIMAFO.quantidade_material 
        ELSE 1 
    END AS qtde_simulacro,															-- ALGUNS REDS OS MILITARES ESQUECEM DE COLOCAR A QUANTIDADE DE SIMULACROS NO CAMPO PARAMETRIZADO
    COALESCE(P.quantidade_presos, 0) AS quantidade_presos    
FROM db_bisp_reds_reporting.tb_ocorrencia OCO
LEFT JOIN GUARNICAO G ON OCO.numero_ocorrencia = G.numero_ocorrencia
LEFT JOIN PRESOS P ON OCO.numero_ocorrencia = P.numero_ocorrencia
LEFT JOIN SIMULACRO SIMAFO ON OCO.numero_ocorrencia = SIMAFO.numero_ocorrencia
WHERE 1=1
    AND YEAR (OCO.data_hora_fato) = :ANO
    AND OCO.digitador_id_orgao = 0 
    AND (OCO.unidade_responsavel_registro_nome LIKE  '%/2 RPM%' OR OCO.unidade_responsavel_registro_nome LIKE  '%/2RPM%')
    AND SIMAFO.numero_ocorrencia IS NOT NULL
ORDER BY OCO.numero_ocorrencia