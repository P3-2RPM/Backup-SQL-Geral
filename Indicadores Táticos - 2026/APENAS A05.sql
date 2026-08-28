/***************************************************************************************
 * A05000 COM PRISÕES DE INDICADORES TÁTICOS - 2ª RPM
 * PERÍODO: A partir de Maio/2026 (Ajustar para Junho futuramente)
 ***************************************************************************************/

SELECT 
    -- [DADOS DO REDS]
    ENV.numero_ocorrencia                 AS NUMERO_REDS,
    ENV.qtd_envolvido,
    ENV.unidade_responsavel_registro_nome AS UNIDADE_REGISTRO,
    
    -- [TEMPO]
    MONTH(ENV.data_hora_fato)             AS MES_NUMERICO,
    YEAR(ENV.data_hora_fato)              AS ANO_FATO,
    ENV.data_hora_fato                    AS DATA_HORA_FATO,
    
    -- [NATUREZA]
    ENV.natureza_ocorrencia_codigo        AS CODIGO_NATUREZA_ENVOLVIDO

FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia AS ENV

WHERE 1 = 1
    -- Filtros do Envolvido (Prisão/Apreensão de civis e naturezas específicas)
    AND ENV.id_tipo_prisao_apreensao IN (1, 2, 3, 4)
    AND ENV.natureza_ocorrencia_codigo IN ('B01121', 'B01504', 'B02001', 'B01148', 'C01157', 'C01159')
    AND ENV.digitador_id_orgao = 0 
    AND ENV.ind_militar_policial IS DISTINCT FROM 'M'
    AND ENV.ind_militar_policial_servico IS DISTINCT FROM 'S'
    
    -- Filtro Cruzado: Apenas REDS que possuem a natureza A05000 na tabela principal
    AND ENV.numero_ocorrencia IN (
        SELECT alfacinco.numero_ocorrencia
        FROM db_bisp_reds_reporting.tb_ocorrencia AS alfacinco
        WHERE alfacinco.natureza_codigo = 'A05000'
          AND alfacinco.digitador_sigla_orgao = 'PM'
          AND YEAR(alfacinco.data_hora_fato) >= 2026
          AND MONTH(alfacinco.data_hora_fato) >= 6
          AND (alfacinco.unidade_responsavel_registro_nome LIKE '%/2 RPM%' 
               OR alfacinco.unidade_responsavel_registro_nome LIKE '%/2RPM%')
    )

ORDER BY 
    DATA_HORA_FATO DESC;
