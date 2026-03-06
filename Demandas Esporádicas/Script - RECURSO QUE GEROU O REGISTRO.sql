SELECT 
OCO.numero_ocorrencia,
OCO.natureza_codigo,
OCO.natureza_descricao,
VO.placa,
VO.tipo,
VO.descricao_tipo_viatura,
OCO.unidade_responsavel_registro_nome,
FROM_TIMESTAMP(OCO.data_hora_fato,'dd/MM/yy') as 'data_fato',
FROM_TIMESTAMP(OCO.data_hora_fato,'HH:mm') as 'hora_fato',
VO.orgao_sigla
FROM tb_ocorrencia OCO
LEFT JOIN tb_viatura_ocorrencia VO on OCO.numero_ocorrencia = VO.numero_ocorrencia -- RETORNA OCORRENCIAS MESMO QUE NÃO TENHAM RECURSO RELACIONADO
WHERE YEAR(OCO.data_hora_fato) = :ANO
---- AS PRÓXIMAS LINHAS SÃO FILTROS POR REGIÃO E UNIDADE -----
--AND OCO.unidade_responsavel_registro_nome LIKE '%2 RPM%' -- FILTRA RPM
--AND OCO.unidade_responsavel_registro_nome LIKE '%66 BPM%' -- FILTRA UEOP
AND OCO.unidade_responsavel_registro_nome LIKE '%66 BPM/2 RPM'-- CASO DESEJE VER APENAS POR RPM, SÓ COLOCOCAR O VALOR EM %, CASO QUEIRA DETALHAR O FILTRO, PREFERENCIALMENTE, SEGUIR O PADRÃO DE COMO É ESCRITO NO CAMPO -INCLUINDO ONDE HÁ ESPAÇO- 
AND OCO.ind_estado = 'F'
AND OCO.ocorrencia_uf = 'MG'
AND OCO.digitador_sigla_orgao = 'PM'
--PRÓXIMA LINHA É DO FILTRO DE GRUPO / CLASSE -----
AND SUBSTRING (OCO.natureza_codigo,1,3) = 'A19'
