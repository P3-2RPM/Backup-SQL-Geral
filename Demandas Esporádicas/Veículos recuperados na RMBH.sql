WITH
ROUBADOS AS (
SELECT
    veic.numero_placa,
    veic.situacao_placa_codigo,
    veic.numero_ocorrencia,
    veic.data_hora_fato -- Adicionado: Data/Hora do Fato na tabela de Veículos (Robo/Furto)
FROM
    db_bisp_reds_reporting.tb_veiculo_ocorrencia veic
WHERE
    1 = 1
    AND YEAR(veic.data_hora_fato) >= 2023
    AND veic.digitador_id_orgao = 0
    AND veic.codigo_municipio IN (310620) -- Apenas este município na CTE, como no original
    AND veic.situacao_placa_codigo IN ('1000', '0300') -- ROUBADO ('1000') E FURTADO ('0300')
)
SELECT
    oco.numero_ocorrencia,
    oco.natureza_codigo,
    oco.natureza_descricao,
    YEAR(oco.data_hora_fato) AS ano_fato,
    MONTH(oco.data_hora_fato) AS mes_fato,
    FROM_TIMESTAMP(oco.data_hora_fato, 'dd/MM/yy') AS data_fato,
    veic.numero_placa,
    veic.situacao_placa_codigo,
    veic.situacao_placa_descricao,
    oco.numero_latitude,
    oco.numero_longitude,
    geo.latitude_sirgas2000,
    geo.longitude_sirgas2000,
    oco.logradouro_nome,
    oco.nome_bairro,
    oco.nome_municipio,
    COALESCE(MUB.udi, 'SEM INFORMAÇÃO') AS udi,
    COALESCE(MUB.ueop, 'SEM INFORMAÇÃO') AS ueop,
    COALESCE(MUB.cia, 'SEM INFORMAÇÃO') AS cia,
    COALESCE(MUB.codigo_espacial_pm, 'SEM INFORMAÇÃO') AS codigo_espacial_pm,
    CASE
        WHEN ROU.numero_placa IS NOT NULL THEN 'SIM'
        ELSE 'NÃO'
    END AS veiculo_roubado_cpc_2023
FROM
    db_bisp_reds_reporting.tb_ocorrencia oco
INNER JOIN
    db_bisp_reds_reporting.tb_veiculo_ocorrencia veic ON oco.numero_ocorrencia = veic.numero_ocorrencia
LEFT JOIN
    db_bisp_reds_master.tb_ocorrencia_setores_geodata AS geo ON oco.numero_ocorrencia = geo.numero_ocorrencia
LEFT JOIN
    db_bisp_shared.tb_ibge_setores_geodata AS ibge ON geo.setor_codigo = ibge.setor_codigo
LEFT JOIN
    db_bisp_shared.tb_pmmg_setores_geodata AS MUB ON geo.setor_codigo = MUB.setor_codigo
LEFT JOIN
    ROUBADOS AS ROU
    ON veic.numero_placa = ROU.numero_placa
    AND oco.data_hora_fato > ROU.data_hora_fato -- Condição Adicional: Data/Hora da Ocorrência Principal DEVE ser maior que a data/hora do Roubo/Furto.
WHERE
    YEAR(oco.data_hora_fato) >= 2025
    AND oco.digitador_id_orgao = 0
    AND oco.ocorrencia_uf = 'MG'
    AND oco.codigo_municipio IN (310620, 310670, 310810, 310900, 311860, 312060, 312410, 312600, 312980, 313010, 313220, 313665, 314015, 314070, 315040, 315460, 315530, 316292, 316553, 311000, 311787, 312170, 313190, 313460, 313660, 313760, 314000, 314480, 314610, 315390, 315480, 315670, 315780, 315900, 316295, 316830, 317120)
    AND veic.situacao_placa_codigo IN ('0700', '0400') -- RECUPERADO ('0700') E VEÍCULO A SER LOCALIZADO ('0400')