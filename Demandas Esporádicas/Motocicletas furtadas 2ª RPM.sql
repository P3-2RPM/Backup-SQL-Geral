SELECT
    OCO.numero_ocorrencia, -- NÚMERO DA OCORRÊNCIA
    OCO.natureza_descricao, -- DESCRIÇÃO DA NATUREZA DA OCORRÊNCIA
    OCO.logradouro_nome,
    OCO.nome_bairro,
    OCO.nome_municipio, -- NOME DO MUNICÍPIO
    YEAR (OCO.data_hora_fato ) as Ano,
	MONTH (OCO.data_hora_fato ) as Mes,
	DAY (OCO.data_hora_fato ) as Dia,
	CAST (OCO.data_hora_fato AS DATE) as data_fato,
    VEI.tipo_veiculo_descricao, -- DESCRIÇÃO DO TIPO DE VEÍCULO ENVOLVIDO
    VEI.situacao_placa_descricao, 
    VEI.marca_modelo_descricao
-- TABELAS UTILIZADAS PARA A CONSULTA COM AS DEVIDAS JUNÇÕES
FROM db_bisp_reds_reporting.tb_ocorrencia OCO
INNER JOIN db_bisp_reds_reporting.tb_veiculo_ocorrencia VEI 
    ON VEI.numero_ocorrencia = OCO.numero_ocorrencia -- JUNÇÃO PARA ASSOCIAR VEÍCULOS ÀS OCORRÊNCIAS
-- CONDIÇÕES ESPECÍFICAS PARA FILTRAR OS DADOS DE OCORRÊNCIAS
WHERE 1=1 -- OCORRÊNCIAS ENTRE OS ANOS DE 2023 E 2024
    AND OCO.relator_sigla_orgao IN ('PM','PC') -- OCORRÊNCIAS RELATADAS PELA POLÍCIA MILITAR
    AND OCO.ocorrencia_uf = 'MG' -- OCORRÊNCIAS NO ESTADO DE MINAS GERAIS
    AND OCO.natureza_codigo IN('C01155') -- CÓDIGOS ESPECÍFICOS DE NATUREZA DA OCORRÊNCIA
    AND VEI.tipo_veiculo_codigo = '1800' -- CÓDIGO ESPECÍFICO DO TIPO DE VEÍCULO 
	AND VEI.situacao_placa_codigo = '0300'
    AND YEAR(OCO.data_hora_fato) = :ANO
--	AND MONTH (OCO.data_hora_fato) >= :MESINICIAL
--  AND MONTH (OCO.data_hora_fato) <= :MESFINAL
-- ORDENAMENTO DOS RESULTADOS
    and OCO.codigo_municipio IN (310670 , 310810 , 310900 , 311860 , 312060 , 312410 , 312600 , 312980 , 313010 , 313220 , 313665 , 314015 , 314070 , 315040 , 315460 , 315530 , 316292 , 316553)
ORDER BY 7;

