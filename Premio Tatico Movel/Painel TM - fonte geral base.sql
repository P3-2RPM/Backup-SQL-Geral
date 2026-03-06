WITH 
GUARNICAO AS (
    SELECT
        IGO.numero_ocorrencia,
        GROUP_CONCAT(DISTINCT IGO.unidade_servico_nome, ', ') AS unidade_registro,
        GROUP_CONCAT(DISTINCT IGO.numero_matricula, ', ') AS matriculas_militares
    FROM db_bisp_reds_reporting.tb_integrante_guarnicao_ocorrencia IGO
    WHERE
        YEAR(IGO.data_hora_fato) = 2025
        AND (IGO.unidade_servico_nome LIKE '%/2 RPM%' OR IGO.unidade_servico_nome LIKE '%/2 RPM%')
    GROUP BY
        IGO.numero_ocorrencia
),
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
    INNER JOIN db_bisp_reds_reporting.tb_ocorrencia OCO
        ON OCO.numero_ocorrencia = ENV.numero_ocorrencia
    WHERE
        YEAR(ENV.data_hora_fato) = 2025
        AND ENV.digitador_id_orgao = 0
        AND ENV.id_tipo_prisao_apreensao IN (1, 2, 3, 4, 6, 7)
        AND (OCO.unidade_responsavel_registro_nome LIKE '%/2 RPM%' OR OCO.unidade_responsavel_registro_nome LIKE '%/2 RPM%')
),
QTDE_PRESOS AS (
    SELECT
        P.numero_ocorrencia,
        COUNT(P.numero_ocorrencia) AS total_presos,
        COUNT(DISTINCT CASE
            WHEN P.natureza_ocorrencia_codigo IN ('C01157') AND P.id_envolvimento IN (35, 36, 44) THEN P.numero_envolvido
        END) AS quantidade_presos_roubo,
        COUNT(DISTINCT CASE
            WHEN P.natureza_ocorrencia_codigo IN ('B01121', 'B01504') AND P.id_envolvimento IN (35, 36, 44) THEN P.numero_envolvido
        END) AS quantidade_presos_homicidio,
        COUNT(DISTINCT CASE
            WHEN P.natureza_ocorrencia_codigo IN ('C01155') AND P.id_envolvimento IN (35, 36, 44) THEN P.numero_envolvido
        END) AS quantidade_presos_furto,
        COUNT(DISTINCT CASE
            WHEN P.natureza_ocorrencia_codigo IN ('C01180') AND P.id_envolvimento IN (35, 36, 44) THEN P.numero_envolvido
        END) AS quantidade_presos_receptacao,
        COUNT(DISTINCT CASE
            WHEN P.ind_mandado_prisao = 'S' THEN P.numero_envolvido
        END) AS quantidade_presos_mandado,
        COUNT(DISTINCT CASE
            WHEN P.id_tipo_prisao_apreensao = 7 AND P.id_envolvimento IN (35, 36, 44) THEN P.numero_envolvido
        END) AS quantidade_presos_tco,
        COUNT(DISTINCT CASE
            WHEN P.valor_idade_aparente < 18 THEN P.numero_envolvido
        END) AS quantidade_presos_menor
    FROM PRESOS P
    GROUP BY
        P.numero_ocorrencia
),
MOEDA AS(
SELECT
    MAO.numero_ocorrencia, 
    MAO.valor_material,
    CASE 
        WHEN MAO.valor_material IS NOT NULL THEN MAO.valor_material
        WHEN MAO.quantidade_material IS NOT NULL THEN MAO.quantidade_material
        ELSE 1
    END AS valor_final_material
FROM db_bisp_reds_reporting.tb_ocorrencia AS OCO
INNER JOIN db_bisp_reds_reporting.tb_material_apreendido_ocorrencia AS MAO
    ON OCO.numero_ocorrencia = MAO.numero_ocorrencia
WHERE 1 = 1
    AND YEAR(MAO.data_hora_fato) = 2025
    AND MAO.digitador_id_orgao = 0
    AND (MAO.unidade_responsavel_registro_nome LIKE '%/2 RPM%' OR MAO.unidade_responsavel_registro_nome LIKE '%/2RPM%')
    AND MAO.tipo_objeto_codigo = '0701'
    AND MAO.situacao_codigo IN ('0100', '0600', '0700')
),
LETALIDADE AS (
    SELECT
        ENV.numero_ocorrencia
    FROM
        db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    WHERE
        YEAR(ENV.data_hora_fato) = 2025
        AND ENV.natureza_ocorrencia_codigo IN ('B01121', 'B01129')
        AND ENV.id_envolvimento IN (35, 36, 44)
        AND ENV.ind_militar_policial = 'M'
        AND ENV.ind_militar_policial_servico = 'S'
)
SELECT
    OCO.numero_ocorrencia,
    FROM_TIMESTAMP(OCO.data_hora_fato, 'dd/MM/yy') AS data_fato,
    MONTH(OCO.data_hora_fato) AS mes_fato,
    CASE
        WHEN OCO.codigo_municipio IN (315460) THEN '40 BPM'
        WHEN OCO.codigo_municipio IN (310900, 312980, 314015, 316553) THEN '48 BPM'
        WHEN OCO.codigo_municipio IN (312410) THEN '6 CIA PM IND'
        WHEN OCO.codigo_municipio IN (310810, 312060, 312600, 313010, 313220, 313665, 314070, 315040, 315530, 316292) THEN '7 CIA PM IND'
        WHEN OCO.codigo_municipio = 311860 AND (OCO.unidade_area_militar_nome LIKE '39 BPM%' OR OCO.unidade_area_militar_nome LIKE '%/39 BPM%') AND (OCO.unidade_area_militar_nome NOT LIKE '%TM%') THEN '39 BPM'
        WHEN OCO.codigo_municipio = 311860 AND (OCO.unidade_area_militar_nome LIKE '18 BPM%' OR OCO.unidade_area_militar_nome LIKE '%/18 BPM%') AND (OCO.unidade_area_militar_nome NOT LIKE '%TM%') THEN '18 BPM'
        WHEN OCO.codigo_municipio = 310670 AND (OCO.unidade_area_militar_nome LIKE '66 BPM%' OR OCO.unidade_area_militar_nome LIKE '%/66 BPM%') AND (OCO.unidade_area_militar_nome NOT LIKE '%TM%') THEN '66 BPM'
        WHEN OCO.codigo_municipio = 310670 AND (OCO.unidade_area_militar_nome LIKE '33 BPM%' OR OCO.unidade_area_militar_nome LIKE '%/33 BPM%') AND (OCO.unidade_area_militar_nome NOT LIKE '%TM%') THEN '33 BPM'
        ELSE 'OUTROS'
    END AS UEOP,
    OCO.unidade_area_militar_codigo,
    OCO.unidade_area_militar_nome,
    OCO.unidade_responsavel_registro_codigo,
    OCO.unidade_responsavel_registro_nome AS unidade_responsavel_registro_nome,
    CASE WHEN (OCO.unidade_responsavel_registro_nome LIKE  '%TM/%' 
    			OR OCO.numero_ocorrencia IN ('2025-004849934-001')) -- auditorias 48 protocolo 202504100618815-2504
    			THEN 'SIM'
   	 	END TM,
    COALESCE(G.matriculas_militares, 'SEM MILITARES') AS matriculas_militares,
    OCO.natureza_codigo,
    OCO.natureza_descricao,
    OCO.codigo_tipo_ocorrencia,
    OCO.nome_tipo_relatorio,
    OCO.ind_tco,
    OCO.nome_municipio,
    COALESCE(QP.total_presos, 0) AS total_presos,
    COALESCE(QP.quantidade_presos_roubo, 0) AS presos_roubo,
    CASE WHEN OCO.numero_ocorrencia = '2025-016118327-001' THEN 2 -- auditoria 48 protocolo 202504100618815-2504
    	ELSE COALESCE(QP.quantidade_presos_homicidio, 0) END AS presos_homicidio,
    CASE WHEN OCO.numero_ocorrencia = '2025-039069950-001' THEN 1 -- auditoria 33 protocolo 202504100618815-2504
    	ELSE COALESCE(QP.quantidade_presos_mandado, 0) END AS presos_mandado,
    COALESCE(QP.quantidade_presos_tco, 0) AS presos_tco,
    COALESCE(QP.quantidade_presos_menor, 0) AS presos_menor,
    COALESCE(QP.quantidade_presos_furto, 0) AS presos_furto,
    COALESCE(QP.quantidade_presos_receptacao, 0) AS presos_receptacao,
    COALESCE(M.valor_final_material, 0) AS dinheiro  
FROM db_bisp_reds_reporting.tb_ocorrencia OCO
LEFT JOIN GUARNICAO G ON OCO.numero_ocorrencia = G.numero_ocorrencia
LEFT JOIN QTDE_PRESOS QP ON OCO.numero_ocorrencia = QP.numero_ocorrencia
LEFT JOIN LETALIDADE LET ON OCO.numero_ocorrencia = LET.numero_ocorrencia
LEFT JOIN MOEDA M ON OCO.numero_ocorrencia = M.numero_ocorrencia
WHERE
    YEAR(OCO.data_hora_fato) = 2025
    AND OCO.digitador_id_orgao = 0
    AND OCO.codigo_tipo_ocorrencia IN ('0','1','2')
    AND (OCO.unidade_responsavel_registro_nome LIKE  '%/2 RPM%' 
    	OR OCO.unidade_responsavel_registro_nome LIKE  '%/2RPM%'
    	OR OCO.numero_ocorrencia IN ('2025-004849934-001') ) -- auditorias
    AND LET.numero_ocorrencia IS NULL
ORDER BY
    OCO.numero_ocorrencia;