-- 2.3 Revitimização Mulheres no Âmbito Doméstico (RMAD)

WITH
CASOS_PRIMEIRA_VISITA AS (
    SELECT
        ENV.nome_completo_envolvido AS nome_vitima,
        ENV.data_nascimento AS data_nascimento_vitima,
        OCO.numero_ocorrencia AS ocorrencia_visita,
        OCO.data_hora_fato AS data_visita,
        OCO.nome_municipio,
        OCO.natureza_codigo,
        OCO.natureza_descricao,
        -- nvisit já filtra a visita mais recente por ano, mas para a lógica de contagem geral,
        -- precisamos da visita mais recente sem depender do ano para o join posterior
        ROW_NUMBER() OVER (PARTITION BY ENV.nome_completo_envolvido, ENV.data_nascimento ORDER BY OCO.data_hora_fato DESC) AS rn_geral_visita
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    JOIN db_bisp_reds_reporting.tb_ocorrencia OCO
        ON ENV.numero_ocorrencia = OCO.numero_ocorrencia
    WHERE
        ENV.id_envolvimento IN (25, 26, 27, 28, 32, 872, 1097)
        AND (ENV.codigo_sexo = 'F' OR identidade_genero_codigo IS NOT NULL OR identidade_genero_codigo <> '9800')
        AND OCO.ocorrencia_uf = 'MG'
        AND OCO.data_hora_fato >= '2025-01-01'
        AND OCO.natureza_codigo IN ('A20002', 'A20003', 'A20005')
        AND OCO.codigo_municipio IN (310670 , 310810 , 310900 , 311860 , 312060 , 312410 , 312600 , 312980 , 313010 , 313220 , 313665 , 314015 , 314070 , 315040 , 315460 , 315530 , 316292 , 316553)
),
VITIMAS AS (
    SELECT
        ENV.nome_completo_envolvido AS nome_vitima,
        ENV.data_nascimento AS data_nascimento_vitima,
        OCO.numero_ocorrencia,
        OCO.data_hora_fato,
        OCO.natureza_codigo,
        OCO.natureza_secundaria1_codigo,
        OCO.natureza_secundaria2_codigo,
        OCO.natureza_secundaria3_codigo
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    JOIN db_bisp_reds_reporting.tb_ocorrencia OCO
        ON ENV.numero_ocorrencia = OCO.numero_ocorrencia
    WHERE
        ENV.id_envolvimento IN (25, 26, 27, 28, 32, 872, 1097)
        AND (ENV.codigo_sexo = 'F' OR identidade_genero_codigo IS NOT NULL OR identidade_genero_codigo <> '9800')
        AND ENV.id_relacao_vitima_autor IN (3,4,5,6,7,9,15,16,18,19,20,21,22)
        AND OCO.ocorrencia_uf = 'MG'
        AND OCO.data_hora_fato >= '2021-01-01'
        AND
        (OCO.natureza_codigo IN ('B01121', 'B02001', 'B01129', 'B01148', 'B01504', 'D01213')
       OR OCO.natureza_secundaria1_codigo IN ('B01121', 'B02001', 'B01129', 'B01148', 'B01504', 'D01213')
       OR OCO.natureza_secundaria2_codigo IN ('B01121', 'B02001', 'B01129', 'B01148', 'B01504', 'D01213')
       OR OCO.natureza_secundaria3_codigo IN ('B01121', 'B02001', 'B01129', 'B01148', 'B01504', 'D01213'))
        AND OCO.codigo_municipio IN (310670 , 310810 , 310900 , 311860 , 312060 , 312410 , 312600 , 312980 , 313010 , 313220 , 313665 , 314015 , 314070 , 315040 , 315460 , 315530 , 316292 , 316553)
),
-- Nova CTE para pegar a visita mais recente de cada pessoa
ULTIMA_PRIMEIRA_VISITA AS (
    SELECT
        nome_vitima,
        data_nascimento_vitima,
        ocorrencia_visita,
        data_visita,
        nome_municipio,
        natureza_codigo,
        natureza_descricao
    FROM CASOS_PRIMEIRA_VISITA
    WHERE rn_geral_visita = 1 -- Seleciona a visita mais recente
)
SELECT
    UPV.nome_vitima,
    UPV.data_nascimento_vitima,
    UPV.ocorrencia_visita AS ocorrencia_ultima_visita,
    UPV.data_visita AS data_ultima_visita,
    UPV.nome_municipio AS municipio_ultima_visita,
    UPV.natureza_codigo AS natureza_ultima_visita,
    UPV.natureza_descricao AS descricao_natureza_ultima_visita,
    COUNT(V.numero_ocorrencia) AS quantidade_eventos_apos_visita
FROM ULTIMA_PRIMEIRA_VISITA UPV
LEFT JOIN VITIMAS V
    ON UPV.nome_vitima = V.nome_vitima
    AND UPV.data_nascimento_vitima = V.data_nascimento_vitima
    AND V.data_hora_fato > UPV.data_visita -- Aqui filtramos eventos que aconteceram DEPOIS da visita
GROUP BY
    UPV.nome_vitima,
    UPV.data_nascimento_vitima,
    UPV.ocorrencia_visita,
    UPV.data_visita,
    UPV.nome_municipio,
    UPV.natureza_codigo,
    UPV.natureza_descricao
ORDER BY
    UPV.nome_vitima,
    UPV.data_nascimento_vitima;