SELECT 
veic.situacao_placa_codigo,
veic.numero_placa,
veic.situacao_placa_descricao 
FROM 
  db_bisp_reds_reporting.vw_veiculo_ocorrencia_s  veic 
WHERE 1=1
  AND veic.numero_ocorrencia = '2025-038805100-001'
