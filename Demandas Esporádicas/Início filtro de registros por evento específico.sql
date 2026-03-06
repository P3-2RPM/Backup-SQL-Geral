/*---------------------------------------------------------------------------------------------------------------------------------------
 * Este script realiza a extração de ocorrências policiais registradas pela PM  com base em critérios específicos como período e 
 * localização (Minas Gerais).
 * A consulta inclui dados integrados do sistema CAD, trazendo o número da chamada, evento relacionado e informações georreferenciadas 
 * enriquecidas com dados do IBGE e MUB.
 * Classifica as ocorrências por RPM e UEOP e permite análise detalhada do contexto e distribuição das ocorrências no território estadual.
------------------------------------------------------------------------------------------------------------------------------------ */
SELECT distinct 
OCO.numero_ocorrencia, -- Seleciona o número da ocorrência
case when EV.id_evento = 2768 then 1
end as "agro_gerais_segura",
case when EV.id_evento = 2205 then 1
end as "viol_dom"
FROM db_bisp_reds_reporting.tb_ocorrencia  OCO
INNER JOIN  db_bisp_cad_reporting.vw_chamada_evento  EV ON OCO.numero_chamada_cad  = EV.numero_chamada
WHERE
    OCO.digitador_id_orgao = 0 AND
    OCO.ind_estado = 'F' AND
    OCO.ocorrencia_uf = 'MG' AND
    YEAR(OCO.data_hora_fato) = 2025 AND
    (OCO.unidade_responsavel_registro_nome LIKE '%/2 RPM' OR OCO.unidade_responsavel_registro_nome LIKE '%/2RPM' OR OCO.unidade_responsavel_registro_nome LIKE '%/2 CIA PM IND PVD%')
ORDER BY OCO.numero_ocorrencia 