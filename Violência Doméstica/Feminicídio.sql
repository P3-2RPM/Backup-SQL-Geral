SELECT
      OCO.numero_ocorrencia,
      1 as contagem_vitimas,
      OCO.natureza_codigo,
   OCO.natureza_descricao,
   OCO.data_hora_fato,
--   ENV.nome_completo_envolvido, 
--   OCO.codigo_municipio,
OCO.numero_latitude,    
OCO.numero_longitude,
   OCO.codigo_municipio,
   OCO.nome_municipio,
   OCO.nome_bairro,
   OCO.descricao_endereco,	
   OCO.local_imediato_descricao,
   ENV.codigo_sexo,
   ENV.condicao_fisica_descricao,
   ENV.cor_pele_descricao,
   ENV.envolvimento_descricao,
   ENV.escolaridade_descricao,
   ENV.estado_civil_descricao,
   ENV.identidade_genero_descricao,
   ENV.ind_consumado,
   ENV.orientacao_sexual_descricao,
   ENV.nacionalidade_descricao,
   ENV.relacao_vitima_autor_descricao,
   ENV.valor_idade_aparente,
   CASE WHEN (ENV.valor_idade_aparente < 12) THEN '0 A 11 ANOS'
   WHEN (ENV.valor_idade_aparente < 18) THEN '12 A 17 ANOS'
   WHEN (ENV.valor_idade_aparente < 25) THEN '18 A 24 ANOS'
   WHEN (ENV.valor_idade_aparente < 31) THEN '25 A 30 ANOS'
   WHEN (ENV.valor_idade_aparente < 41) THEN '31 A 40 ANOS'
   WHEN (ENV.valor_idade_aparente < 51) THEN '41 A 50 ANOS'
   WHEN (ENV.valor_idade_aparente < 61) THEN '51 A 60 ANOS'
   WHEN (ENV.valor_idade_aparente > 61) THEN 'ACIMA DE 60 ANOS'
   ELSE 'NAO IDENTIFICADO'
   END,
   OCO.nome_tipo_relatorio,
   YEAR(OCO.data_hora_fato) AS ano_fato
    
FROM db_bisp_reds_reporting.tb_ocorrencia  as OCO

LEFT JOIN 
    db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV ON OCO.numero_ocorrencia = ENV.numero_ocorrencia

WHERE 
    ind_estado = 'F'
    AND YEAR(OCO.data_hora_fato) >= 2020
    AND ENV.id_envolvimento IN (25, 26, 27, 28, 32, 872, 1097) -- VITIMAS
    AND ENV.codigo_sexo = 'F'
    AND ENV.condicao_fisica_descricao = 'FATAL'
    AND ENV.id_relacao_vitima_autor IN (3,4,5,6,7,9,15,16,18,19,20,21,22) -- RELAÇÃO VITIMA AUTOR CONJUGALIDADE (HOMEM/MULHER)
    AND (
    	OCO.natureza_codigo IN ('C01157','B01121','B01129','B02001','B01504')
		OR OCO.natureza_secundaria1_codigo IN ('C01157','B01121','B01129','B02001','B01504')
        OR OCO.natureza_secundaria2_codigo IN ('C01157','B01121','B01129','B02001','B01504')
        OR OCO.natureza_secundaria3_codigo IN ('C01157','B01121','B01129','B02001','B01504')
    )
    
    AND OCO.ocorrencia_uf = 'MG'
    AND OCO.digitador_sigla_orgao IN ('PM', 'PC')
    AND OCO.nome_tipo_relatorio IN ('POLICIAL', 'REFAP')
    AND OCO.codigo_municipio IN (311860) -- Contagem
;