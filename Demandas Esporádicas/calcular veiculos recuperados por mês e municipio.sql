/*----------------------------------------------------------------------------------------------------------------------------------------- 
*Este script SQL foi desenvolvido para geração de relatório que quantifica os veículos apreendidos nos municípios da  
*no estado de Minas Gerais entre os anos de 2019 e 2023.  
-----------------------------------------------------------------------------------------------------------------------------------------*/ 
SELECT  
  oco.nome_municipio,  -- Seleciona o nome do município da tabela de ocorrências (oco) 
  YEAR(oco.data_hora_fato) AS ano_fato,  -- Extrai o ano da data do fato e o renomeia como 'ano_fato' 
  MONTH(oco.data_hora_fato) AS mes_fato, 
  COUNT(CASE WHEN veic.situacao_placa_codigo = '0400' THEN veic.numero_veiculo END) AS [Veiculos recuperados] -- Conta o número de veículos apreendidos onde a situação da placa é '0400' 
FROM  
  db_bisp_reds_reporting.tb_ocorrencia oco  
INNER JOIN  
  db_bisp_reds_reporting.tb_veiculo_ocorrencia veic 
  ON oco.numero_ocorrencia = veic.numero_ocorrencia  -- Junção com a tabela de Veículos (veic) onde o número da ocorrência é correspondente 
WHERE  
  YEAR(oco.data_hora_fato) > 2023  -- Filtra ocorrências após o ano de 2023 
  AND oco.digitador_id_orgao = 0  -- Filtra ID do órgão digitador, PM 
  AND oco.ocorrencia_uf = 'MG'  -- Filtra ocorrências no UF, Minas Gerais  
  AND oco.codigo_municipio IN (
    310670, 310810, 310900, 311860, 312060, 312410, 312600, 312980, 
    313010, 313220, 313665, 314015, 314070, 315040, 315460, 315530, 
    316292, 316553
  ) 
GROUP BY  
  oco.nome_municipio, 
  YEAR(oco.data_hora_fato), 
  MONTH(oco.data_hora_fato) 
ORDER BY 
  oco.nome_municipio;