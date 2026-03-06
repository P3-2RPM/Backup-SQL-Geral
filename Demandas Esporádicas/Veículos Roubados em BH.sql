SELECT 
oco.numero_ocorrencia,
oco.natureza_codigo,
oco.natureza_descricao,
year(oco.data_hora_fato) ano_fato, 
month (oco.data_hora_fato) mes_fato, 
FROM_TIMESTAMP(oco.data_hora_fato, 'dd/MM/yy') AS data_fato,
veic.numero_placa,
veic.situacao_placa_codigo,
veic.situacao_placa_descricao,
oco.numero_latitude,
oco.numero_longitude,
geo.latitude_sirgas2000,				
geo.longitude_sirgas2000,
oco.logradouro_nome,
oco.nome_bairro,
oco.nome_municipio,
COALESCE(MUB.udi, 'SEM INFORMAÇÃO') AS udi,
COALESCE(MUB.ueop, 'SEM INFORMAÇÃO') AS ueop,
COALESCE(MUB.cia, 'SEM INFORMAÇÃO') AS cia,
COALESCE(MUB.codigo_espacial_pm, 'SEM INFORMAÇÃO') AS codigo_espacial_pm
FROM 
 db_bisp_reds_reporting.tb_ocorrencia oco 
INNER JOIN 
  db_bisp_reds_reporting.tb_veiculo_ocorrencia veic ON oco.numero_ocorrencia = veic.numero_ocorrencia  -- Junçãocom a tabela de Veículos (veic) onde o número da ocorrência é correspondente
LEFT JOIN db_bisp_reds_master.tb_ocorrencia_setores_geodata AS geo ON oco.numero_ocorrencia = geo.numero_ocorrencia 	-- Tabela de apoio que compara as lat/long com os setores IBGE		
LEFT JOIN db_bisp_shared.tb_ibge_setores_geodata AS ibge ON geo.setor_codigo = ibge.setor_codigo  -- Join esquerdo com tabela de dados IBGE enriquecidos 
LEFT JOIN db_bisp_shared.tb_pmmg_setores_geodata AS MUB  ON geo.setor_codigo = MUB.setor_codigo -- Join esquerdo com tabela MUB 
WHERE 
  YEAR(oco.data_hora_fato) >= 2025 
  AND oco.digitador_id_orgao = 0 
  AND oco.ocorrencia_uf = 'MG'
  AND oco.codigo_municipio IN (310620) 
  AND veic.situacao_placa_codigo IN ('1000','0300') -- ROUBADO E FURTADO
