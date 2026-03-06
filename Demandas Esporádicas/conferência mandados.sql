-- conferência de mandados
    SELECT 
        ENV.numero_ocorrencia,
        OCO.unidade_responsavel_registro_nome,
        ENV.nome_completo_envolvido,
        ENV.id_envolvimento,
		ENV.ind_mandado_prisao,
		ENV.ind_mandado_prisao_atual,
		ENV.digitador_id_orgao,
		ENV.id_tipo_prisao_apreensao, 
		ENV.tipo_prisao_apreensao_descricao, 
		ENV.tipo_prisao_apreensao_codigo,  
		ENV.tipo_prisao_apreensao_descricao 
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    INNER JOIN db_bisp_reds_reporting.tb_ocorrencia OCO 
        ON OCO.numero_ocorrencia = ENV.numero_ocorrencia
    WHERE 1 = 1 
--        AND YEAR (ENV.data_hora_fato) = :ANO
--        AND ENV.digitador_id_orgao = 0
--        AND ENV.ind_mandado_prisao = 'S'
        AND OCO.numero_ocorrencia IN ('2025-039069950-001')