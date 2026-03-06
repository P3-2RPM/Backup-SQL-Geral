/*-------------------------------------------------------------------------------------------------
 * Este script SQL tem como objetivo selecionar e filtrar dados específicos de ocorrências de
 *  apreensão de materiais relacionados a drogas.
 -------------------------------------------------------------------------------------------------*/
SELECT MAO.numero_ocorrencia, -- Seleciona o número da ocorrêmcoa
MAO.tipo_objeto_codigo, -- Seleciona o código do tipo do objeto
FROM_TIMESTAMP(MAO.data_hora_fato, 'dd/MM/yy') as data_fato, 
oco.responsavel_apreensao_matricula, 
oco.digitador_matricula,
case when mao.data_hora_fato between '2025-02-28 00:00:00' AND '2025-02-28 23:59:59' then 'DIA 1'
WHEN mao.data_hora_fato between '2025-03-01 00:00:00' AND '2025-03-01 23:59:59' then 'DIA 2'
WHEN mao.data_hora_fato between '2025-03-02 00:00:00' AND '2025-03-02 23:59:59' then 'DIA 3'
WHEN mao.data_hora_fato between '2025-03-03 00:00:00' AND '2025-03-03 23:59:59' then 'DIA 4'
WHEN mao.data_hora_fato between '2025-03-04 00:00:00' AND '2025-03-04 23:59:59' then 'DIA 5'
WHEN mao.data_hora_fato between '2025-03-05 00:00:00' AND '2025-03-05 23:59:59' then 'DIA 6'
ELSE 'OUTROS'
END AS 'DIA DE CARNAVAL',
case WHEN MAO.unidade_responsavel_registro_nome like '% TM%' then 'TM'
	ELSE 'OUTROS' 
	END AS TM_CARNAVAL,
CASE WHEN MAO.unidade_responsavel_registro_nome like '%25 CIA TM/18 BPM/2 RPM%' then '25 CIA TM/18 BPM'
WHEN MAO.unidade_responsavel_registro_nome like '%121 CIA TM/33 BPM/2 RPM%' then '121 CIA TM/33 BPM'
WHEN MAO.unidade_responsavel_registro_nome like '%84 CIA TM/39 BPM/2 RPM%' then '84 CIA TM/39 BPM'
WHEN MAO.unidade_responsavel_registro_nome like '%201 CIA TM/40 BPM/2 RPM%' then '201 CIA TM/40 BPM'
WHEN MAO.unidade_responsavel_registro_nome like '%296 CIA TM/66 BPM/2 RPM%' then '296 CIA TM/66 BPM'
END AS 'TM_RESUMIDA',
CASE WHEN MAO.unidade_responsavel_registro_nome like '%25 CIA TM/18 BPM/2 RPM%' then '18 BPM'
WHEN MAO.unidade_responsavel_registro_nome like '%121 CIA TM/33 BPM/2 RPM%' then '33 BPM'
WHEN MAO.unidade_responsavel_registro_nome like '%84 CIA TM/39 BPM/2 RPM%' then '39 BPM'
WHEN MAO.unidade_responsavel_registro_nome like '%201 CIA TM/40 BPM/2 RPM%' then '40 BPM'
WHEN MAO.unidade_responsavel_registro_nome like '%296 CIA TM/66 BPM/2 RPM%' then '66 BPM'
END AS 'TM_ORDEM',
MAO.tipo_objeto_descricao, -- Seleciona a descrição do tipo do objeto
MAO.quantidade_material, -- Seleciona a quantidade de material apreendido
MAO.unidade_medida_descricao,  -- Seleciona a descrição da unidade de medida
MAO.situacao_descricao, -- Seleciona a descrição da situação do material
MAO.unidade_responsavel_registro_nome -- Seleciona a unidade responsável pelo registro
FROM db_bisp_reds_reporting.tb_ocorrencia AS OCO                    -- Tabela principal de ocorrências
INNER JOIN db_bisp_reds_reporting.tb_material_apreendido_ocorrencia AS MAO    -- Join com a tabela de materiais
    ON OCO.numero_ocorrencia = MAO.numero_ocorrencia                -- Relaciona ocorrências com seus envolvidos
WHERE YEAR(MAO.data_hora_fato) = 2025 --Filtra ano da data/hora do fato
AND MAO.data_hora_fato BETWEEN '2025-02-28 00:00:00' AND '2025-03-05 23:59:59' -- Filtra intervalo específico
AND MAO.digitador_id_orgao = 0 -- Filtra ID do orgão digitador, PM
AND MAO.unidade_responsavel_registro_nome LIKE '%/2 RPM%' -- Filtra a unidade responsável pelo registro
AND MAO.tipo_objeto_codigo IN('5800', '5599','5999','5699','5301','5503','5104','5399','5103','5102','5299','5603','5202','5605','5201','5499','5604','5601','5602','5302','5704','5101','5504','5199','5708') 
-- Filtra códigos relacionados a droga, são elas: MERLA, OUTROS - INALAVEIS, OUTROS - OPIACEOS, OUTROS - MACONHA
--HAXIXE EM BOLA, LANCA-PERFUME, PINO DE COCAINA, OUTROS - HAXIXE, COCAINA EM PO, PASTA DE COCAINA, OUTROS - CRACK
--PLANTACAO (PE) DE MACONHA, CRACK EM QUILOGRAMAS, SEMENTE DE MACONHA, CRACK EM PEDRAS, OUTROS - LSD
--MACONHA PRENSADA (BARRA / TABLETE), BUCHA DE MACONHA, CIGARRO DE MACONHA, HAXIXE EM TABLETE (QUILOGRAMA)
--ECSTASY / MDMA, PAPELOTES DE COCAINA, LOLO, OUTROS - COCAINA, DROGAS K
;