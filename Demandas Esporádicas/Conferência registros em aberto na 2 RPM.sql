-- ==============================================================================
-- CONSULTA: Contraprova / Detalhamento de Ocorrências em Aberto (2ª RPM)
-- ORIGEM  : BISP db_bisp_reds_reporting.tb_ocorrencia
-- OBJETIVO: Listar os registros para auditoria e validação dos totais
-- ==============================================================================

SELECT
    OCO.numero_ocorrencia,
    FROM_TIMESTAMP(OCO.data_hora_fato, 'dd/MM/yy')                      AS data_fato,
    OCO.natureza_codigo,

    -- Extração da Unidade Responsável pelo Registro (UEOp)
    CASE
        WHEN LENGTH(OCO.unidade_responsavel_registro_nome)
             - LENGTH(REPLACE(OCO.unidade_responsavel_registro_nome, '/', '')) >= 2
        THEN REGEXP_EXTRACT(OCO.unidade_responsavel_registro_nome, '.*/([^/]*)/[^/]*$', 1)
        ELSE REGEXP_EXTRACT(OCO.unidade_responsavel_registro_nome, '^([^/]*)/', 1)
    END                                                                 AS ueop,

    -- Dados do Digitador
    OCO.digitador_matricula,
    OCO.digitador_nome 

FROM db_bisp_reds_reporting.tb_ocorrencia AS OCO

WHERE 
    -- Filtros Temporais
    YEAR(OCO.data_hora_fato) > 2025
    AND OCO.data_hora_fato <= CURRENT_DATE() - INTERVAL 1 DAY

    -- Filtros Operacionais e Territoriais
    AND OCO.ind_estado = 'A'                                            -- Ocorrências em Aberto
    AND OCO.digitador_id_orgao = 0                                      -- Digitador PMMG
    AND OCO.ocorrencia_uf = 'MG'                                        -- Estado de Minas Gerais
    AND OCO.codigo_tipo_ocorrencia IN ('0', '1', '11', '12')

    -- Restrição de Unidades pertencentes à 2ª RPM
    AND (
        OCO.unidade_responsavel_registro_nome LIKE '%/2 RPM'
        OR OCO.unidade_responsavel_registro_nome LIKE '%/2RPM'
        OR OCO.unidade_responsavel_registro_nome LIKE '%/2 CIA PM IND PVD%'
    )

ORDER BY 
    OCO.data_hora_fato DESC;