SELECT  
OCO.numero_ocorrencia, -- Seleciona o número da ocorrêmcoa
FROM_TIMESTAMP(OCO.data_hora_fato, 'dd/MM/yy') as data_fato, 
oco.responsavel_apreensao_matricula, 
oco.digitador_matricula,
CASE WHEN OCO.unidade_responsavel_registro_nome like '% TM%' then 'TM'
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
VEI.situacao_placa_codigo,
VEI.situacao_placa_descricao,
VEI.tipo_veiculo_descricao,
VEI.ind_sinalizacao_roubo_furto,
VEI.ind_roubo_furto,
1 as contador
FROM db_bisp_reds_reporting.tb_ocorrencia AS OCO                    -- Tabela principal de ocorrências
INNER JOIN  db_bisp_reds_reporting.tb_veiculo_ocorrencia AS VEI    -- Join com a tabela de materiais
    ON OCO.numero_ocorrencia = VEI.numero_ocorrencia                -- Relaciona ocorrências com seus envolvidos
WHERE YEAR(OCO.data_hora_fato) = 2025 --Filtra ano da data/hora do fato
AND OCO.data_hora_fato BETWEEN '2025-02-28 00:00:00' AND '2025-03-05 23:59:59' -- Filtra intervalo específico
AND OCO.digitador_id_orgao = 0 -- Filtra ID do orgão digitador, PM
--AND VEI.situacao_placa_codigo IN (0500, 0100) -- Código para removido, apreendido
AND OCO.unidade_responsavel_registro_nome LIKE '%/2 RPM%' -- Filtra a unidade responsável pelo registro
AND OCO.codigo_municipio IN (310670 , 310810 , 310900 , 311860 , 312060 , 312410 , 312600 , 312980 , 313010 , 313220 , 313665 , 314015 , 314070 , 315040 , 315460 , 315530 , 316292 , 316553) 
;