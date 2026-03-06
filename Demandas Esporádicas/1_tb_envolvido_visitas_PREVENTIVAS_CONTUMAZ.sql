--tb_envolvidos_Visitas_PREVENTIVAS_A_CONTUMAZ
--A tropa foi orientada a colocar o termo contumaz no histórico
--Não utilize as consultas vw (Streaming)..dá erro!!!
--As colunas precisam ser as mesmas da tb_envolvido_criminosos, se quiser uni-las
SELECT
    o.numero_ocorrencia, 
    o.nome_tipo_relatorio,
    o.natureza_codigo,
    o.natureza_secundaria1_codigo,
    o.natureza_secundaria2_codigo,
    o.natureza_secundaria3_codigo,
    o.unidade_responsavel_registro_codigo,
    o.unidade_responsavel_registro_nome,
    o.data_hora_fato,
    e.codigo_municipio,
    e.nome_municipio,
    e.nome_completo_envolvido,
    e.numero_documento_id,
    e.numero_cpf_cnpj,
    e.nome_municipio,
    e.nome_bairro,
    e.logradouro_nome,
    e.numero_endereco,
    e.ind_mandado_prisao,
    e.ind_mandado_prisao_atual,
    e.tipo_prisao_apreensao_descricao_longa,
    e.condicao_fisica_descricao_longa,
    e.envolvimento_descricao_longa
FROM 
    db_bisp_reds_reporting.tb_envolvido_ocorrencia e
FULL JOIN 
    db_bisp_reds_reporting.tb_ocorrencia o
    ON e.numero_ocorrencia = o.numero_ocorrencia
WHERE 
    CAST(o.data_hora_fato AS date) >= '2023-01-01'
    AND CAST(o.data_hora_fato AS date) <= '2023-12-31'
    AND e.unidade_responsavel_registro_nome LIKE '%/4 RPM%'
    AND (
        o.natureza_codigo = 'A21000'
        OR o.natureza_secundaria1_codigo = 'A21000'
        OR o.natureza_secundaria2_codigo = 'A21000'
        OR o.natureza_secundaria3_codigo = 'A21000'
    )
    AND o.unidade_responsavel_registro_nome LIKE '%27 BPM/4 RPM%'
    AND o.historico_ocorrencia LIKE '%CONTUMAZ%';