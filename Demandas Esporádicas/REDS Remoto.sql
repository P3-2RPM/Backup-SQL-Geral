/*---------------------------------------------------------------------------------------------------------------------------------------
 * Este script realiza a extração de ocorrências policiais registradas pela PM  com base em critérios específicos como período e 
 * localização (Minas Gerais).
 * A consulta inclui dados integrados do sistema CAD, trazendo o número da chamada, evento relacionado e informações georreferenciadas 
 * enriquecidas com dados do IBGE e MUB.
 * Classifica as ocorrências por RPM e UEOP e permite análise detalhada do contexto e distribuição das ocorrências no território estadual.
------------------------------------------------------------------------------------------------------------------------------------ */
SELECT distinct 
OCO.numero_ocorrencia, -- Seleciona o número da ocorrência
OCO.digitador_cargo_efetivo,
OCO.digitador_nome,
OCO.digitador_matricula,
OCO.nome_tipo_relatorio,
EV.id_evento, -- Seleciona o identificado único do evento
EV.descricao_evento, -- Seleciona a decrição do evento
EV.numero_chamada, -- Seleciona o número da chamada no CAD
OCO.data_hora_fato, -- Seleciona a data/hora do fato
FROM_TIMESTAMP(OCO.data_hora_fato,'dd/MM/yy') as 'data_fato', -- DATA DO FATO (ESTA LINHA SEGMENTA O CAMPO DATA HORA DO FATO, EXTRAINDO APENAS A DATA)
FROM_TIMESTAMP(OCO.data_hora_fato,'HH:mm') as 'hora_fato', -- HORA DO FATO (ESTA LINHA SEGMENTA O CAMPO DATA HORA DO FATO, EXTRAINDO APENAS A HORA)
OCO.data_hora_fim_preenchimento,
FROM_TIMESTAMP(OCO.data_hora_fim_preenchimento,'dd/MM/yy') as 'data_registro',
OCO.natureza_codigo, -- Selciona o código da natureza da ocorrência
OCO.natureza_descricao, -- Selciona a descrição da natureza da ocorrência	
	 ibge.tipo_descricao,                              -- Informações adicionais do IBGE 
	  OCO.unidade_area_militar_nome,                    -- Nome da unidade da área militar 
	  MUB.udi,                                          
	  MUB.ueop,                                         
	  MUB.cia,                                          
	  MUB.codigo_espacial_pm AS setor_PM,  
OCO.unidade_responsavel_registro_nome,
SPLIT_PART(OCO.unidade_responsavel_registro_nome,'/',-1) RPM_REGISTRO, 
SPLIT_PART(OCO.unidade_responsavel_registro_nome,'/',-2) UEOP_REGISTRO,
SPLIT_PART(OCO.unidade_responsavel_registro_nome,'/',-3) CIA_REGISTRO
FROM db_bisp_reds_reporting.tb_ocorrencia  OCO
INNER JOIN  db_bisp_cad_reporting.vw_chamada_evento  EV ON OCO.numero_chamada_cad  = EV.numero_chamada
 LEFT JOIN db_bisp_reds_master.tb_ocorrencia_setores_geodata AS geo ON OCO.numero_ocorrencia = geo.numero_ocorrencia AND OCO.ocorrencia_uf = 'MG'	-- Tabela de apoio que compara as lat/long com os setores IBGE		
 LEFT JOIN db_bisp_shared.tb_ibge_setores_geodata AS ibge ON geo.setor_codigo = ibge.setor_codigo  -- Join esquerdo com tabela de dados IBGE enriquecidos 
 LEFT JOIN db_bisp_shared.tb_pmmg_setores_geodata AS MUB  ON geo.setor_codigo = MUB.setor_codigo -- Join esquerdo com tabela MUB 
WHERE 1 = 1
    AND OCO.ocorrencia_uf ='MG' -- FILTRA OCORRENCIAS EM MINAS GERAIS 
    AND OCO.digitador_sigla_orgao = 'PM' -- FILTRA PELA SIGLA DA POLÍCIA MILITAR
--    AND OCO.unidade_responsavel_registro_nome LIKE '%/2 RPM%' -- FILTRA PELAS UNIDADES ESPECÍFICAS DA PM (CIA/BPM/RPM)
   -- AND OCO.nome_municipio = 'XXX' -- FILTRA MUNICIPIO
     AND year(OCO.data_hora_fato) = :ANO
     AND EV.descricao_evento LIKE '%REMOTO%'
     ORDER BY OCO.numero_ocorrencia 