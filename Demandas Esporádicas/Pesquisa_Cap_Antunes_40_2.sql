/*------------------------------------------------------------------------------------------------------------------------------
 * Script do IMV (Indicador de Mortes Violentas) em Minas Gerais, tendo como parâmetro as naturezas de
 *  homicídios, roubo, lesão corporal, tortura, sequestro e cárcere privado, feminicídio.
 ------------------------------------------------------------------------------------------------------------------------------*/
WITH 
AGUAS AS (
SELECT '310800810000009' AS setor_codigo, 'Rural'  AS zona_agua UNION ALL
    SELECT '311440205000086', 'Rural'  UNION ALL
    SELECT '312520005000014', 'Rural'  UNION ALL
    SELECT '312570510000021', 'Rural'  UNION ALL
    SELECT '312610910000009', 'Rural'  UNION ALL
    SELECT '315180005000418', 'Rural'  UNION ALL
    SELECT '315430905000031', 'Urbana' UNION ALL
    SELECT '315690810000020', 'Rural'  UNION ALL
    SELECT '316225205000015', 'Urbana' UNION ALL
    SELECT '316720205010026', 'Urbana' UNION ALL
    SELECT '316935605000093', 'Urbana' UNION ALL
    SELECT '310160705000238', 'Rural'  UNION ALL
    SELECT '310160705000241', 'Rural'  UNION ALL
    SELECT '310430405000063', 'Rural'  UNION ALL
    SELECT '310430405000071', 'Rural'  UNION ALL
    SELECT '311130905000043', 'Rural'  UNION ALL
    SELECT '311860105280029', 'Urbana' UNION ALL
    SELECT '312570508000008', 'Rural'  UNION ALL
    SELECT '312700805000039', 'Urbana' UNION ALL
    SELECT '313760105000244', 'Urbana' UNION ALL
    SELECT '314330205000733', 'Urbana' UNION ALL
    SELECT '314350005000030', 'Rural'  UNION ALL
    SELECT '315050510000006', 'Rural'  UNION ALL
    SELECT '316720205010022', 'Urbana' UNION ALL
    SELECT '310160710000006', 'Rural'  UNION ALL
    SELECT '310430405000056', 'Rural'  UNION ALL
    SELECT '310430405000058', 'Rural'  UNION ALL
    SELECT '310430405000065', 'Rural'  UNION ALL
    SELECT '310710905000056', 'Rural'  UNION ALL
    SELECT '314990305000064', 'Rural'  UNION ALL
    SELECT '316130405000021', 'Rural'  UNION ALL
    SELECT '316935610000016', 'Rural'  UNION ALL
    SELECT '310110205000035', 'Urbana' UNION ALL
    SELECT '312520005000012', 'Rural'  UNION ALL
    SELECT '312710705000131', 'Rural'  UNION ALL
    SELECT '313115805000020', 'Urbana' UNION ALL
    SELECT '314350010000007', 'Rural'  UNION ALL
    SELECT '316250030000015', 'Rural'  UNION ALL
    SELECT '316720205020024', 'Urbana' UNION ALL
    SELECT '310070805000015', 'Rural'  UNION ALL
    SELECT '312700805000037', 'Rural'  UNION ALL
    SELECT '312700820000008', 'Urbana' UNION ALL
    SELECT '313000205000017', 'Rural'  UNION ALL
    SELECT '313450905000031', 'Urbana' UNION ALL
    SELECT '314460720000006', 'Rural'  UNION ALL
    SELECT '315180005000419', 'Rural'  UNION ALL
    SELECT '310430405000068', 'Rural'  UNION ALL
    SELECT '310670505090031', 'Urbana' UNION ALL
    SELECT '311160605000065', 'Rural'  UNION ALL
    SELECT '311160610000011', 'Rural'  UNION ALL
    SELECT '311460005000033', 'Rural'  UNION ALL
    SELECT '312070605000007', 'Urbana' UNION ALL
    SELECT '312570505000047', 'Rural'  UNION ALL
    SELECT '316250010000008', 'Rural'  UNION ALL
    SELECT '311440210000014', 'Rural'  UNION ALL
    SELECT '312570510000030', 'Rural'  UNION ALL
    SELECT '312610925000020', 'Rural'  UNION ALL
    SELECT '313040805000023', 'Rural'  UNION ALL
    SELECT '313430120000010', 'Rural'  UNION ALL
    SELECT '313450905000023', 'Rural'  UNION ALL
    SELECT '313820305000223', 'Rural'  UNION ALL
    SELECT '315050505000027', 'Rural'  UNION ALL
    SELECT '315160205000036', 'Rural'  UNION ALL
    SELECT '317010705000100', 'Rural'
), -- !!!!!  ESTA CTE NÃO DEVE SER ALTERADA !!!!!
LETALIDADE AS                                                              -- Define uma CTE chamada LETALIDADE que será usada para filtrar ocorrências
( 
    SELECT                                                                 
        ENV.numero_ocorrencia,                                            -- Seleciona o número da ocorrência da tabela de envolvidos
        ENV.digitador_id_orgao,                                          -- Seleciona o ID do órgão que registrou a ocorrência
        ENV.natureza_ocorrencia_codigo,                                  -- Seleciona o código da natureza da ocorrência
        ENV.data_hora_fato,                                             -- Seleciona a data e hora do fato
        ENV.ind_militar_policial_servico                                -- Seleciona o indicador se o militar estava em serviço
    FROM 
        db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV              -- Tabela origem dos dados de envolvidos
    WHERE 1=1                                                           -- Início das condições de filtro (1=1 é sempre verdadeiro)
        AND ENV.natureza_ocorrencia_codigo IN('B01121','B01129')  -- Filtra natureza específica (Homicídio, Lesão Corporal)
        AND ENV.id_envolvimento IN (35,36,44)                          -- Filtra apenas autores, co-autores e suspeitos
        AND ENV.ind_militar_policial IS NOT DISTINCT FROM 'M'          -- Filtra apenas militares
        AND ENV.ind_militar_policial_servico IS NOT DISTINCT FROM 'S'  -- Filtra apenas militares em serviço
        AND ENV.orgao_lotacao_policial_sigla = 'PM' 				 -- Filtra sigla do órgão policial, PM
        AND ENV.data_hora_fato BETWEEN '2023-01-01 00:00:00' AND '2026-01-01 00:00:00'            -- Filtra pelo mês final informado no parâmetro
)
SELECT                                                           
    OCO.numero_ocorrencia,                                           -- Seleciona o número da ocorrência
    ENV.envolvimento_codigo,                                         -- Seleciona o código do tipo de envolvimento
    ENV.envolvimento_descricao,                                     -- Seleciona a descrição do tipo de envolvimento
    ENV.numero_envolvido,                                           -- Seleciona o número do envolvido
CASE                                                                              -- Inicia estrutura de decisão condicional
	WHEN UPPER(ENV.nome_completo_envolvido) IS NULL OR TRIM(UPPER(ENV.nome_completo_envolvido)) = ''  
		OR UPPER(ENV.nome_completo_envolvido) LIKE '%DESCONHECID%' 
		OR UPPER(ENV.nome_completo_envolvido) LIKE '%IGNORAD%' 
		OR UPPER(ENV.nome_completo_envolvido) LIKE '%IDENTIFICAD%'  
	THEN -- Verifica se nome está nulo, vazio ou contém 'DESCONHECID'
			CONCAT('DESCONHECIDO ',                                                          -- Inicia concatenação para criar identificador
			    CAST(SUBSTRING(ENV.numero_ocorrencia, 6,9) AS STRING),                      -- Extrai e converte dígitos 6-9 do número da ocorrência
			    '0',                                                                         -- Adiciona um zero como separador
			    CAST(ENV.numero_envolvido AS STRING)                                        -- Adiciona número do envolvido convertido para string
			)
	ELSE UPPER(ENV.nome_completo_envolvido)                                                -- Se nome existir, mantém o original
	END AS nome_completo_envolvido,-- Finaliza o CASE e nomeia o campo como nome_completo  
CASE                                                                              -- Inicia estrutura de decisão condicional
		WHEN UPPER(ENV.nome_mae) IS NULL OR TRIM(UPPER(ENV.nome_mae)) = ''  
			OR UPPER(ENV.nome_mae) LIKE '%DESCONHECID%' 
			OR UPPER(ENV.nome_completo_envolvido) LIKE '%IGNORAD%' 
			OR UPPER(ENV.nome_completo_envolvido) LIKE '%IDENTIFICA%'  
		THEN                 -- Verifica se nome está nulo, vazio ou contém 'DESCONHECID'
				CONCAT('MÃE ',                                                          -- Inicia concatenação para criar identificador
				    CAST(SUBSTRING(ENV.numero_ocorrencia, 6,9) AS STRING),                      -- Extrai e converte dígitos 6-9 do número da ocorrência
				    '0',                                                                         -- Adiciona um zero como separador
				    CAST(ENV.numero_envolvido AS STRING)                                        -- Adiciona número do envolvido convertido para string
				)
		ELSE UPPER(ENV.nome_mae)                                                -- Se nome existir, mantém o original
END AS nome_mae,                                                            -- Finaliza o CASE e nomeia o campo como nome_completo  
CASE                                                                             -- Inicia estrutura de decisão condicional 
	WHEN COALESCE(CAST(ENV.data_nascimento AS STRING), '') = '' THEN                -- Verifica se o campo data_nascimento está vazio ou nulo usando COALESCE para tratar NULL como string vazia
		CONCAT(                                                                          -- Inicia concatenação para criar identificador
		   'CAMPO NULO ',                                                              -- String literal indicando campo nulo
		   CAST(SUBSTRING(ENV.numero_ocorrencia, 6,9) AS STRING),                      -- Extrai e converte dígitos 6-9 do número da ocorrência
		   '0',                                                                        -- Adiciona zero como separador
		   CAST(ENV.numero_envolvido AS STRING)                                        -- Adiciona número do envolvido convertido para string
		)
	ELSE CAST(ENV.data_nascimento AS STRING)                                        -- Se data existir, converte para string e retorna
END AS data_nascimento,                                                         -- Finaliza o CASE e nomeia o campo como data_nascimento
ENV.valor_idade_aparente as idade,
ENV.codigo_sexo,
ENV.numero_documento_id,
ENV.tipo_documento_descricao,
ENV.numero_cpf_cnpj,
ENV.numero_telefone_residencial,
ENV.relacao_vitima_autor_descricao,
ENV.escolaridade_descricao,
ENV.cor_pele_descricao,
ENV.estado_civil_descricao,
ENV.identidade_genero_descricao,
ENV.orientacao_sexual_descricao,
ENV.descricao_ocupacao_profissional,
ENV.etnia_indigena_codigo,
ENV.ind_pessoa_situacao_rua,
-- CASE WHEN LET.NUMERO_OCORRENCIA IS NOT NULL THEN 'LET' ELSE 'NO LET' END AS LETALIDADE,                             -- Seleciona o indicador de militar em serviço(CTE)
    ENV.condicao_fisica_descricao,                                -- Seleciona a descrição da condição física do envolvido
    ENV.natureza_ocorrencia_codigo,                               -- Seleciona o código da natureza da ocorrência (envolvido)
    ENV.natureza_ocorrencia_descricao,                           -- Seleciona a descrição da natureza da ocorrência (envolvido)
    ENV.ind_consumado,                                           -- Seleciona se a ocorrência foi consumada ou tentada
    OCO.unidade_area_militar_codigo,                              -- Código da unidade militar da área
    OCO.unidade_area_militar_nome,                                -- Nome da unidade militar da área
    OCO.unidade_responsavel_registro_codigo,                      -- Código da unidade que registrou a ocorrência
    OCO.unidade_responsavel_registro_nome,                        -- Nome da unidade que registrou a ocorrência
    geo.latitude_sirgas2000,				-- reprojeção da latitude de SAD69 para SIRGAS2000
    geo.longitude_sirgas2000,				-- reprojeção da longitude de SAD69 para SIRGAS2000
CASE 																			-- se o território é Urbano ou Rural segundo o IBGE
    	WHEN oco.pais_codigo <> 1 AND oco.ocorrencia_uf IS NULL THEN 'Outro_Pais'  	-- trata erro - ocorrencia de fora do Brasil
		WHEN oco.ocorrencia_uf <> 'MG' THEN 'Outra_UF'								-- trata erro - ocorrencia de fora de MG
    	WHEN oco.numero_latitude IS NULL THEN 'Invalido'							-- trata erro - ocorrencia sem latitude
        WHEN geo.situacao_codigo = 9 THEN AG.zona_agua									-- trata erro - ocorrencia dentro de curso d'água
       	WHEN geo.situacao_zona IS NULL THEN 'Erro_Processamento'					-- checa se restou alguma ocorrencia com erro
    	ELSE geo.situacao_zona
END AS situacao_zona,  
    ibge.tipo_descricao,                              -- Informações adicionais do IBGE 
    CAST(OCO.codigo_municipio AS INTEGER),                        -- Converte o código do município para número inteiro
    ENV.nome_municipio,                                           -- Nome do município da ocorrência
    ENV.tipo_logradouro_descricao,                                -- Tipo do logradouro (Rua, Avenida, etc)
    ENV.logradouro_nome,                                          -- Nome do logradouro
    ENV.numero_endereco,                                          -- Número do endereço
    ENV.nome_bairro,                                              -- Nome do bairro
    OCO.numero_latitude,                                          -- Latitude da localização
    OCO.numero_longitude,                                         -- Longitude da localização
    OCO.data_hora_fato,                                        -- Data e hora do fato
    YEAR(OCO.data_hora_fato) AS ano,                           -- Ano do fato
    MONTH(OCO.data_hora_fato) AS mes,                          -- Mês do fato
    OCO.nome_tipo_relatorio,                                   -- Tipo do relatório
    OCO.digitador_sigla_orgao,
    COALESCE(MUB.udi, 'SEM INFORMAÇÃO') AS udi,
    COALESCE(MUB.ueop, 'SEM INFORMAÇÃO') AS ueop,
    COALESCE(MUB.cia, 'SEM INFORMAÇÃO') AS cia,
    COALESCE(MUB.codigo_espacial_pm, 'SEM INFORMAÇÃO') AS codigo_espacial_pm,
    CASE 
        WHEN MUB.cia LIKE '% CIA PM IND' THEN CONCAT(RIGHT(MUB.codigo_espacial_pm, 1), ' PEL')
        ELSE COALESCE(MUB.cia, 'SEM INFORMAÇÃO')
    END AS cia_pel_final
FROM db_bisp_reds_reporting.tb_ocorrencia AS OCO                    -- Tabela principal de ocorrências
INNER JOIN db_bisp_reds_reporting.tb_envolvido_ocorrencia AS ENV   ON OCO.numero_ocorrencia = ENV.numero_ocorrencia        -- Join com a tabela de envolvidos        -- Relaciona ocorrências com seus envolvidos
LEFT JOIN LETALIDADE LET ON OCO.numero_ocorrencia = LET.numero_ocorrencia -- Join com a CTE de LETALIDADE
LEFT JOIN db_bisp_reds_master.tb_ocorrencia_setores_geodata AS geo ON OCO.numero_ocorrencia = geo.numero_ocorrencia 	-- Tabela de apoio que compara as lat/long com os setores IBGE		
LEFT JOIN db_bisp_shared.tb_ibge_setores_geodata AS ibge ON geo.setor_codigo = ibge.setor_codigo  -- Join esquerdo com tabela de dados IBGE enriquecidos 
LEFT JOIN db_bisp_shared.tb_pmmg_setores_geodata AS MUB  ON geo.setor_codigo = MUB.setor_codigo -- Join esquerdo com tabela MUB 
LEFT JOIN AGUAS AG ON geo.setor_codigo = AG.setor_codigo
WHERE 1=1      
    AND LET.numero_ocorrencia IS NULL                           -- Exclui ocorrências presentes na CTE LETALIDADE
--    AND ENV.id_envolvimento IN (25,32,1097,26,27,28,872)       	-- Filtra tipos específicos de envolvimento (Todos as vitimas)
    AND ENV.envolvimento_codigo IN ('0100','0200')			-- Filtra autor e coautor
    AND OCO.ind_estado ='F'                                -- Filtra apenas ocorrências fechadas
--    AND ENV.condicao_fisica_codigo = '0100'                     -- Filtra por condição física específica (Fatal)
    AND OCO.ocorrencia_uf = 'MG'                               -- Filtra apenas ocorrências de Minas Gerais
--    AND OCO.natureza_codigo IN ('B01121','B01504') -- Filtra naturezas específicas (Homicídio,Roubo,Tortura,Lesão corporal,Sequestro e cárcere privado, Feminicídio* )
    AND OCO.natureza_codigo IN ('C01157') 
    AND OCO.digitador_sigla_orgao IN ('PM','PC')               -- Filtra registros feitos pela PM ou PC
    AND OCO.nome_tipo_relatorio IN ('POLICIAL','REFAP')        -- Filtra tipos específicos de relatório (POLICIAL e REFAP)
    AND OCO.local_imediato_codigo NOT IN( '1302','1310')		-- Filtra ocorrências cujo local imediato nâo seja UNIDADE PRISIONAL (CERESP/PRESIDIO/PENITENCIARIA) ou CAEDEIA PUBLICA
    AND OCO.data_hora_fato BETWEEN '2023-01-01 00:00:00' AND '2026-01-01 00:00:00'    -- Filtra dentro do intervalo especificado
    AND OCO.codigo_municipio IN (315460)
ORDER BY OCO.data_hora_fato,              -- Ordena por RPM, UEOP, data/hora
         OCO.numero_ocorrencia, ENV.nome_completo_envolvido,    -- Número da ocorrência, nome do envolvido
         ENV.nome_mae, ENV.data_nascimento;                     -- Nome da mãe e data de nascimento
