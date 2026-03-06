WITH                                                                    -- Início da definição da Common Table Expression (CTE)
LETALIDADE AS                                                           -- Define uma CTE chamada LETALIDADE que será usada para filtrar ocorrências
( 
    SELECT                                                                 
        ENV.numero_ocorrencia,                                          -- Seleciona o número da ocorrência da tabela de envolvidos
        ENV.digitador_id_orgao,                                         -- Seleciona o ID do órgão que registrou a ocorrência
        ENV.natureza_ocorrencia_codigo,                                 -- Seleciona o código da natureza da ocorrência
        ENV.data_hora_fato,                                             -- Seleciona a data e hora do fato
        ENV.ind_militar_policial_servico                                -- Seleciona o indicador se o militar estava em serviço
    FROM 
        db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV              -- Tabela origem dos dados de envolvidos
    WHERE 1=1                                                           -- Início das condições de filtro (1=1 é sempre verdadeiro)
        AND ENV.natureza_ocorrencia_codigo IN('B01121','B01129')        -- Filtra natureza específica (Homicídio, Lesão Corporal)
        AND ENV.id_envolvimento IN (35,36,44)                           -- Filtra apenas autores, co-autores e suspeitos
        AND ENV.ind_militar_policial IS NOT DISTINCT FROM 'M'           -- Filtra apenas militares
        AND ENV.ind_militar_policial_servico IS NOT DISTINCT FROM 'S'   -- Filtra apenas militares em serviço
        AND ENV.orgao_lotacao_policial_sigla = 'PM' 				    -- Filtra sigla do órgão policial, PM
        AND YEAR(ENV.data_hora_fato) > 2023                             -- Filtra por fatos depois de 2023
)

SELECT 
ENV.numero_ocorrencia, 
OCO.data_hora_fato, 
OCO.natureza_codigo AS natureza_ocor,
OCO.natureza_descricao_longa AS natureza_ocor_nome,
ENV.natureza_ocorrencia_codigo AS natureza_env, 
ENV.natureza_ocorrencia_descricao AS natureza_env_nome,
ENV.ind_consumado, 
OCO.nome_bairro, 
OCO.nome_municipio, 
'02 RPM' as RPM,
CASE 
		WHEN OCO.codigo_municipio = 311860 AND (OCO.unidade_area_militar_nome LIKE '18 BPM%' or OCO.unidade_area_militar_nome LIKE '%/18 BPM%') AND (OCO.unidade_area_militar_nome not LIKE '%TM%')THEN '18 BPM'
		WHEN OCO.codigo_municipio = 310670 AND (OCO.unidade_area_militar_nome LIKE '33 BPM%' or OCO.unidade_area_militar_nome LIKE '%/33 BPM%') AND (OCO.unidade_area_militar_nome not LIKE '%TM%')THEN '33 BPM'
		WHEN OCO.codigo_municipio = 311860 AND (OCO.unidade_area_militar_nome LIKE '39 BPM%' or OCO.unidade_area_militar_nome LIKE '%/39 BPM%') AND (OCO.unidade_area_militar_nome not LIKE '%TM%')THEN '39 BPM'
		WHEN OCO.codigo_municipio IN (315460) THEN '40 BPM'
		WHEN OCO.codigo_municipio IN (310900,312980,314015,316553) THEN '48 BPM'
		WHEN OCO.codigo_municipio = 310670 AND (OCO.unidade_area_militar_nome LIKE '66 BPM%' or OCO.unidade_area_militar_nome LIKE '%/66 BPM%') AND (OCO.unidade_area_militar_nome not LIKE '%TM%')THEN '66 BPM'
		WHEN OCO.codigo_municipio IN (312410) THEN '6 CIA PM IND'
		WHEN OCO.codigo_municipio IN (310810,312060,312600,313010,313220,313665,314070,315040,315530,316292) THEN '7 CIA PM IND'
		ELSE 'OUTROS'
END AS UEOp,
-- SPLIT_PART (OCO.unidade_area_militar_nome,'/', -3) AS fracao_pm,
SPLIT_PART(OCO.unidade_area_militar_nome, '/', -3) || '/' || SPLIT_PART(OCO.unidade_area_militar_nome, '/', -2) AS fracao_pm,
ENV.condicao_fisica_descricao_longa, 
ENV.envolvimento_descricao_longa
FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia as ENV
INNER JOIN db_bisp_reds_reporting.tb_ocorrencia as OCO
ON ENV.numero_ocorrencia = OCO.numero_ocorrencia
LEFT JOIN LETALIDADE LET ON OCO.numero_ocorrencia = LET.numero_ocorrencia
WHERE YEAR (ENV.data_hora_fato ) >= 2023
AND LET.numero_ocorrencia IS NULL  -- Exclui ocorrências presentes na CTE LETALIDADE
AND OCO.codigo_municipio in (310670 , 310810 , 310900 , 311860 , 312060 , 312410 , 312600 , 312980 , 313010 , 313220 , 313665 , 314015 , 314070 , 315040 , 315460 , 315530 , 316292 , 316553)
AND OCO.unidade_responsavel_registro_id_orgao in (0,1 ) -- 0 POLICIA MILITAR, 1- POLICIA CIVIL
AND OCO.ocorrencia_uf = 'MG'
AND (
       (
         (OCO.natureza_codigo IN ('C01159', 'B01148','C01158','B01121' ) -- EXTORSÃO MEDIANTE SEQUESTRO, SEQUESTRO, ROUBO, EXTORSÃO, HOMICÍDIO -- tirou os disparos
          )
        OR 
         (OCO.natureza_codigo = 'B01129' -- LESÃO CORPORAL
          AND ENV.condicao_fisica_descricao_longa IN ('GRAVES OU INCONSCIENTE', 'FATAL')
          OR OCO.instrumento_utilizado_codigo IN ('0300') -- ARMAS DE FOGO
          )
         OR 
         (OCO.natureza_codigo  IN ('B01147')  -- AMEAÇA
       		AND (	UPPER(OCO.historico_ocorrencia) LIKE '%MORTE%' OR 
    				UPPER(OCO.historico_ocorrencia) LIKE '%MATAR%' OR
    				UPPER(OCO.historico_ocorrencia) LIKE '%DAR TIRO%' OR 
    				UPPER(OCO.historico_ocorrencia) LIKE '%CAIX_O%')  )
    				OR 
         (OCO.natureza_codigo = 'C01157' -- ROUBO
          AND OCO.instrumento_utilizado_codigo IN ('0300') -- ARMAS DE FOGO
          )
       )
       
     AND ENV.envolvimento_codigo IN ('1300', '1399', '1301', '1302', '1303', '1304', '1305') -- códigos para vítimas
     OR
        (OCO.natureza_codigo  IN ('E03014','E03016','I04033')  -- PORTE ILEGAL ARMA DE FOGO (PERMITIDO OU RESTRITO) E DISPARO DE ARMA DE FOGO E TRÁFICO DE DROGAS,
         AND ENV.envolvimento_codigo IN ('0100') -- código para autor
         )
     )