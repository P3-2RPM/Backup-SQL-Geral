SELECT
    OCO.numero_ocorrencia,
    OCO.nome_tipo_relatorio,
    OCO.data_hora_fato,
    FROM_TIMESTAMP(OCO.data_hora_fato, 'dd/MM/yy') AS data_fato,
    YEAR(OCO.data_hora_fato) AS ano,
    MONTH(OCO.data_hora_fato) AS mes,
    -- Coluna: Faixa Hora
    CASE 
        WHEN HOUR(OCO.data_hora_fato) < 3  THEN '00h - 03h'
        WHEN HOUR(OCO.data_hora_fato) < 6  THEN '03h - 06h'
        WHEN HOUR(OCO.data_hora_fato) < 9  THEN '06h - 09h'
        WHEN HOUR(OCO.data_hora_fato) < 12 THEN '09h - 12h'
        WHEN HOUR(OCO.data_hora_fato) < 15 THEN '12h - 15h'
        WHEN HOUR(OCO.data_hora_fato) < 18 THEN '15h - 18h'
        WHEN HOUR(OCO.data_hora_fato) < 21 THEN '18h - 21h'
        ELSE '21h - 00h'
    END AS faixa_hora,
       -- Coluna: Faixa Hora valor
    CASE 
        WHEN HOUR(OCO.data_hora_fato) < 3  THEN 1
        WHEN HOUR(OCO.data_hora_fato) < 6  THEN 2
        WHEN HOUR(OCO.data_hora_fato) < 9  THEN 3
        WHEN HOUR(OCO.data_hora_fato) < 12 THEN 4
        WHEN HOUR(OCO.data_hora_fato) < 15 THEN 5
        WHEN HOUR(OCO.data_hora_fato) < 18 THEN 6
        WHEN HOUR(OCO.data_hora_fato) < 21 THEN 7
        ELSE 8
    END AS faixa_hora_cod,
    -- Coluna: Dia da semana abreviado
    CASE DAYOFWEEK(OCO.data_hora_fato)
        WHEN 1 THEN 'DOM'
        WHEN 2 THEN 'SEG'
        WHEN 3 THEN 'TER'
        WHEN 4 THEN 'QUA'
        WHEN 5 THEN 'QUI'
        WHEN 6 THEN 'SEX'
        WHEN 7 THEN 'SAB'
    END AS dia_semana_abrev,
    -- Coluna: Valor do dia (Quinta=1 até Quarta=7)
    CASE 
        WHEN (DAYOFWEEK(OCO.data_hora_fato) + 3) % 7 = 0 THEN 7
        ELSE (DAYOFWEEK(OCO.data_hora_fato) + 3) % 7
    END AS ordem_dia,
    OCO.natureza_descricao,
    OCO.natureza_consumado,
    EV.descricao_evento,
    OCO.nome_bairro,
    CONCAT(
        COALESCE(OCO.tipo_logradouro_descricao, ''), ' ', 
        COALESCE(OCO.descricao_endereco, ''), ' ', 
        COALESCE(CAST(OCO.numero_endereco AS STRING), 'S/N'), ', ', 
        COALESCE(OCO.nome_bairro, 'Bairro não inf.'), ', ', 
        COALESCE(OCO.nome_municipio, '')
    ) AS endereco_completo,
    OCO.codigo_municipio,
    OCO.nome_municipio,
    geo.latitude_sirgas2000,				-- reprojeção da latitude de SAD69 para SIRGAS2000
    geo.longitude_sirgas2000,				-- reprojeção da longitude de SAD69 para SIRGAS2000
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
    END AS UEOP_REDS,
    COALESCE(MUB.udi, 'SEM INFORMAÇÃO') AS udi,
    COALESCE(MUB.ueop, 'SEM INFORMAÇÃO') AS ueop,
    COALESCE(MUB.cia, 'SEM INFORMAÇÃO') AS cia,
    COALESCE(MUB.codigo_espacial_pm, 'SEM INFORMAÇÃO') AS codigo_espacial_pm,
    CASE 
        WHEN MUB.cia LIKE '% CIA PM IND' THEN CONCAT(RIGHT(MUB.codigo_espacial_pm, 1), ' PEL')
        ELSE COALESCE(MUB.cia, 'SEM INFORMAÇÃO')
    END AS cia_pel_final
FROM db_bisp_reds_reporting.tb_ocorrencia AS OCO
LEFT JOIN db_bisp_reds_master.tb_ocorrencia_setores_geodata AS geo ON OCO.numero_ocorrencia = geo.numero_ocorrencia 	-- Tabela de apoio que compara as lat/long com os setores IBGE
LEFT JOIN  db_bisp_cad_reporting.vw_chamada_evento  EV ON OCO.numero_chamada_cad  = EV.numero_chamada		
LEFT JOIN db_bisp_shared.tb_ibge_setores_geodata AS ibge ON geo.setor_codigo = ibge.setor_codigo  -- Join esquerdo com tabela de dados IBGE enriquecidos 
LEFT JOIN db_bisp_shared.tb_pmmg_setores_geodata AS MUB  ON geo.setor_codigo = MUB.setor_codigo -- Join esquerdo com tabela MUB 
WHERE 
    OCO.nome_tipo_relatorio IN ('AMBIENTAL', 'POLICIAL', 'REFAP', 'TRANSITO')
    AND OCO.codigo_municipio IN (315460, 310900, 312980, 314015, 316553, 312410, 310810, 312060, 312600, 313010, 313220, 313665, 314070, 315040, 315530, 316292, 311860, 310670)
    AND (
        (OCO.data_hora_fato >= '2024-02-08 00:00:00' AND OCO.data_hora_fato <= '2024-02-14 23:59:59')
        OR (OCO.data_hora_fato >= '2023-02-16 00:00:00' AND OCO.data_hora_fato <= '2023-02-22 23:59:59')
        OR (OCO.data_hora_fato >= '2022-02-24 00:00:00' AND OCO.data_hora_fato <= '2022-03-02 23:59:59')
        OR (OCO.data_hora_fato >= '2025-02-27 00:00:00' AND OCO.data_hora_fato <= '2025-03-05 23:59:59')
        OR (OCO.data_hora_fato >= '2026-02-13 00:00:00' AND OCO.data_hora_fato <= '2026-02-18 23:59:59')
    )