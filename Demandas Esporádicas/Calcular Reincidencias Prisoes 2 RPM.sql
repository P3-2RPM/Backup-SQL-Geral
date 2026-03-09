/*
================================================================================
PROJETO: Análise de Reincidência Criminal - 2ª RPM
DESCRIÇÃO: Identifica autores e coautores presos/apreendidos e calcula o 
           histórico acumulado de ocorrências anteriores para cada indivíduo,
           utilizando o nome e a data de nascimento como chaves de partição.
PERÍODO: A partir de 01/01/2021
================================================================================
*/

SELECT
    ENV.nome_completo_envolvido AS nome_autor,
    ENV.data_nascimento AS data_nascimento_autor,
    OCO.numero_ocorrencia,
    OCO.data_hora_fato,
    OCO.nome_municipio,
    
    -- LÓGICA DE REINCIDÊNCIA:
    -- Calcula a contagem de registros anteriores para o mesmo indivíduo 
    -- (nome + data_nascimento) ordenados pela linha do tempo (data_hora_fato).
    COUNT(1) OVER (
        PARTITION BY 
            ENV.nome_completo_envolvido, 
            ENV.data_nascimento
        ORDER BY 
            OCO.data_hora_fato
        ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING
    ) AS historico_ocorrencias_anteriores

FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia AS ENV
INNER JOIN db_bisp_reds_reporting.tb_ocorrencia AS OCO
    ON ENV.numero_ocorrencia = OCO.numero_ocorrencia

WHERE 1 = 1
    -- Filtros de Envolvimento: Autor (35) e Coautor (36)
    AND ENV.id_envolvimento IN (35, 36) 
    
    -- Filtros de Prisão/Apreensão: Flagrantes, Mandados e TCO
    AND ENV.id_tipo_prisao_apreensao IN (1, 2, 3, 4, 6, 7)
    
    -- Segurança: Exclui registros de militares em serviço ou fora dele
    AND ENV.ind_militar_policial IS DISTINCT FROM 'M'
    AND ENV.ind_militar_policial_servico IS DISTINCT FROM 'S'
    
    -- Abrangência Geográfica e Temporal
    AND OCO.ocorrencia_uf = 'MG'
    AND OCO.data_hora_fato >= '2021-01-01'
    
    -- Municípios de interesse (Área da 2ª RPM)
    AND OCO.codigo_municipio IN (
        310670, 310810, 310900, 311860, 312060, 312410, 312600, 
        312980, 313010, 313220, 313665, 314015, 314070, 315040, 
        315460, 315530, 316292, 316553
    )

ORDER BY
    nome_autor,
    data_nascimento_autor,
    data_hora_fato;
