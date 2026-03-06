WITH 																		-- criar uma cte para buscar os militares que participaram da ocorrência
GUARNICAO AS (
    SELECT 
        IGO.numero_ocorrencia,
        GROUP_CONCAT(DISTINCT IGO.numero_matricula, ', ') AS matriculas_militares	-- coloca todos os números de polícia na mesma célula separadas por vírgula
    FROM db_bisp_reds_reporting.tb_integrante_guarnicao_ocorrencia IGO
    WHERE YEAR (IGO.data_hora_fato) = :ANO
    AND (IGO.unidade_servico_nome LIKE  '%/2 RPM%'	or 	IGO.unidade_servico_nome LIKE  '%/2RPM%')				-- só trará apenas os militares lotados em alguma unidade da 2 RPM
    GROUP BY IGO.numero_ocorrencia											-- será agrupado por número de ocorrência
),
PRESOS_R AS (																-- criar uma cte para buscar as pessoas presas em cada ocorrência
    SELECT 
        ENV.numero_ocorrencia,
        COUNT(DISTINCT ENV.numero_envolvido) AS quantidade_presos			-- cria uma coluna contando a quantidade de envolvidos distintos
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV					
    INNER JOIN db_bisp_reds_reporting.tb_ocorrencia OCO 
        ON OCO.numero_ocorrencia = ENV.numero_ocorrencia					
    WHERE 1 = 1 
        AND YEAR (ENV.data_hora_fato) = :ANO								
        AND ENV.digitador_id_orgao = 0										-- apenas registros da PMMG
        AND ENV.id_envolvimento IN (35,36,44) 								-- 35 - autor, 36 - co-autor e 44 - suspeito
        AND ENV.id_tipo_prisao_apreensao IN (1,2,3,4,6,7) 						-- 1 - flagrante de ato infracional, 2 - flagrante de crime, 3 - mandado judicial, 7 - flagrante / tco 
        AND ENV.natureza_ocorrencia_codigo in ('C01157')
        AND (OCO.unidade_responsavel_registro_nome LIKE  '%/2 RPM%' OR OCO.unidade_responsavel_registro_nome LIKE  '%/2RPM%')
        GROUP BY ENV.numero_ocorrencia
),
PRESOS_H AS (																	-- criar uma cte para buscar as pessoas presas em cada ocorrência
    SELECT 
        ENV.numero_ocorrencia,
        COUNT(DISTINCT ENV.numero_envolvido) AS quantidade_presos			-- cria uma coluna contando a quantidade de envolvidos distintos
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV					
    INNER JOIN db_bisp_reds_reporting.tb_ocorrencia OCO 
        ON OCO.numero_ocorrencia = ENV.numero_ocorrencia					
    WHERE 1 = 1 
        AND YEAR (ENV.data_hora_fato) = :ANO								
        AND ENV.digitador_id_orgao = 0										-- apenas registros da PMMG
        AND ENV.id_envolvimento IN (35,36,44) 								-- 35 - autor, 36 - co-autor e 44 - suspeito
        AND ENV.id_tipo_prisao_apreensao IN (1,2,3,4,6,7) 						-- 1 - flagrante de ato infracional, 2 - flagrante de crime, 3 - mandado judicial, 7 - flagrante / tco 
        AND ENV.natureza_ocorrencia_codigo in ('B01121', 'B01504')
        AND (OCO.unidade_responsavel_registro_nome LIKE  '%/2 RPM%' OR OCO.unidade_responsavel_registro_nome LIKE  '%/2RPM%')
        GROUP BY ENV.numero_ocorrencia
),
LETALIDADE AS                                                            -- Define uma CTE chamada LETALIDADE que será usada para filtrar ocorrências dessa natureza, para serem excluídas
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
        AND ENV.natureza_ocorrencia_codigo IN('B01121','B01129')  		-- Filtra natureza específica (Homicídio, Lesão Corporal)
        AND ENV.id_envolvimento IN (35,36,44)                          	-- Filtra apenas autores, co-autores e suspeitos
        AND ENV.ind_militar_policial IS NOT DISTINCT FROM 'M'          	-- Filtra apenas militares
        AND ENV.ind_militar_policial_servico IS NOT DISTINCT FROM 'S'  	-- Filtra apenas militares em serviço
        AND YEAR(ENV.data_hora_fato) = :ANO                          	-- Filtra pelo ano informado no parâmetro
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
    CASE WHEN OCO.unidade_responsavel_registro_nome LIKE  '%TM/%' THEN 'SIM'
    END TM,
    COALESCE(G.matriculas_militares, 'SEM MILITARES') AS matriculas_militares,
    OCO.natureza_codigo,
   	OCO.natureza_descricao,
   	OCO.natureza_ind_consumado,
    COALESCE(PR.quantidade_presos, 0) AS presos_roubo,
    COALESCE(PH.quantidade_presos, 0) AS presos_homicidio
FROM db_bisp_reds_reporting.tb_ocorrencia OCO
LEFT JOIN GUARNICAO G ON OCO.numero_ocorrencia = G.numero_ocorrencia
LEFT JOIN PRESOS_R PR ON OCO.numero_ocorrencia = PR.numero_ocorrencia
LEFT JOIN PRESOS_H PH ON OCO.numero_ocorrencia = PH.numero_ocorrencia
LEFT JOIN LETALIDADE LET ON OCO.numero_ocorrencia = LET.numero_ocorrencia 
WHERE 1=1
    AND YEAR (OCO.data_hora_fato) = :ANO 
    AND OCO.digitador_id_orgao = 0 
    AND OCO.natureza_codigo IN ('B01121','C01157','B01504', 'A05000') -- Filtra naturezas específicas (Homicídio,Roubo,Tortura,Feminicídio* )
    AND OCO.codigo_municipio IN (310670 , 310810 , 310900 , 311860 , 312060 , 312410 , 312600 , 312980 , 313010 , 313220 , 313665 , 314015 , 314070 , 315040 , 315460 , 315530 , 316292 , 316553)
    AND LET.numero_ocorrencia IS NULL    
ORDER BY OCO.numero_ocorrencia