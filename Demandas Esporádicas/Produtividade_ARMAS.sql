/*﻿--------------------------------------------------------------------------------------------------------------------------
 * Este codigo SQL foi desenvolvido para fornecer uma analise detalhada das armas apreendidas ou recuperadas em 
 * ocorrencias policiais registradas pela Policia Militar de Minas Gerais entre os anos de 2018 e 2022, excluindo 
 * policiais militares em serviço. A consulta é util para rastrear a quantidade e o tipo de armas envolvidas 
 * em crimes ao longo do tempo, permitindo às autoridades policiais avaliar a eficacia das iniciativas de controle de armas 
 * e planejar estratégias futuras de prevenção e repressão ao crime.
 * --------------------------------------------------------------------------------------------------------------------------*/
SELECT 
  YEAR(OCO.data_hora_fato) AS ANO,  -- EXTRAI O ANO DA DATA DO FATO
  AFO.numero_arma,  -- NÚMERO DE IDENTIFICAÇÃO DA ARMA
  AFO.numero_serie,  -- NÚMERO DE SÉRIE DA ARMA
  AFO.calibre_arma_codigo,  -- CÓDIGO DO CALIBRE DA ARMA
  AFO.tipo_arma_descricao,  -- DESCRIÇÃO DO TIPO DE ARMA
  OCO.numero_ocorrencia,  -- NÚMERO DA OCORRÊNCIA POLICIAL
  OCO.relator_sigla_orgao,  -- SIGLA DO ÓRGÃO RELATOR (PM, PC, ETC.)
  OCO.descricao_estado,  -- ESTADO DA OCORRÊNCIA (FECHADO, ABERTO, ETC.)
  OCO.nome_municipio,  -- NOME DO MUNICÍPIO ONDE OCORREU O FATO
FROM_TIMESTAMP(OCO.data_hora_fato, 'dd/MM/yy') as data_fato, 
oco.responsavel_apreensao_matricula, 
oco.digitador_matricula,
case WHEN OCO.unidade_responsavel_registro_nome like '% TM%' then 'TM'
	ELSE 'OUTROS' 
	END AS TM_CARNAVAL,
CASE WHEN OCO.unidade_responsavel_registro_nome like '%25 CIA TM/18 BPM/2 RPM%' then '25 CIA TM/18 BPM'
WHEN OCO.unidade_responsavel_registro_nome like '%121 CIA TM/33 BPM/2 RPM%' then '121 CIA TM/33 BPM'
WHEN OCO.unidade_responsavel_registro_nome like '%84 CIA TM/39 BPM/2 RPM%' then '84 CIA TM/39 BPM'
WHEN OCO.unidade_responsavel_registro_nome like '%201 CIA TM/40 BPM/2 RPM%' then '201 CIA TM/40 BPM'
WHEN OCO.unidade_responsavel_registro_nome like '%296 CIA TM/66 BPM/2 RPM%' then '296 CIA TM/66 BPM'
END AS 'TM_RESUMIDA',
CASE WHEN OCO.unidade_responsavel_registro_nome like '%25 CIA TM/18 BPM/2 RPM%' then '18 BPM'
WHEN OCO.unidade_responsavel_registro_nome like '%121 CIA TM/33 BPM/2 RPM%' then '33 BPM'
WHEN OCO.unidade_responsavel_registro_nome like '%84 CIA TM/39 BPM/2 RPM%' then '39 BPM'
WHEN OCO.unidade_responsavel_registro_nome like '%201 CIA TM/40 BPM/2 RPM%' then '40 BPM'
WHEN OCO.unidade_responsavel_registro_nome like '%296 CIA TM/66 BPM/2 RPM%' then '66 BPM'
END AS 'TM_ORDEM',
1 AS CONTADOR
-- FONTES DOS DADOS
FROM db_bisp_reds_reporting.tb_arma_ocorrencia AFO
INNER JOIN db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV ON ENV.numero_ocorrencia = AFO.numero_ocorrencia AND ENV.numero_envolvido = AFO.numero_envolvido 
INNER JOIN db_bisp_reds_reporting.tb_ocorrencia OCO ON OCO.numero_ocorrencia = ENV.numero_ocorrencia
WHERE 
    OCO.data_hora_fato BETWEEN '2025-02-28 00:00:00'  AND '2025-03-06 00:00:00'-- FILTRA INTERVALO TEMPORAL DAS OCORRÊNCIAS
    AND AFO.situacao_descricao IN ('APREENDIDO', 'RECUPERADO')  -- FILTRA ARMAS QUE FORAM APREENDIDAS OU RECUPERADAS
    AND AFO.tipo_arma_descricao NOT IN
    ( 
		'ARMA DE PRESSAO IGUAL FZ 7,62MM', 
		'ARMAS DE PRESSAO ACIMA DE 6MM',
		'ARMAS DE PRESSAO IGUAL OU INFERIOR A 6MM', 
		'NAO INFORMADO' 
	 ) -- EXCLUI TIPOS DE ARMAS QUE NÃO SÃO RELEVANTES PARA A ANÁLISE
    AND OCO.digitador_sigla_orgao = 'PM'  -- FILTRA OCORRÊNCIAS REGISTRADAS PELA POLÍCIA MILITAR
    AND OCO.ocorrencia_uf = 'MG'  -- FILTRA OCORRÊNCIAS NO ESTADO DE MINAS GERAIS
    AND OCO.ind_estado = 'F'  -- FILTRA SOMENTE OCORRÊNCIAS QUE ESTÃO FECHADAS
	AND ENV.ind_militar_policial IS  DISTINCT FROM 'M'    -- FILTRA VALORES DISTINDO DE 'M', POLICIAL MILITAR.
  	AND ENV.ind_militar_policial_servico IS  DISTINCT FROM 'S'  -- FILTRA VALORES DISTINDOS A 'S', POLICIAL MILITAR EM SERVIÇO. 
 	AND OCO.codigo_municipio IN (310670 , 310810 , 310900 , 311860 , 312060 , 312410 , 312600 , 312980 , 313010 , 313220 , 313665 , 314015 , 314070 , 315040 , 315460 , 315530 , 316292 , 316553)
 ORDER BY ANO DESC, nome_municipio;