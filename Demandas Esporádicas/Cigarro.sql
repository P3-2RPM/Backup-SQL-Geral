/*
================================================================================
PROJETO: Análise de Apreensões de Cigarros Eletrônicos (Vapes) - 2ª RPM
DESCRIÇÃO: Identifica ocorrências envolvendo a apreensão de vapes e similares,
           cruzando dados de materiais, produtividade (presos) e inteligência 
           geográfica (setores/UDI/UEOP).
PERÍODO: A partir de 2024
================================================================================
*/

WITH PRESOS AS (
    -- Consolida a quantidade de autores/suspeitos presos por ocorrência
    SELECT 
        ENV.numero_ocorrencia,
        COUNT(DISTINCT ENV.numero_envolvido) AS quantidade_presos
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV					
    INNER JOIN db_bisp_reds_reporting.tb_ocorrencia OCO 
        ON OCO.numero_ocorrencia = ENV.numero_ocorrencia					
    WHERE YEAR(ENV.data_hora_fato) > 2023								
      AND ENV.digitador_id_orgao = 0 -- Registros PMMG
      AND ENV.id_envolvimento IN (35, 36, 44) -- Autor, Co-autor, Suspeito
      AND ENV.id_tipo_prisao_apreensao IN (1, 2, 3, 4, 6, 7)
      AND (OCO.unidade_responsavel_registro_nome LIKE '%/2 RPM%' 
           OR OCO.unidade_responsavel_registro_nome LIKE '%/2RPM%')
    GROUP BY ENV.numero_ocorrencia
)

SELECT
    -- Dados Básicos da Ocorrência
    OCO.numero_ocorrencia,
    OCO.natureza_codigo,
    OCO.unidade_area_militar_nome,
    OCO.unidade_responsavel_registro_nome,
    OCO.nome_municipio,
    OCO.data_hora_fato,
    YEAR(OCO.data_hora_fato) AS ano,
    MONTH(OCO.data_hora_fato) AS mes,

    -- Detalhes do Material Apreendido
    MAO.tipo_objeto_descricao,
    MAO.informacao_complementar,
    MAO.quantidade_material,
    MAO.unidade_medida_descricao,
    MAO.situacao_descricao,
    
    -- Lógica de Identificação de Dispositivos Eletrônicos
    CASE 
        WHEN UPPER(MAO.informacao_complementar) LIKE '%ELETR_NICO%' THEN 'S' 
        ELSE 'N' 
    END AS ind_cigarro_eletronico,

    -- Indicadores de Produtividade
    COALESCE(PR.quantidade_presos, 0) AS qtde_presos,

    -- Dados Geográficos e Setorização (MUB)
    COALESCE(MUB.udi, 'SEM INFORMAÇÃO') AS udi,
    COALESCE(MUB.ueop, 'SEM INFORMAÇÃO') AS ueop,
    COALESCE(MUB.cia, 'SEM INFORMAÇÃO') AS cia,
    COALESCE(MUB.codigo_espacial_pm, 'SEM INFORMAÇÃO') AS codigo_espacial_pm

FROM db_bisp_reds_reporting.tb_ocorrencia OCO

-- Relacionamento com Materiais (Foco em Apreensões)
LEFT JOIN db_bisp_reds_reporting.tb_material_apreendido_ocorrencia MAO 
    ON OCO.numero_ocorrencia = MAO.numero_ocorrencia

-- Relacionamento com a CTE de Presos
LEFT JOIN PRESOS PR 
    ON OCO.numero_ocorrencia = PR.numero_ocorrencia

-- Cruzamento Geográfico para identificação de setores PMMG
LEFT JOIN db_bisp_reds_master.tb_ocorrencia_setores_geodata AS geo 
    ON OCO.numero_ocorrencia = geo.numero_ocorrencia
LEFT JOIN db_bisp_shared.tb_pmmg_setores_geodata AS MUB 
    ON geo.setor_codigo = MUB.setor_codigo

WHERE YEAR(OCO.data_hora_fato) > 2023
    AND (OCO.unidade_responsavel_registro_nome LIKE '%/2 RPM%' 
         OR OCO.unidade_responsavel_registro_nome LIKE '%/2RPM%')
    
    -- Filtros de Material: Foco em Cigarros/Vapes
    AND (UPPER(MAO.informacao_complementar) LIKE '%CIGARRO%' 
         OR UPPER(MAO.informacao_complementar) LIKE '%VAPE%')
    
    -- Filtro de Situação do Objeto (Apreendido, Recuperado, etc)
    AND MAO.situacao_codigo IN ('0100', '0600', '0700', '9900') 
    
    -- Exclusão de Entorpecentes para evitar falsos positivos
    AND MAO.tipo_objeto_descricao NOT LIKE '%MACONHA%'
    AND MAO.tipo_objeto_descricao NOT LIKE '%CRACK%'
    AND MAO.tipo_objeto_descricao NOT LIKE '%HAXIXE%'

ORDER BY OCO.data_hora_fato DESC;
