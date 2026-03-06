SELECT
    ENV.nome_completo_envolvido AS nome_autor,
    ENV.data_nascimento AS data_nascimento_autor,
    OCO.numero_ocorrencia,
    OCO.data_hora_fato,
    OCO.nome_municipio,
    -- Contagem acumulada de ocorrências *anteriores* para o mesmo indivíduo.
    COUNT(1) OVER (
        PARTITION BY 
            ENV.nome_completo_envolvido, 
            ENV.data_nascimento
        ORDER BY 
            OCO.data_hora_fato
        ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING
    ) AS ocorrencias_anteriores
FROM 
    db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
JOIN 
    db_bisp_reds_reporting.tb_ocorrencia OCO
    ON ENV.numero_ocorrencia = OCO.numero_ocorrencia
WHERE
    ENV.id_envolvimento IN (35, 36) -- autor e coautor
    AND OCO.ocorrencia_uf = 'MG'
    AND OCO.data_hora_fato >= '2021-01-01'
    AND ENV.id_tipo_prisao_apreensao IN (1,2,3,4,6,7) 
    AND ENV.ind_militar_policial IS DISTINCT FROM 'M'
    AND ENV.ind_militar_policial_servico IS DISTINCT FROM 'S'
    AND OCO.codigo_municipio IN (310670 , 310810 , 310900 , 311860 , 312060 , 312410 , 312600 , 312980 , 313010 , 313220 , 313665 , 314015 , 314070 , 315040 , 315460 , 315530 , 316292 , 316553)
ORDER BY
    nome_autor,
    data_nascimento_autor,
    data_hora_fato;