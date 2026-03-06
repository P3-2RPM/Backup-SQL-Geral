WITH GUARNICAO AS (
    SELECT 
        IGO.numero_ocorrencia,
        GROUP_CONCAT(DISTINCT IGO.numero_matricula, ', ') AS matriculas_militares
    FROM db_bisp_reds_reporting.tb_integrante_guarnicao_ocorrencia IGO
    WHERE YEAR(IGO.data_hora_fato) = 2025
    AND (IGO.unidade_servico_nome LIKE '%/2 RPM%' OR IGO.unidade_servico_nome LIKE '%/2RPM%')
    GROUP BY IGO.numero_ocorrencia
),
PRESOS AS (
    SELECT 
        ENV.numero_ocorrencia,
        COUNT(DISTINCT CASE 
            WHEN ENV.natureza_ocorrencia_codigo IN ('C01157') AND ENV.id_envolvimento IN (35, 36, 44) THEN ENV.numero_envolvido
        END) AS quantidade_presos_roubo,
        COUNT(DISTINCT CASE 
            WHEN ENV.natureza_ocorrencia_codigo IN ('B01121', 'B01504', 'G01333') AND ENV.id_envolvimento IN (35, 36, 44) THEN ENV.numero_envolvido
        END) AS quantidade_presos_homicidio,
        COUNT(DISTINCT CASE 
            WHEN ENV.natureza_ocorrencia_codigo IN ('C01155') AND ENV.id_envolvimento IN (35, 36, 44) THEN ENV.numero_envolvido
        END) AS quantidade_presos_furto,
        COUNT(DISTINCT CASE 
            WHEN ENV.natureza_ocorrencia_codigo IN ('C01180') AND ENV.id_envolvimento IN (35, 36, 44) THEN ENV.numero_envolvido
        END) AS quantidade_presos_receptacao
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    INNER JOIN db_bisp_reds_reporting.tb_ocorrencia OCO
        ON OCO.numero_ocorrencia = ENV.numero_ocorrencia
    WHERE 1 = 1 
        AND YEAR(ENV.data_hora_fato) = 2025
        AND ENV.digitador_id_orgao = 0
        AND ENV.id_tipo_prisao_apreensao IN (1, 2, 3, 4, 6, 7)
        AND (OCO.unidade_responsavel_registro_nome LIKE '%/2 RPM%' OR OCO.unidade_responsavel_registro_nome LIKE '%/2RPM%')
    GROUP BY
        ENV.numero_ocorrencia
),
LETALIDADE AS
( 
    SELECT 
        ENV.numero_ocorrencia,
        ENV.digitador_id_orgao,
        ENV.natureza_ocorrencia_codigo,
        ENV.data_hora_fato,
        ENV.ind_militar_policial_servico
    FROM
        db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    WHERE 1=1
        AND ENV.natureza_ocorrencia_codigo IN('B01121','B01129')
        AND ENV.id_envolvimento IN (35,36,44)
        AND ENV.ind_militar_policial IS NOT DISTINCT FROM 'M'
        AND ENV.ind_militar_policial_servico IS NOT DISTINCT FROM 'S'
        AND YEAR(ENV.data_hora_fato) = 2025
)
SELECT 
    OCO.numero_ocorrencia,
    FROM_TIMESTAMP(OCO.data_hora_fato, 'dd/MM/yy') AS data_fato,
    MONTH (OCO.data_hora_fato) as mes_fato,
    CASE 
        WHEN OCO.codigo_municipio IN (315460) THEN '40 BPM'
        WHEN OCO.codigo_municipio IN (310900,312980,314015,316553) THEN '48 BPM'
        WHEN OCO.codigo_municipio IN (312410) THEN '6 CIA PM IND'      
        WHEN OCO.codigo_municipio IN (310810,312060,312600,313010,313220,313665,314070,315040,315530,316292) THEN '7 CIA PM IND'
        WHEN OCO.codigo_municipio =311860 AND (OCO.unidade_area_militar_nome LIKE '39 BPM%' or OCO.unidade_area_militar_nome LIKE '%/39 BPM%') AND (OCO.unidade_area_militar_nome not LIKE '%TM%')THEN '39 BPM'
        WHEN OCO.codigo_municipio =311860 AND (OCO.unidade_area_militar_nome LIKE '18 BPM%' or OCO.unidade_area_militar_nome LIKE '%/18 BPM%') AND (OCO.unidade_area_militar_nome not LIKE '%TM%')THEN '18 BPM'
        WHEN OCO.codigo_municipio =310670 AND (OCO.unidade_area_militar_nome LIKE '66 BPM%' or OCO.unidade_area_militar_nome LIKE '%/66 BPM%') AND (OCO.unidade_area_militar_nome not LIKE '%TM%')THEN '66 BPM'
        WHEN OCO.codigo_municipio =310670 AND (OCO.unidade_area_militar_nome LIKE '33 BPM%' or OCO.unidade_area_militar_nome LIKE '%/33 BPM%') AND (OCO.unidade_area_militar_nome not LIKE '%TM%')THEN '33 BPM'
        ELSE 'OUTROS' 
    END AS UEOP,
    OCO.unidade_area_militar_codigo,
    OCO.unidade_area_militar_nome,
    OCO.unidade_responsavel_registro_codigo,
    OCO.unidade_responsavel_registro_nome,
    CASE WHEN OCO.unidade_responsavel_registro_nome LIKE '%TM/%' THEN 'SIM' END AS TM,
    COALESCE(G.matriculas_militares, 'SEM MILITARES') AS matriculas_militares,
    OCO.natureza_codigo,
    OCO.natureza_descricao,
    OCO.natureza_ind_consumado,
    COALESCE(P.quantidade_presos_roubo, 0) AS presos_roubo,
    COALESCE(P.quantidade_presos_homicidio, 0) AS presos_homicidio,
    COALESCE(P.quantidade_presos_furto, 0) AS presos_furto,
    COALESCE(P.quantidade_presos_receptacao, 0) AS presos_receptacao
FROM db_bisp_reds_reporting.tb_ocorrencia OCO
LEFT JOIN GUARNICAO G ON OCO.numero_ocorrencia = G.numero_ocorrencia
LEFT JOIN PRESOS P ON OCO.numero_ocorrencia = P.numero_ocorrencia
LEFT JOIN LETALIDADE LET ON OCO.numero_ocorrencia = LET.numero_ocorrencia
WHERE 1=1
    AND YEAR (OCO.data_hora_fato) = 2025
    AND OCO.digitador_id_orgao = 0 
    AND (OCO.natureza_codigo IN ('B01121','C01157','B01504', 'A05000', 'C01155','C01180')
         OR OCO.numero_ocorrencia IN ('2025-038402638-001', '2025-016118327-001'))
    AND (OCO.codigo_municipio IN (310670 , 310810 , 310900 , 311860 , 312060 , 312410 , 312600 , 312980 , 313010 , 313220 , 313665 , 314015 , 314070 , 315040 , 315460 , 315530 , 316292 , 316553)
         OR OCO.numero_ocorrencia IN ('2025-016118327-001'))
    AND LET.numero_ocorrencia IS NULL   
ORDER BY OCO.numero_ocorrencia;