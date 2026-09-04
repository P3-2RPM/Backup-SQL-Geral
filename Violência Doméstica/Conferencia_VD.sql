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
        ELSE 'NAO'
    END AS vitima_recebeu_visita_posterior,
    
    VP.num_reds_ultima_visita AS numero_reds_ultima_visita,
    FROM_TIMESTAMP(VP.data_fato_ultima_visita, 'dd/MM/yy HH:mm') AS data_fato_da_ultima_visita,

    -- [DADOS DA VÍTIMA E LOCAL]
    ENV.nome_completo_envolvido,
    ENV.data_nascimento,
    OCO.natureza_descricao,
    GEO.udi,
    GEO.ueop,
    GEO.cia,
    OCO.nome_municipio AS Municipio_Fato,
    
    -- [DADOS DO REGISTRO]
    OCO.digitador_matricula,
    OCO.digitador_nome,
    OCO.responsavel_apreensao_matricula,
     
    -- [AVALIAÇÃO DE RISCO]
    VD.id_avaliacao_risco_motivo,
    CASE 
        WHEN VD.id_avaliacao_risco_motivo IS NULL OR VD.id_avaliacao_risco_motivo IN (3, 4) THEN 'NAO'
        ELSE 'SIM'
    END AS preencheu_formulario
    
FROM db_bisp_reds_reporting.tb_ocorrencia OCO
LEFT JOIN db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV 
    ON OCO.numero_ocorrencia = ENV.numero_ocorrencia
/*LEFT JOIN (
    SELECT 
        numero_chamada, 
        id_evento
    FROM (
        SELECT 
            numero_chamada, 
            id_evento,
            ROW_NUMBER() OVER (PARTITION BY numero_chamada ORDER BY id_evento ASC) as rnk
        FROM db_bisp_cad_reporting.vw_chamada_evento
    ) sub
    WHERE rnk = 1 -- Garante apenas a primeira chamada vinculada
) CHAMADA ON OCO.numero_chamada_cad = CHAMADA.numero_chamada*/
LEFT JOIN db_bisp_reds_master.tb_ocorrencia_setores_geodata AS geo 
    ON OCO.numero_ocorrencia = geo.numero_ocorrencia 			

-- JOIN COM A TABELA DE AVALIAÇÃO DE RISCO - INFELIZMENTE FOI IDENTIFICADO ANOMALIAS PARA 2 SITUAÇÕES DE AVALIAÇÃO DE RISCO PRA MESMA VÍTIMA
LEFT JOIN (
    SELECT 
        numero_ocorrencia, 
        id_avaliacao_risco_motivo
    FROM (
        SELECT 
            numero_ocorrencia, 
            id_avaliacao_risco_motivo,
            ROW_NUMBER() OVER (
                PARTITION BY numero_ocorrencia 
                ORDER BY CASE 
                    WHEN id_avaliacao_risco_motivo = 1 THEN 1
                    WHEN id_avaliacao_risco_motivo = 2 THEN 2
                    WHEN id_avaliacao_risco_motivo = 5 THEN 3
                    WHEN id_avaliacao_risco_motivo = 4 THEN 4
                    WHEN id_avaliacao_risco_motivo = 3 THEN 5
                    ELSE 6 
                END ASC
            ) as rnk_prioridade
        FROM db_bisp_reds_reporting.tb_avaliacao_risco_vd
    ) sub_vd
    WHERE rnk_prioridade = 1 -- Garante apenas o motivo mais importante conforme a regra (tem o FONAR é mais importante que não ter)
) VD ON OCO.numero_ocorrencia = VD.numero_ocorrencia 

-- JOIN COM A ÚLTIMA VISITA
LEFT JOIN VISITAS_PREVENCAO VP 
    ON SHA1(CONCAT(UPPER(TRIM(COALESCE(ENV.nome_completo_envolvido, 'S-N'))), CAST(COALESCE(ENV.data_nascimento, '1900-01-01') AS STRING))) = VP.ID_UNICO_VISITA
    AND VP.data_fato_ultima_visita > OCO.data_hora_fato 

WHERE YEAR(OCO.data_hora_fato) >= 2026
	AND OCO.codigo_municipio IN (310670, 310810, 310900, 311860, 312060, 312410, 312600, 312980, 313010, 313220, 313665, 314015, 314070, 315040, 315460, 315530, 316292, 316553)
	AND OCO.ocorrencia_uf = 'MG'
    AND OCO.digitador_sigla_orgao IN ('PM')
    AND (ENV.codigo_sexo = 'F' OR identidade_genero_codigo IN ('0400','0200','0700','0100','0600'))  --Inclui somente envolvidas do sexo feminino Ou com outras identidades de gênero especificadas
    AND ENV.envolvimento_codigo IN ('1300', '1399', '1301', '1302', '1303', '1304', '1305') -- Filtra apenas vítimas
    AND (	
	   			SUBSTRING(OCO.natureza_codigo, 1, 1) <> 'A'   -- Filtra código da natureza principal diferente do grupo A
			    AND (OCO.natureza_secundaria1_codigo = 'U33004'
					   OR OCO.natureza_secundaria2_codigo = 'U33004'
					   OR OCO.natureza_secundaria3_codigo = 'U33004') -- Filtra código de natureza secundária  U33004
			    OR ( OCO.natureza_codigo = 'U33004'
			         AND ((SUBSTRING(OCO.natureza_secundaria1_codigo , 1, 1) IN ('B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'T') 
					   			AND OCO.natureza_secundaria1_codigo NOT IN ('T00007', 'T00008', 'T00009', 'T10161', 'T99000') ) 
					   	   	OR  (SUBSTRING(OCO.natureza_secundaria2_codigo , 1, 1) IN ('B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'T')  
					   			AND OCO.natureza_secundaria2_codigo NOT IN ('T00007', 'T00008', 'T00009', 'T10161', 'T99000') ) 
					   		OR  (SUBSTRING(OCO.natureza_secundaria3_codigo , 1, 1) IN ('B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'T')  
					   			AND OCO.natureza_secundaria3_codigo NOT IN ('T00007', 'T00008', 'T00009', 'T10161', 'T99000') ) 
					   	 )
   					) -- Filtra código da natureza principal U33004 com natureza secundária de crime
	       );
