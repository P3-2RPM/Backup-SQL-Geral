WITH AUTORES_HOMICIDIOS AS
(
SELECT
    ENV.nome_completo_envolvido AS nome_autor,
    ENV.data_nascimento AS data_nascimento_autor,
    OCO.numero_ocorrencia,
    OCO.data_hora_fato,
    OCO.nome_municipio
FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
JOIN db_bisp_reds_reporting.tb_ocorrencia OCO
    ON ENV.numero_ocorrencia = OCO.numero_ocorrencia
WHERE
    ENV.id_envolvimento IN (35, 36) -- autor e coautor
    AND OCO.ocorrencia_uf = 'MG'
    AND OCO.data_hora_fato >= '2021-01-01'
    AND ENV.natureza_ocorrencia_codigo  IN ('B01121')
    AND ENV.ind_militar_policial IS DISTINCT FROM 'M'
    AND ENV.ind_militar_policial_servico IS DISTINCT FROM 'S'
    AND OCO.codigo_municipio IN (310670 , 310810 , 310900 , 311860 , 312060 , 312410 , 312600 , 312980 , 313010 , 313220 , 313665 , 314015 , 314070 , 315040 , 315460 , 315530 , 316292 , 316553)
),
PASSAGENS_AMEACA AS (
    SELECT
        ENV.nome_completo_envolvido AS nome_autor,
        ENV.data_nascimento AS data_nascimento_autor,
        OCO.data_hora_fato
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    JOIN db_bisp_reds_reporting.tb_ocorrencia OCO
        ON ENV.numero_ocorrencia = OCO.numero_ocorrencia
    WHERE
        ENV.id_envolvimento IN (35, 36)
        AND ENV.natureza_ocorrencia_codigo IN ('B01147')
        AND OCO.codigo_municipio IN (310670 , 310810 , 310900 , 311860 , 312060 , 312410 , 312600 , 312980 , 313010 , 313220 , 313665 , 314015 , 314070 , 315040 , 315460 , 315530 , 316292 , 316553)
)
SELECT
    H.nome_autor,
    H.data_nascimento_autor,
    H.numero_ocorrencia,
    H.data_hora_fato,
    H.nome_municipio,
    COUNT(D.data_hora_fato) AS num_passagens_ameaca,
    MAX(D.data_hora_fato) AS ultima_data_prisao_ameaca,
    DATEDIFF(H.data_hora_fato, MAX(D.data_hora_fato)) AS dias_entre_prisoes 
FROM AUTORES_HOMICIDIOS H
LEFT JOIN PASSAGENS_AMEACA D
    ON H.nome_autor = D.nome_autor
    AND H.data_nascimento_autor = D.data_nascimento_autor
    AND D.data_hora_fato < H.data_hora_fato
GROUP BY
    H.nome_autor,
    H.data_nascimento_autor,
    H.numero_ocorrencia,
    H.data_hora_fato,
    H.nome_municipio
ORDER BY
    H.data_hora_fato DESC;