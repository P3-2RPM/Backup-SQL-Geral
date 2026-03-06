WITH 
GUARNICAO AS (
    SELECT 
        IGO.numero_ocorrencia,
        GROUP_CONCAT(DISTINCT IGO.numero_matricula, ', ') AS matriculas_militares
    FROM db_bisp_reds_reporting.tb_integrante_guarnicao_ocorrencia IGO
    WHERE YEAR (IGO.data_hora_fato) = :ANO
    AND (IGO.unidade_servico_nome LIKE  '%/2 RPM%'	or 	IGO.unidade_servico_nome LIKE  '%/2RPM%')
    GROUP BY IGO.numero_ocorrencia
),
PRESOS AS (
    SELECT 
        ENV.numero_ocorrencia,
        COUNT(DISTINCT ENV.numero_envolvido) AS quantidade_presos
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    INNER JOIN db_bisp_reds_reporting.tb_ocorrencia OCO 
        ON OCO.numero_ocorrencia = ENV.numero_ocorrencia
    WHERE 1 = 1 
        AND YEAR (ENV.data_hora_fato) = :ANO
        AND ENV.digitador_id_orgao = 0
        AND ENV.id_envolvimento IN (35,36,44) 
        AND ENV.id_tipo_prisao_apreensao IN (1,2,3,4,6,7) 
        AND (OCO.unidade_responsavel_registro_nome LIKE  '%/2 RPM%' OR OCO.unidade_responsavel_registro_nome LIKE  '%/2RPM%')
    GROUP BY ENV.numero_ocorrencia
),
/*MANDADOS AS (
    SELECT 
        ENV.numero_ocorrencia,
        COUNT(DISTINCT ENV.numero_envolvido) AS quantidade_presos_mandado
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    INNER JOIN db_bisp_reds_reporting.tb_ocorrencia OCO 
        ON OCO.numero_ocorrencia = ENV.numero_ocorrencia
    WHERE 1 = 1 
        AND YEAR (ENV.data_hora_fato) = :ANO
        AND ENV.digitador_id_orgao = 0
        AND ENV.id_tipo_prisao_apreensao IN (1,2,3,4,5,6,7) 
        AND ENV.ind_mandado_prisao = 'S'
        AND OCO.unidade_responsavel_registro_nome LIKE  '%/2 RPM%'
    GROUP BY ENV.numero_ocorrencia
),*/
ARMAS AS (
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
        AND (AFO.unidade_responsavel_registro_nome LIKE  '%/2 RPM%' OR AFO.unidade_responsavel_registro_nome LIKE  '%/2RPM%')
 		AND AFO.tipo_arma_descricao NOT LIKE '%PRESSAO%' 				-- TIRAR ARMAS DE PRESSÃO
 		AND AFO.marca_arma_codigo NOT IN ('0400')						-- TIRAR ARMAS QUE ESTÃO CATEGORIZADAS COMO FABRICAÇÃO ARTESANAL
 		AND not (AFO.marca_arma_codigo IN ('9900') AND (
 														UPPER (AFO.informacao_complementar) like '%FABRICA__O ARTESANAL%' OR 
 														UPPER (AFO.informacao_complementar) like '%FABRICA__O CASEIRA%')
 														)	-- TIRAR ARMAS NO CAMPO OUTRAS MARCAS QUE A INFORMAÇÃO COMPLEMENTAR CONTEM OS TERMOS REFERENTES A FABRICAÇÃO ARTESANAL
)
SELECT 
    OCO.numero_ocorrencia,
    FROM_TIMESTAMP(OCO.data_hora_fato, 'dd/MM/yy') AS data_fato,
    MONTH (OCO.data_hora_fato) as mes_fato,
    OCO.unidade_responsavel_registro_nome,
    CASE WHEN OCO.unidade_responsavel_registro_nome LIKE  '%TM/%' THEN 'SIM'
    END TM,
    COALESCE(G.matriculas_militares, 'SEM MILITARES') AS matriculas_militares,
    AFO.tipo_arma_codigo AS arma_codigo,
   	AFO.tipo_arma_descricao AS arma_descricao,
--   	AFO.marca_arma_codigo as codigo_marca_arma,  										-- DESCRIÇÃO DA MARCA DA ARMA
    AFO.marca_arma_descricao AS marca_arma,
    1 as qtde,
    COALESCE(P.quantidade_presos, 0) AS quantidade_presos    
FROM db_bisp_reds_reporting.tb_ocorrencia OCO
LEFT JOIN GUARNICAO G ON OCO.numero_ocorrencia = G.numero_ocorrencia
LEFT JOIN PRESOS P ON OCO.numero_ocorrencia = P.numero_ocorrencia
LEFT JOIN ARMAS AFO ON OCO.numero_ocorrencia = AFO.numero_ocorrencia
WHERE 1=1
    AND YEAR (OCO.data_hora_fato) = :ANO 
    AND OCO.digitador_id_orgao = 0 
    AND (OCO.unidade_responsavel_registro_nome LIKE  '%/2 RPM%' OR OCO.unidade_responsavel_registro_nome LIKE  '%/2RPM%')
    AND AFO.numero_ocorrencia IS NOT NULL
ORDER BY OCO.numero_ocorrencia