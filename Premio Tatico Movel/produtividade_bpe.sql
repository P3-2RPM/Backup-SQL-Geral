WITH 
GUARNICAO AS (
    SELECT
        IGO.numero_ocorrencia,
        GROUP_CONCAT(DISTINCT IGO.unidade_servico_nome, ', ') AS unidade_registro,
        GROUP_CONCAT(DISTINCT IGO.numero_matricula, ', ') AS matriculas_militares
    FROM db_bisp_reds_reporting.tb_integrante_guarnicao_ocorrencia IGO
    WHERE
        YEAR(IGO.data_hora_fato) = 2025
        AND (IGO.unidade_servico_nome LIKE '%/2 BPE%' OR IGO.unidade_servico_nome LIKE '%/2BPE%')
    GROUP BY
        IGO.numero_ocorrencia
),
PRESOS AS (
    SELECT
        ENV.numero_ocorrencia,
        ENV.ind_mandado_prisao,
        ENV.id_tipo_prisao_apreensao,
        ENV.natureza_ocorrencia_codigo,
        ENV.valor_idade_aparente,
        ENV.id_envolvimento,
        ENV.numero_envolvido
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    INNER JOIN db_bisp_reds_reporting.tb_ocorrencia OCO
        ON OCO.numero_ocorrencia = ENV.numero_ocorrencia
    WHERE
        YEAR(ENV.data_hora_fato) = 2025
        AND ENV.digitador_id_orgao = 0
        AND ENV.id_tipo_prisao_apreensao IN (1, 2, 3, 4, 6, 7)
        AND (OCO.unidade_responsavel_registro_nome LIKE '%2 BPE/2 RPM%' OR OCO.unidade_responsavel_registro_nome LIKE '%2 BPE/2RPM%')
),
QTDE_PRESOS AS (
    SELECT
        P.numero_ocorrencia,
        COUNT(P.numero_ocorrencia) AS total_presos,
        COUNT(DISTINCT CASE
            WHEN P.natureza_ocorrencia_codigo IN ('C01157') AND P.id_envolvimento IN (35, 36, 44) THEN P.numero_envolvido
        END) AS quantidade_presos_roubo,
        COUNT(DISTINCT CASE
            WHEN P.natureza_ocorrencia_codigo IN ('B01121', 'B01504') AND P.id_envolvimento IN (35, 36, 44) THEN P.numero_envolvido
        END) AS quantidade_presos_homicidio,
        COUNT(DISTINCT CASE
            WHEN P.ind_mandado_prisao = 'S' THEN P.numero_envolvido
        END) AS quantidade_presos_mandado,
        COUNT(DISTINCT CASE
            WHEN P.id_tipo_prisao_apreensao = 7 AND P.id_envolvimento IN (35, 36, 44) THEN P.numero_envolvido
        END) AS quantidade_presos_tco,
        COUNT(DISTINCT CASE
            WHEN P.valor_idade_aparente < 18 THEN P.numero_envolvido
        END) AS quantidade_presos_menor
    FROM PRESOS P
    GROUP BY
        P.numero_ocorrencia
),
LETALIDADE AS (
    SELECT
        ENV.numero_ocorrencia
    FROM
        db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    WHERE
        YEAR(ENV.data_hora_fato) = 2025
        AND ENV.natureza_ocorrencia_codigo IN ('B01121', 'B01129')
        AND ENV.id_envolvimento IN (35, 36, 44)
        AND ENV.ind_militar_policial = 'M'
        AND ENV.ind_militar_policial_servico = 'S'
)
SELECT
    OCO.numero_ocorrencia,
    FROM_TIMESTAMP(OCO.data_hora_fato, 'dd/MM/yy') AS data_fato,
    MONTH(OCO.data_hora_fato) AS mes_fato,
    CASE
        WHEN OCO.codigo_municipio IN (315460) THEN '40 BPM'
        WHEN OCO.codigo_municipio IN (310900, 312980, 314015, 316553) THEN '48 BPM'
        WHEN OCO.codigo_municipio IN (312410) THEN '6 CIA PM IND'
        WHEN OCO.codigo_municipio IN (310810, 312060, 312600, 313010, 313220, 313665, 314070, 315040, 315530, 316292) THEN '7 CIA PM IND'
        WHEN OCO.codigo_municipio = 311860 AND (OCO.unidade_area_militar_nome LIKE '39 BPM%' OR OCO.unidade_area_militar_nome LIKE '%/39 BPM%') AND (OCO.unidade_area_militar_nome NOT LIKE '%TM%') THEN '39 BPM'
        WHEN OCO.codigo_municipio = 311860 AND (OCO.unidade_area_militar_nome LIKE '18 BPM%' OR OCO.unidade_area_militar_nome LIKE '%/18 BPM%') AND (OCO.unidade_area_militar_nome NOT LIKE '%TM%') THEN '18 BPM'
        WHEN OCO.codigo_municipio = 310670 AND (OCO.unidade_area_militar_nome LIKE '66 BPM%' OR OCO.unidade_area_militar_nome LIKE '%/66 BPM%') AND (OCO.unidade_area_militar_nome NOT LIKE '%TM%') THEN '66 BPM'
        WHEN OCO.codigo_municipio = 310670 AND (OCO.unidade_area_militar_nome LIKE '33 BPM%' OR OCO.unidade_area_militar_nome LIKE '%/33 BPM%') AND (OCO.unidade_area_militar_nome NOT LIKE '%TM%') THEN '33 BPM'
        ELSE 'OUTROS'
    END AS UEOP,
    OCO.unidade_area_militar_codigo,
    OCO.unidade_area_militar_nome,
    OCO.unidade_responsavel_registro_codigo,
    OCO.unidade_responsavel_registro_nome AS unidade_responsavel_registro_nome,
 CASE
        WHEN G.unidade_registro LIKE '%1 PEL PTRAN/3 CIA PTRAN/2 BPE/2 RPM%' THEN '1 PEL PTRAN/3 CIA PTRAN/2 BPE/2 RPM'
        WHEN G.unidade_registro LIKE '%2 PEL PTRAN/3 CIA PTRAN/2 BPE/2 RPM%' THEN '2 PEL PTRAN/3 CIA PTRAN/2 BPE/2 RPM'
        WHEN G.unidade_registro LIKE '%3 CIA PTRAN/2 BPE/2 RPM%' THEN '3 CIA PTRAN/2 BPE/2 RPM'
        WHEN G.unidade_registro LIKE '%1 PEL GER/1 CIA GER/2 BPE/2 RPM%' THEN '1 PEL GER/1 CIA GER/2 BPE/2 RPM'
        WHEN G.unidade_registro LIKE '%2 PEL GER/1 CIA GER/2 BPE/2 RPM%' THEN '2 PEL GER/1 CIA GER/2 BPE/2 RPM'
        WHEN G.unidade_registro LIKE '%3 PEL GER/1 CIA GER/2 BPE/2 RPM%' THEN '3 PEL GER/1 CIA GER/2 BPE/2 RPM'
        WHEN G.unidade_registro LIKE '%4 PEL GER/1 CIA GER/2 BPE/2 RPM%' THEN '4 PEL GER/1 CIA GER/2 BPE/2 RPM'
        WHEN G.unidade_registro LIKE '%5 PEL GER/1 CIA GER/2 BPE/2 RPM%' THEN '5 PEL GER/1 CIA GER/2 BPE/2 RPM'
        WHEN G.unidade_registro LIKE '%1 PEL PCHQ/2 CIA PCHQ/2 BPE/2 RPM%' THEN '1 PEL PCHQ/2 CIA PCHQ/2 BPE/2 RPM'
        WHEN G.unidade_registro LIKE '%2 PEL PCHQ/2 CIA PCHQ/2 BPE/2 RPM%' THEN '2 PEL PCHQ/2 CIA PCHQ/2 BPE/2 RPM'
        WHEN G.unidade_registro LIKE '%3 PEL PCHQ/2 CIA PCHQ/2 BPE/2 RPM%' THEN '3 PEL PCHQ/2 CIA PCHQ/2 BPE/2 RPM'
        WHEN G.unidade_registro LIKE '%PEL PCAES/2 CIA PCHQ/2 BPE/2 RPM%' THEN 'PEL PCAES/2 CIA PCHQ/2 BPE/2 RPM'
        ELSE 'OUTROS'
    END AS unidade_registro,
    COALESCE(G.matriculas_militares, 'SEM MILITARES') AS matriculas_militares,
    OCO.natureza_codigo,
    OCO.natureza_descricao,
    OCO.codigo_tipo_ocorrencia,
    OCO.nome_tipo_relatorio,
    OCO.ind_tco,
    OCO.nome_municipio,
    COALESCE(QP.total_presos, 0) AS total_presos,
    COALESCE(QP.quantidade_presos_roubo, 0) AS presos_roubo,
    COALESCE(QP.quantidade_presos_homicidio, 0) AS presos_homicidio,
    COALESCE(QP.quantidade_presos_mandado, 0) AS presos_mandado,
    COALESCE(QP.quantidade_presos_tco, 0) AS presos_tco,
    COALESCE(QP.quantidade_presos_menor, 0) AS presos_menor
FROM db_bisp_reds_reporting.tb_ocorrencia OCO
LEFT JOIN GUARNICAO G ON OCO.numero_ocorrencia = G.numero_ocorrencia
LEFT JOIN QTDE_PRESOS QP ON OCO.numero_ocorrencia = QP.numero_ocorrencia
LEFT JOIN LETALIDADE LET ON OCO.numero_ocorrencia = LET.numero_ocorrencia
WHERE
    YEAR(OCO.data_hora_fato) = 2025
    AND OCO.digitador_id_orgao = 0
    AND (OCO.unidade_responsavel_registro_nome LIKE '%2 BPE/2 RPM%' OR OCO.unidade_responsavel_registro_nome LIKE '%2 BPE/2RPM%')
    AND LET.numero_ocorrencia IS NULL
ORDER BY
    OCO.numero_ocorrencia;
    
--- SCRIPT DROGAS
    SELECT 
        MAO.numero_ocorrencia, 
        MAO.tipo_objeto_codigo, 
        MAO.tipo_objeto_descricao, 
        MAO.quantidade_material
    FROM db_bisp_reds_reporting.tb_ocorrencia AS OCO
    INNER JOIN db_bisp_reds_reporting.tb_material_apreendido_ocorrencia AS MAO
        ON OCO.numero_ocorrencia = MAO.numero_ocorrencia
    WHERE 1 = 1
        AND YEAR(MAO.data_hora_fato) = 2025
        AND MAO.digitador_id_orgao = 0 
        AND (MAO.unidade_responsavel_registro_nome LIKE  '%2 BPE/2 RPM%' OR MAO.unidade_responsavel_registro_nome LIKE '%2 BPE/2RPM%')
        AND MAO.tipo_objeto_codigo IN(
            '5800', '5599','5999','5699','5301','5503','5104','5399','5103','5102',
            '5299','5603','5202','5605','5201','5499','5604','5601','5602','5302',
            '5704','5101','5504','5199','5708',
            '2020', -- adicionado o simulacro 2020
            '2061','2054','2055','2005' -- municoes
        ); 
        
        
--- SCRIPT ARMAS
	SELECT 
		AFO.numero_ocorrencia,											-- número ocorrência
		AFO.numero_arma,  												-- NÚMERO DE IDENTIFICAÇÃO DA ARMA
   		AFO.marca_arma_descricao,  										-- DESCRIÇÃO DA MARCA DA ARMA
  		AFO.marca_arma_codigo,
  		AFO.tipo_arma_codigo,  											-- CÓDIGO DO TIPO DE ARMA
  		AFO.tipo_arma_descricao  										-- DESCRIÇÃO DO TIPO DE ARMA
    FROM db_bisp_reds_reporting.tb_arma_ocorrencia AS AFO					-- TABELA DE ARMAS
    WHERE 1 = 1
        AND YEAR(AFO.data_hora_fato) = 2025
        AND AFO.situacao_codigo  IN ('0100', '0700')  					-- FILTRA ARMAS QUE FORAM APREENDIDAS OU RECUPERADAS
        AND AFO.digitador_id_orgao = 0 
        AND (AFO.unidade_responsavel_registro_nome LIKE  '%2 BPE/2 RPM%' OR AFO.unidade_responsavel_registro_nome LIKE  '%2 BPE/2RPM%')
 		AND AFO.tipo_arma_descricao NOT LIKE '%PRESSAO%' 				-- TIRAR ARMAS DE PRESSÃO
 		AND AFO.marca_arma_codigo NOT IN ('0400')						-- TIRAR ARMAS QUE ESTÃO CATEGORIZADAS COMO FABRICAÇÃO ARTESANAL
 		AND not (AFO.marca_arma_codigo IN ('9900') AND (
 														UPPER (AFO.informacao_complementar) like '%FABRICA__O ARTESANAL%' OR 
 														UPPER (AFO.informacao_complementar) like '%FABRICA__O CASEIRA%')
 														);	-- TIRAR ARMAS NO CAMPO OUTRAS MARCAS QUE A INFORMAÇÃO COMPLEMENTAR CONTEM OS TERMOS REFERENTES A FABRICAÇÃO ARTESANAL
--- SCRIPT INFRAÇÃO
    SELECT 
		INF.numero_ocorrencia,											
		INF.numero_veiculo,  										
   		INF.id_infracao,  									
  		UPPER(INF.numero_documento_infracao) AS num_doc_infracao ,
  		INF.unidade_responsavel_registro_nome,
  		INF.codigo  
    FROM db_bisp_reds_reporting.tb_infracao_ocorrencia AS INF			-- TABELA DE INFRAÇÕES
    WHERE 1 = 1
        AND YEAR(INF.data_hora_fato) = 2025
        AND (INF.unidade_responsavel_registro_nome LIKE  '%2 BPE/2 RPM%' OR INF.unidade_responsavel_registro_nome LIKE  '%2 BPE/2RPM%');
        
--- SCRIPT VEÍCULOS
    SELECT 
		VEI.numero_ocorrencia,																					
		VEI.situacao_placa_codigo,									
  		VEI.situacao_placa_descricao  
    FROM db_bisp_reds_reporting.tb_veiculo_ocorrencia AS VEI			-- TABELA DE VEÍCULOS
    WHERE 1 = 1
        AND YEAR(VEI.data_hora_fato) = 2025
        AND VEI.situacao_placa_codigo IN ('0600', '0900', '0902', '0400', '0500', '0100')  
        AND (VEI.unidade_responsavel_registro_nome LIKE  '%2 BPE/2 RPM%' OR VEI.unidade_responsavel_registro_nome LIKE  '%2 BPE/2RPM%');