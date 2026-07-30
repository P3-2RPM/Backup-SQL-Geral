-- ==============================================================================
-- CONSULTA: Consolidação de Vítimas em Ocorrências de Furto (C01155) por UEOP
-- OBJETIVO: Quantificar ocorrências COM e SEM vítimas separadas por UEOP
-- ==============================================================================

WITH oco_vitimas AS (
    -- CTE 1: Identifica ocorrências que possuem vítimas registradas
    SELECT DISTINCT 
        env.numero_ocorrencia,
        1 AS sinaliza_vitima
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia AS env
    WHERE 
        env.natureza_ocorrencia_codigo = 'C01155'                 -- Furto
        AND env.digitador_id_orgao IN (0)                         -- Digitador PM
        AND env.id_envolvimento IN (25, 26, 27, 28, 32, 872, 1097) -- Códigos de Vítimas
        AND YEAR(env.data_hora_fato) = 2026
),

oco_registros AS (
    -- CTE 2: Universo total de ocorrências com enrichment geográfico
    SELECT 
        oco.numero_ocorrencia,
        CASE
            WHEN LENGTH(OCO.unidade_area_militar_nome) 
                 - LENGTH(REPLACE(OCO.unidade_area_militar_nome, '/', '')) >= 2
            THEN REGEXP_EXTRACT(OCO.unidade_area_militar_nome, '.*/([^/]*)/[^/]*$', 1)
            ELSE REGEXP_EXTRACT(OCO.unidade_area_militar_nome, '^([^/]*)/', 1)
        END AS ueop
    FROM db_bisp_reds_reporting.tb_ocorrencia AS oco
    WHERE 
        oco.digitador_sigla_orgao IN ('PM') 
        AND oco.ocorrencia_uf IN ('MG') 
        AND oco.natureza_codigo IN ('C01155')
        AND oco.nome_tipo_relatorio NOT IN ('BOS', 'RAT')
        AND oco.codigo_municipio IN (
            310670, 310810, 310900, 311860, 312060, 312410, 312600, 
            312980, 313010, 313220, 313665, 314015, 314070, 315040, 
            315460, 315530, 316292, 316553
        )
        AND YEAR(oco.data_hora_fato) = 2026
)

-- CONSULTA FINAL: Agrupamento por UEOP contabilizando Com Vítima (1) e Sem Vítima (0)
SELECT 
    reg.ueop,
    COUNT(CASE WHEN vit.sinaliza_vitima IS NULL THEN 1 END) AS qtd_sem_vitima_0,
    COUNT(CASE WHEN vit.sinaliza_vitima = 1    THEN 1 END) AS qtd_com_vitima_1,
    COUNT(*)                                               AS total_ocorrencias
FROM oco_registros AS reg
LEFT JOIN oco_vitimas AS vit 
    ON reg.numero_ocorrencia = vit.numero_ocorrencia
GROUP BY 
    reg.ueop
ORDER BY 
    CASE reg.ueop   
        WHEN '18 BPM'            THEN 1   
        WHEN '33 BPM'            THEN 2    
        WHEN '39 BPM'            THEN 3    
        WHEN '40 BPM'            THEN 4    
        WHEN '48 BPM'            THEN 5
        WHEN '66 BPM'            THEN 6
        WHEN '6 CIA PM IND'     THEN 7
        WHEN '7 CIA PM IND'     THEN 8
        WHEN 'BTL GER'           THEN 9
        WHEN '2 CIA PM IND PVD' THEN 10
        ELSE 999
    END;