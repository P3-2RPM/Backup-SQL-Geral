WITH 
BaseAutores AS (
SELECT
        ENV.nome_completo_envolvido AS nome_autor,
        ENV.data_nascimento AS data_nascimento_autor,
        ENV.nome_mae,
        ENV.numero_documento_id,
        ENV.tipo_documento_descricao,
        CONCAT(
            (CASE 
                WHEN UPPER(ENV.nome_completo_envolvido) IS NULL 
                     OR TRIM(UPPER(ENV.nome_completo_envolvido)) = '' 
                     OR UPPER(ENV.nome_completo_envolvido) LIKE '%DESCONHECID%' 
                     OR UPPER(ENV.nome_completo_envolvido) LIKE '%IGNORAD%' 
                     OR UPPER(ENV.nome_completo_envolvido) LIKE '%IDENTIFICA%' THEN 
                CONCAT('DESCONHECIDO ', CAST(SUBSTRING(ENV.numero_ocorrencia, 6,9) AS STRING), '0', CAST(ENV.numero_envolvido AS STRING))
                ELSE UPPER(ENV.nome_completo_envolvido) 
            END),
            '-',
            (CASE 
                WHEN UPPER(ENV.nome_mae) IS NULL 
                     OR TRIM(UPPER(ENV.nome_mae)) = '' 
                     OR UPPER(ENV.nome_mae) LIKE '%DESCONHECID%' 
                     OR UPPER(ENV.nome_completo_envolvido) LIKE '%IGNORAD%' 
                     OR UPPER(ENV.nome_completo_envolvido) LIKE '%IDENTIFICA%' THEN
                CONCAT(' MAE ', CAST(SUBSTRING(ENV.numero_ocorrencia, 6,9) AS STRING), '0', CAST(ENV.numero_envolvido AS STRING))
                ELSE UPPER(ENV.nome_mae) 
            END),
            '-',
            (CASE 
                WHEN COALESCE(CAST(ENV.data_nascimento AS STRING), '') = '' THEN
                CONCAT('CAMPO NULO ', CAST(SUBSTRING(ENV.numero_ocorrencia, 6,9) AS STRING), '0', CAST(ENV.numero_envolvido AS STRING))
                ELSE CAST(ENV.data_nascimento AS STRING) 
            END)
        ) AS id_autor_unico,
        ENV.numero_individuo_sip,
        ENV.tipo_prisao_apreensao_descricao,
        OCO.numero_ocorrencia,
        OCO.data_hora_fato,
        OCO.nome_municipio,
        OCO.unidade_area_militar_nome,
        OCO.unidade_responsavel_registro_nome, 
CASE WHEN OCO.historico_ocorrencia  LIKE '%ARGOS%' THEN 'S' ELSE 'N' END AS operacao_argos      
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    JOIN db_bisp_reds_reporting.tb_ocorrencia OCO
        ON ENV.numero_ocorrencia = OCO.numero_ocorrencia
    WHERE
        ENV.id_envolvimento IN (35, 36) -- autor e coautor
        AND OCO.ocorrencia_uf = 'MG'
        AND OCO.data_hora_fato >= '2026-01-01'
        AND ENV.natureza_ocorrencia_codigo IN ('A23002')
        AND OCO.digitador_sigla_orgao IN ('PM')               -- Filtra registros feitos pela PM ou PC
        AND ENV.ind_militar_policial IS DISTINCT FROM 'M'
        AND ENV.ind_militar_policial_servico IS DISTINCT FROM 'S'
        AND OCO.codigo_municipio IN (310670, 310810, 310900, 311860, 312060, 312410, 312600, 312980, 313010, 313220, 313665, 314015, 314070, 315040, 315460, 315530, 316292, 316553)
)
SELECT 
    BaseAutores. *, 
    COUNT(*) OVER (
        PARTITION BY BaseAutores.id_autor_unico 
        ORDER BY BaseAutores.data_hora_fato 
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS historico_acumulado_autor
    FROM BaseAutores
    ORDER BY BaseAutores.data_hora_fato DESC;

---- contagem de autores descumprindo por registro
WITH 
BaseAutores AS (
SELECT
    ENV.numero_ocorrencia,
    COUNT(DISTINCT ENV.numero_envolvido) AS quantidade_presos     
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    JOIN db_bisp_reds_reporting.tb_ocorrencia OCO
        ON ENV.numero_ocorrencia = OCO.numero_ocorrencia
    WHERE
        ENV.id_envolvimento IN (35, 36) -- autor e coautor
        AND OCO.ocorrencia_uf = 'MG'
        AND OCO.data_hora_fato >= '2026-01-01'
        AND ENV.natureza_ocorrencia_codigo IN ('A23002')
        AND OCO.digitador_sigla_orgao IN ('PM')               -- Filtra registros feitos pela PM ou PC
        AND ENV.ind_militar_policial IS DISTINCT FROM 'M'
        AND ENV.ind_militar_policial_servico IS DISTINCT FROM 'S'
        AND OCO.codigo_municipio IN (310670, 310810, 310900, 311860, 312060, 312410, 312600, 312980, 313010, 313220, 313665, 314015, 314070, 315040, 315460, 315530, 316292, 316553)
        GROUP BY ENV.numero_ocorrencia
)

SELECT 
    OCO.numero_ocorrencia,
    FROM_TIMESTAMP(OCO.data_hora_fato, 'dd/MM/yy') AS data_fato,
    MONTH (OCO.data_hora_fato) as mes_fato,
    CASE 	WHEN OCO.codigo_municipio IN (315460) THEN '40 BPM'
    		WHEN OCO.codigo_municipio IN (310900,312980,314015,316553) THEN '48 BPM'
			WHEN OCO.codigo_municipio IN (312410) THEN '6 CIA PM IND'    	
			WHEN OCO.codigo_municipio IN (310810,312060,312600,313010,313220,313665,314070,315040,315530,316292) THEN '7 CIA PM IND'		
			WHEN OCO.codigo_municipio =311860 AND (OCO.unidade_area_militar_nome LIKE '39 BPM%' or OCO.unidade_area_militar_nome LIKE '%/39 BPM%') AND (OCO.unidade_area_militar_nome not LIKE '%TM%')THEN '39 BPM'
			WHEN OCO.codigo_municipio =311860 AND (OCO.unidade_area_militar_nome LIKE '18 BPM%' or OCO.unidade_area_militar_nome LIKE '%/18 BPM%') AND (OCO.unidade_area_militar_nome not LIKE '%TM%')THEN '18 BPM'
			WHEN OCO.codigo_municipio =310670 AND (OCO.unidade_area_militar_nome LIKE '66 BPM%' or OCO.unidade_area_militar_nome LIKE '%/66 BPM%') AND (OCO.unidade_area_militar_nome not LIKE '%TM%')THEN '66 BPM'
			WHEN OCO.codigo_municipio =310670 AND (OCO.unidade_area_militar_nome LIKE '33 BPM%' or OCO.unidade_area_militar_nome LIKE '%/33 BPM%') AND (OCO.unidade_area_militar_nome not LIKE '%TM%')THEN '33 BPM'
			ELSE 'OUTROS' 
	END AS UEOP,
    OCO.unidade_area_militar_codigo,                              -- Seleciona o código da unidade militar da área
    OCO.unidade_area_militar_nome,                                -- Seleciona o nome da unidade militar da área
    OCO.unidade_responsavel_registro_codigo,                      -- Seleciona o código da unidade responsável pelo registro
    OCO.unidade_responsavel_registro_nome,                        -- Seleciona o nome da unidade responsável pelo registro
--    OCO.digitador_nome_unidade as 'unidade_responsavel_registro_nome',
    OCO.natureza_codigo,
   	OCO.natureza_descricao,
   	COALESCE(G.quantidade_presos, 0) AS autores
FROM db_bisp_reds_reporting.tb_ocorrencia OCO
LEFT JOIN BaseAutores G ON OCO.numero_ocorrencia = G.numero_ocorrencia
WHERE 1=1
    AND YEAR (OCO.data_hora_fato) = 2026
    AND OCO.digitador_id_orgao = 0 
    AND OCO.natureza_codigo IN ('A23002')
    AND OCO.codigo_municipio IN (310670 , 310810 , 310900 , 311860 , 312060 , 312410 , 312600 , 312980 , 313010 , 313220 , 313665 , 314015 , 314070 , 315040 , 315460 , 315530 , 316292 , 316553) 
ORDER BY OCO.numero_ocorrencia