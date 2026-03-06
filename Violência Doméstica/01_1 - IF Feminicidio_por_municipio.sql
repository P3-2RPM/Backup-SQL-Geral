-- Feminicídio por município
SELECT 
    UPPER(OCO.nome_municipio) AS municipio,
    COUNT(*) AS total_vitimas_feminicidio
FROM 
    db_bisp_reds_reporting.tb_ocorrencia OCO
JOIN 
    db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    ON OCO.numero_ocorrencia = ENV.numero_ocorrencia
WHERE 
    (
        OCO.natureza_codigo IN ('B01121', 'B02001', 'B01129', 'B01148', 'B01504', 'D01213')
        OR OCO.natureza_secundaria1_codigo IN ('B01121', 'B02001', 'B01129', 'B01148', 'B01504', 'D01213')
        OR OCO.natureza_secundaria2_codigo IN ('B01121', 'B02001', 'B01129', 'B01148', 'B01504', 'D01213')
        OR OCO.natureza_secundaria3_codigo IN ('B01121', 'B02001', 'B01129', 'B01148', 'B01504', 'D01213')
    )
    AND ENV.condicao_fisica_descricao = 'FATAL'
    AND ENV.codigo_sexo = 'F'
    AND ENV.envolvimento_codigo IN ('1300', '1399', '1301', '1302', '1303', '1304', '1305')
    AND ENV.id_relacao_vitima_autor IN (3, 4, 9, 15, 16, 18, 22)
    AND OCO.data_hora_fato >= TIMESTAMP '2025-01-01 00:00:00'
    AND OCO.data_hora_fato <  TIMESTAMP '2025-06-01 00:00:00'
    AND OCO.codigo_municipio IN (310670 , 310810 , 310900 , 311860 , 312060 , 312410 , 312600 , 312980 , 313010 , 313220 , 313665 , 314015 , 314070 , 315040 , 315460 , 315530 , 316292 , 316553)
GROUP BY 
    UPPER(OCO.nome_municipio)
ORDER BY 
    total_vitimas_feminicidio DESC;