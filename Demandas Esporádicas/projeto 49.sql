SELECT DISTINCT
    i.chamada_id, 
    ce.descricao_evento,
    e.empenho_id,
    e.recurso_tipo_empenho,
    e.tipo_recurso_descricao,
    e.recurso_codigo_prefixo,
    e.recurso_data_hora_inclusao,
    e.recurso_data_hora_ativacao,
    e.recurso_data_hora_expiracao,
    o.numero_ocorrencia,
    o.data_hora_fato, 
    o.data_hora_comunicacao, 
    o.descricao_estado,
    o.nome_tipo_relatorio,
    o.data_hora_fechamento,
    o.natureza_codigo,
    o.natureza_secundaria1_codigo,
    o.natureza_secundaria2_codigo,
    o.natureza_secundaria3_codigo,
    o.logradouro_nome,
    o.tipo_logradouro_descricao,
    o.numero_endereco,
    o.nome_bairro,
    o.codigo_municipio,
    o.nome_municipio,
    o.ocorrencia_uf,
    o.tipo_local_descricao,
    o.numero_latitude,
    o.numero_longitude,
    o.unidade_area_militar_codigo,
    o.unidade_area_militar_nome,
    o.unidade_responsavel_registro_codigo,
    o.unidade_responsavel_registro_nome,
    o.sqtempo_fato,
    o.ind_estado,
    o.descricao_tipo_relatorio,
    o.data_hora_inclusao,
    o.data_hora_alteracao,
    o.operacao_codigo,
    o.operacao_descricao,
    o.natureza_descricao,
    o.natureza_secundaria1_descricao,
    o.natureza_secundaria2_descricao,
    o.natureza_secundaria3_descricao,
    o.tipo_local_codigo,
    o.modo_acao_criminosa,
    o.descricao_endereco,
    o.relator_nome,
    o.relator_matricula,
    o.relator_cargo,
    o.ind_tco,
    o.data_hora_final,
    o.data_hora_fim_preenchimento,
    o.data_hora_primeiro_fim_preenchimento,
    o.digitador_cargo_efetivo,
    o.digitador_nome,
    o.digitador_matricula,
    o.digitador_codigo_unidade,
    o.motivo_presumido_descricao,
    o.local_imediato_descricao,
    o.instrumento_utilizado_descricao,
    o.descricao_localizacao_ocorrencia,
    o.complemento_natureza_descricao
FROM 
    db_bisp_reds_reporting.tb_ocorrencia o
LEFT JOIN db_bisp_cad_reporting.tb_integracao_reds i 
ON o.numero_ocorrencia = i.reds_numero
LEFT JOIN db_bisp_cad_reporting.tb_empenho e
ON i.chamada_atendimento_id = e.chamada_atendimento_id 
LEFT JOIN db_bisp_cad_reporting.vw_chamada_evento ce
    ON e.chamada_atendimento_id = ce.id_chamada_atendimento 
WHERE 
    YEAR(o.data_hora_fato) BETWEEN 2025 AND 2025
    AND (o.unidade_responsavel_registro_nome LIKE '%6 CIA PM IND/2 RPM%' or o.unidade_responsavel_registro_nome LIKE '%/6CIA PM IND/2 RPM%')
    AND (e.recurso_tipo_empenho = 'Principal' OR e.recurso_tipo_empenho IS NULL)
    OR o.descricao_estado IN ('ABERTO','NOVO PENDENTE DE ELABORACAO')
    AND (o.unidade_responsavel_registro_nome LIKE '%6 CIA PM IND/2 RPM%' or o.unidade_responsavel_registro_nome LIKE '%/6CIA PM IND/2 RPM%')
    ;