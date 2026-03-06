WITH 
GUARNICAO AS ( 																-- criar uma cte para buscar os militares que participaram da ocorrência
    SELECT 
        IGO.numero_ocorrencia,
        GROUP_CONCAT(DISTINCT IGO.numero_matricula, ', ') AS matriculas_militares -- coloca todos os números de polícia na mesma célula separadas por vírgula
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
MANDADOS AS (
    SELECT 
        ENV.numero_ocorrencia,
        COUNT(DISTINCT ENV.numero_envolvido) AS quantidade_presos_mandado
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    INNER JOIN db_bisp_reds_reporting.tb_ocorrencia OCO 
        ON OCO.numero_ocorrencia = ENV.numero_ocorrencia
    WHERE 1 = 1 
        AND YEAR (ENV.data_hora_fato) = :ANO
        AND ENV.digitador_id_orgao = 0
        AND ENV.id_tipo_prisao_apreensao IN (1,2,3,4,6,7) 
        AND ENV.ind_mandado_prisao = 'S'
        AND (OCO.unidade_responsavel_registro_nome LIKE  '%/2 RPM%' OR OCO.unidade_responsavel_registro_nome LIKE  '%/2RPM%')
    GROUP BY ENV.numero_ocorrencia
)
SELECT 
    OCO.numero_ocorrencia,
    FROM_TIMESTAMP(OCO.data_hora_fato, 'dd/MM/yy') AS data_fato,
    MONTH (OCO.data_hora_fato) as mes_fato,
    OCO.unidade_responsavel_registro_nome,
    CASE WHEN OCO.unidade_responsavel_registro_nome LIKE  '%TM/%' THEN 'SIM'
    END TM,
    COALESCE(G.matriculas_militares, 'SEM MILITARES') AS matriculas_militares,
    OCO.natureza_codigo,
   	OCO.natureza_descricao,
    COALESCE(P.quantidade_presos, 0) AS quantidade_presos,
    COALESCE(M.quantidade_presos_mandado, 0) AS presos_mandado 
FROM db_bisp_reds_reporting.tb_ocorrencia OCO
LEFT JOIN GUARNICAO G ON OCO.numero_ocorrencia = G.numero_ocorrencia
LEFT JOIN PRESOS P ON OCO.numero_ocorrencia = P.numero_ocorrencia
LEFT JOIN MANDADOS M ON OCO.numero_ocorrencia = M.numero_ocorrencia
WHERE 1=1
    AND YEAR (OCO.data_hora_fato) = :ANO 
    AND OCO.digitador_id_orgao = 0 
    AND (OCO.unidade_responsavel_registro_nome LIKE  '%/2 RPM%' OR OCO.unidade_responsavel_registro_nome LIKE  '%/2RPM%')
    AND M.numero_ocorrencia IS NOT NULL
ORDER BY OCO.numero_ocorrencia