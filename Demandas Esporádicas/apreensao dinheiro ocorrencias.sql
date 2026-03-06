SELECT
    MAO.numero_ocorrencia, 
    MAO.situacao_descricao,
    MAO.situacao_codigo,
    MAO.quantidade_material,
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
    AND MAO.situacao_codigo IN ('0100', '0600', '0700');