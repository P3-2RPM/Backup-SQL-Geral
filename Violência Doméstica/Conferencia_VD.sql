/***************************************************************************************
 * MONITORAMENTO DE VIOLÊNCIA DOMÉSTICA (U33004) E ÚLTIMA VISITA DE PREVENÇÃO (A20002)
 * REGRA: Filtra apenas a visita mais recente para cada vítima identificada.
 ***************************************************************************************/

WITH 
-- CTE PARA MAPEAREM APENAS A ÚLTIMA VISITA (A20002)
VISITAS_PREVENCAO AS (
    SELECT 
        -- Chave única: Nome + Data Nascimento
        SHA1(CONCAT(
            UPPER(TRIM(COALESCE(ENV_V.nome_completo_envolvido, 'S-N'))), 
            CAST(COALESCE(ENV_V.data_nascimento, '1900-01-01') AS STRING)
        )) AS ID_UNICO_VISITA,
        MAX(OCO_V.numero_ocorrencia) AS num_reds_ultima_visita, -- Pega o número do REDS mais recente
        MAX(OCO_V.data_hora_fato) AS data_fato_ultima_visita     -- Pega a data da última visita
    FROM db_bisp_reds_reporting.tb_ocorrencia OCO_V
    INNER JOIN db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV_V 
        ON OCO_V.numero_ocorrencia = ENV_V.numero_ocorrencia
    WHERE OCO_V.natureza_codigo = 'A20002' 
      AND YEAR(OCO_V.data_hora_fato) >= 2026
      AND OCO_V.ocorrencia_uf = 'MG'
      AND OCO_V.codigo_municipio IN (310670, 310810, 310900, 311860, 312060, 312410, 312600, 312980, 313010, 313220, 313665, 314015, 314070, 315040, 315460, 315530, 316292, 316553)
    GROUP BY 1 -- Agrupa pelo ID_UNICO_VISITA para garantir apenas uma linha por pessoa
)

SELECT 
    -- [IDENTIFICADOR ÚNICO DA VÍTIMA]
    SHA1(CONCAT(
        UPPER(TRIM(COALESCE(ENV.nome_completo_envolvido, 'S-N'))), 
        CAST(COALESCE(ENV.data_nascimento, '1900-01-01') AS STRING)
    )) AS ID_UNICO_VITIMA,

    -- [DADOS DO EVENTO ORIGEM (U33004)]
    OCO.numero_ocorrencia, 
    FROM_TIMESTAMP(OCO.data_hora_fato, 'dd/MM/yy') AS data_hora_fato,
    
    -- [DADOS DA ÚLTIMA VISITA REALIZADA (A20002)]
    CASE 
        WHEN VP.ID_UNICO_VISITA IS NOT NULL AND VP.data_fato_ultima_visita > OCO.data_hora_fato THEN 'SIM'
        ELSE 'NÃO'
    END AS vitima_recebeu_visita_posterior,
    
    VP.num_reds_ultima_visita AS numero_reds_ultima_visita,
    FROM_TIMESTAMP(VP.data_fato_ultima_visita, 'dd/MM/yy HH:mm') AS data_fato_da_ultima_visita,

    -- [DADOS DA VÍTIMA E LOCAL]
    ENV.nome_completo_envolvido,
    ENV.data_nascimento,
    OCO.natureza_descricao,
    COALESCE(MUB.udi, 'SEM INFORMAÇÃO') AS udi,
    COALESCE(MUB.ueop, 'SEM INFORMAÇÃO') AS ueop,
    COALESCE(MUB.cia, 'SEM INFORMAÇÃO') AS cia,
    OCO.nome_municipio AS Municipio_Fato,

    -- [AVALIAÇÃO DE RISCO]
    VD.id_avaliacao_risco_motivo,
    CASE 
        WHEN VD.id_avaliacao_risco_motivo IS NULL OR VD.id_avaliacao_risco_motivo IN (3, 4) THEN 'NAO'
        ELSE 'SIM'
    END AS preencheu_formulario

FROM db_bisp_reds_reporting.tb_ocorrencia OCO
LEFT JOIN db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV 
    ON OCO.numero_ocorrencia = ENV.numero_ocorrencia
FULL JOIN (
    SELECT DISTINCT numero_chamada, id_evento 
    FROM db_bisp_cad_reporting.vw_chamada_evento
) CHAMADA ON OCO.numero_chamada_cad = CHAMADA.numero_chamada
LEFT JOIN db_bisp_reds_master.tb_ocorrencia_setores_geodata AS geo 
    ON OCO.numero_ocorrencia = geo.numero_ocorrencia 			
LEFT JOIN db_bisp_shared.tb_pmmg_setores_geodata AS MUB  
    ON geo.setor_codigo = MUB.setor_codigo 
LEFT JOIN (
    SELECT DISTINCT numero_ocorrencia, id_avaliacao_risco_motivo 
    FROM db_bisp_reds_reporting.tb_avaliacao_risco_vd
) VD ON OCO.numero_ocorrencia = VD.numero_ocorrencia   

-- JOIN COM A ÚLTIMA VISITA
LEFT JOIN VISITAS_PREVENCAO VP 
    ON SHA1(CONCAT(UPPER(TRIM(COALESCE(ENV.nome_completo_envolvido, 'S-N'))), CAST(COALESCE(ENV.data_nascimento, '1900-01-01') AS STRING))) = VP.ID_UNICO_VISITA
    AND VP.data_fato_ultima_visita > OCO.data_hora_fato 

WHERE YEAR(OCO.data_hora_fato) >= 2026
	AND OCO.codigo_municipio IN (310670, 310810, 310900, 311860, 312060, 312410, 312600, 312980, 313010, 313220, 313665, 314015, 314070, 315040, 315460, 315530, 316292, 316553)
	AND (OCO.natureza_codigo = 'U33004' OR OCO.natureza_secundaria1_codigo = 'U33004' OR OCO.natureza_secundaria2_codigo = 'U33004' OR OCO.natureza_secundaria3_codigo = 'U33004')
	AND OCO.natureza_codigo not in ('A20002')
	AND OCO.ocorrencia_uf = 'MG'
    AND OCO.digitador_sigla_orgao IN ('PM', 'PC')
    AND ENV.codigo_sexo = 'F'
    AND ENV.envolvimento_codigo IN ('1300', '1399', '1301', '1302', '1303', '1304', '1305');
