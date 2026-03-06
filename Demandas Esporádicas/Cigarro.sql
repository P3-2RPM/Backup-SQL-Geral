WITH 																		-- criar uma cte para buscar os militares que participaram da ocorrência
PRESOS AS (																-- criar uma cte para buscar as pessoas presas em cada ocorrência
    SELECT 
        ENV.numero_ocorrencia,
        COUNT(DISTINCT ENV.numero_envolvido) AS quantidade_presos			-- cria uma coluna contando a quantidade de envolvidos distintos
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV					
    INNER JOIN db_bisp_reds_reporting.tb_ocorrencia OCO 
        ON OCO.numero_ocorrencia = ENV.numero_ocorrencia					
    WHERE 1 = 1 
        AND YEAR (ENV.data_hora_fato) > 2023								
        AND ENV.digitador_id_orgao = 0										-- apenas registros da PMMG
        AND ENV.id_envolvimento IN (35,36,44) 								-- 35 - autor, 36 - co-autor e 44 - suspeito
        AND ENV.id_tipo_prisao_apreensao IN (1,2,3,4,6,7) 						-- 1 - flagrante de ato infracional, 2 - flagrante de crime, 3 - mandado judicial, 7 - flagrante / tco 
        AND (OCO.unidade_responsavel_registro_nome LIKE  '%/2 RPM%' OR OCO.unidade_responsavel_registro_nome LIKE  '%/2RPM%')
        GROUP BY ENV.numero_ocorrencia
)
SELECT
    OCO.numero_ocorrencia,
    OCO.natureza_codigo,
    OCO.unidade_area_militar_codigo,
    OCO.unidade_area_militar_nome,
    OCO.unidade_responsavel_registro_codigo,
    OCO.unidade_responsavel_registro_nome,
    OCO.nome_municipio,
    OCO.data_hora_fato,
    OCO.tipo_local_descricao_longa,
    OCO.complemento_natureza_descricao,
    OCO.local_imediato_longa,
    YEAR(OCO.data_hora_fato) AS ano,
    MONTH(OCO.data_hora_fato) AS mes,
    MAO.tipo_objeto_codigo,
    MAO.tipo_objeto_descricao,
    MAO.informacao_complementar,
    MAO.quantidade_material,
    COALESCE(PR.quantidade_presos, 0) AS qtde_presos,
    CASE
        WHEN UPPER(MAO.informacao_complementar) LIKE '%ELETR_NICO%'
        THEN 'S'
        ELSE 'N'
    END AS tipo_cigarro_eletronico,
    MAO.unidade_medida_descricao,
    MAO.situacao_codigo,
    MAO.situacao_descricao,
    COALESCE(MUB.udi, 'SEM INFORMAÇÃO') AS udi,
    COALESCE(MUB.ueop, 'SEM INFORMAÇÃO') AS ueop,
    COALESCE(MUB.cia, 'SEM INFORMAÇÃO') AS cia,
    COALESCE(MUB.codigo_espacial_pm, 'SEM INFORMAÇÃO') AS codigo_espacial_pm
FROM
    db_bisp_reds_reporting.tb_ocorrencia OCO
LEFT JOIN
    db_bisp_reds_reporting.tb_material_apreendido_ocorrencia MAO
    ON OCO.numero_ocorrencia = MAO.numero_ocorrencia
LEFT JOIN PRESOS PR ON OCO.numero_ocorrencia = PR.numero_ocorrencia
LEFT JOIN
    db_bisp_reds_master.tb_ocorrencia_setores_geodata AS geo
    ON OCO.numero_ocorrencia = geo.numero_ocorrencia
LEFT JOIN
    db_bisp_shared.tb_pmmg_setores_geodata AS MUB
    ON geo.setor_codigo = MUB.setor_codigo
WHERE
    YEAR(OCO.data_hora_fato) > 2023
    AND (
        OCO.unidade_responsavel_registro_nome LIKE '%/2 RPM%'
        OR OCO.unidade_responsavel_registro_nome LIKE '%/2RPM%'
    )
    AND (
        UPPER(MAO.informacao_complementar) LIKE '%CIGARRO%'
        OR UPPER(MAO.informacao_complementar) LIKE '%VAPE%'
    )
    AND MAO.situacao_codigo IN ('0100', '0600', '0700', '9900') -- APREENDIDO, RECOLHIDO, RECUPERADO, OUTROS
    AND (
        MAO.tipo_objeto_descricao NOT LIKE '%MACONHA%'
        AND MAO.tipo_objeto_descricao NOT LIKE '%CRACK%'
        AND MAO.tipo_objeto_descricao NOT LIKE '%HAXIXE%'
    );