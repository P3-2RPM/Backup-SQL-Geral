WITH 
GUARNICAO AS (
    SELECT 
        IGO.numero_ocorrencia,
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
/*MANDADOS AS (
    SELECT 
        ENV.numero_ocorrencia,
        COUNT(DISTINCT ENV.numero_envolvido) AS quantidade_presos_mandado
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    INNER JOIN db_bisp_reds_reporting.tb_ocorrencia OCO 
        ON OCO.numero_ocorrencia = ENV.numero_ocorrencia
    WHERE 1 = 1 
        AND YEAR (ENV.data_hora_fato) = :ANO
        AND ENV.digitador_id_orgao = 0
        AND ENV.id_tipo_prisao_apreensao IN (1,2,3,4,5,6,7) 
        AND ENV.ind_mandado_prisao = 'S'
        AND OCO.unidade_responsavel_registro_nome LIKE  '%/2 RPM%'
    GROUP BY ENV.numero_ocorrencia
),*/
DROGAS AS (
    SELECT 
        MAO.numero_ocorrencia, 
        MAO.tipo_objeto_codigo, 
        MAO.tipo_objeto_descricao, 
        MAO.quantidade_material, 
        MAO.unidade_medida_descricao,
        MAO.situacao_descricao, 
        MAO.unidade_responsavel_registro_nome 
    FROM db_bisp_reds_reporting.tb_ocorrencia AS OCO
    INNER JOIN db_bisp_reds_reporting.tb_material_apreendido_ocorrencia AS MAO
        ON OCO.numero_ocorrencia = MAO.numero_ocorrencia
    WHERE 1 = 1
        AND YEAR(MAO.data_hora_fato) = 2025
        AND MAO.digitador_id_orgao = 0 
        AND (MAO.unidade_responsavel_registro_nome LIKE  '%/2 RPM%' OR MAO.unidade_responsavel_registro_nome LIKE '%/2RPM%')
        AND MAO.tipo_objeto_codigo IN(
            '5800', '5599','5999','5699','5301','5503','5104','5399','5103','5102',
            '5299','5603','5202','5605','5201','5499','5604','5601','5602','5302',
            '5704','5101','5504','5199','5708'
        ) 
)
SELECT 
    OCO.numero_ocorrencia,
    FROM_TIMESTAMP(OCO.data_hora_fato, 'dd/MM/yy') AS data_fato,
    MONTH (OCO.data_hora_fato) as mes_fato,
    OCO.unidade_responsavel_registro_nome,
    CASE WHEN OCO.unidade_responsavel_registro_nome LIKE  '%TM/%' THEN 'SIM'
    END TM,
    COALESCE(G.matriculas_militares, 'SEM MILITARES') AS matriculas_militares,
    D.tipo_objeto_codigo AS descricao_codigo,
    D.tipo_objeto_descricao AS descricao_objeto,
    CAST (D.quantidade_material as integer) as qtde,
    D.unidade_medida_descricao,
    COALESCE(P.quantidade_presos, 0) AS quantidade_presos    
--    ,COALESCE(M.quantidade_presos_mandado, 0) AS presos_mandado 
FROM db_bisp_reds_reporting.tb_ocorrencia OCO
LEFT JOIN GUARNICAO G ON OCO.numero_ocorrencia = G.numero_ocorrencia
LEFT JOIN PRESOS P ON OCO.numero_ocorrencia = P.numero_ocorrencia
LEFT JOIN DROGAS D ON OCO.numero_ocorrencia = D.numero_ocorrencia
--LEFT JOIN MANDADOS M ON OCO.numero_ocorrencia = M.numero_ocorrencia
WHERE 1=1
    AND YEAR (OCO.data_hora_fato) = :ANO 
    AND OCO.digitador_id_orgao = 0 
    AND (OCO.unidade_responsavel_registro_nome LIKE  '%/2 RPM%' OR OCO.unidade_responsavel_registro_nome LIKE  '%/2RPM%')
    AND D.numero_ocorrencia IS NOT NULL
ORDER BY OCO.numero_ocorrencia;
