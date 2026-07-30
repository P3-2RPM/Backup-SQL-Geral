-- ==============================================================================
-- CONSULTA: Contagem de Ocorrências em Aberto da 2ª RPM (BISP REDS)
-- OBJETIVO: Agrupar e categorizar registros por Unidade Operacional (UEOp)
-- ==============================================================================

WITH ocorrencias_filtradas AS (
    SELECT
        -- Extração da UEOP a partir da árvore de texto do registro
        CASE
            WHEN LENGTH(OCO.unidade_responsavel_registro_nome) 
                 - LENGTH(REPLACE(OCO.unidade_responsavel_registro_nome, '/', '')) >= 2
            THEN REGEXP_EXTRACT(OCO.unidade_responsavel_registro_nome, '.*/([^/]*)/[^/]*$', 1)
            ELSE REGEXP_EXTRACT(OCO.unidade_responsavel_registro_nome, '^([^/]*)/', 1)
        END AS ueop,

        -- Métricas por Tipos de Ocorrência
        COUNT(CASE WHEN OCO.codigo_tipo_ocorrencia = '0'  THEN 1 END) AS policial,
        COUNT(CASE WHEN OCO.codigo_tipo_ocorrencia = '1'  THEN 1 END) AS transito,
        COUNT(CASE WHEN OCO.codigo_tipo_ocorrencia = '11' THEN 1 END) AS rat,
        COUNT(CASE WHEN OCO.codigo_tipo_ocorrencia = '12' THEN 1 END) AS bos,
        COUNT(*) AS total

    FROM db_bisp_reds_reporting.tb_ocorrencia AS OCO

    WHERE 
        -- Filtros Temporais
        YEAR(OCO.data_hora_fato) > 2025
        AND OCO.data_hora_fato <= CURRENT_DATE() - INTERVAL 1 DAY
        
        -- Filtros Operacionais
        AND OCO.ind_estado = 'A'                        -- Apenas ocorrências em Aberto
        AND OCO.digitador_id_orgao = 0                  -- Digitadas pela PMMG
        AND OCO.ocorrencia_uf = 'MG'                    -- Ocorrências registradas em MG
        AND OCO.codigo_tipo_ocorrencia IN ('0', '1', '11', '12')

        -- Filtros Territoriais (2ª RPM)
        AND (
            OCO.unidade_responsavel_registro_nome LIKE '%/2 RPM'
            OR OCO.unidade_responsavel_registro_nome LIKE '%/2RPM'
            OR OCO.unidade_responsavel_registro_nome LIKE '%/2 CIA PM IND PVD%'
        )

    GROUP BY 1
)

-- Consulta Final com Ordenação Personalizada
SELECT 
    ueop,
    policial,
    transito,
    rat,
    bos,
    total
FROM ocorrencias_filtradas
ORDER BY 
    CASE ueop   
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
