/*
================================================================================
PROJETO: Auditoria do Indicador de Interação Comunitária - 2ª RPM
DESCRIÇÃO: Script de conferência para validar se os registros de BOS/BOS AMPLO
           atendem aos critérios dos indicadores (RC, RCR, MRPP, VCP, VT, VTCV).
           Realiza cruzamento geográfico, análise de reincidência no histórico 
           e validação de quantidade mínima de envolvidos por natureza.
================================================================================
*/

WITH OCORRENCIAS AS (
    -- Extração inicial de registros BOS/BOS AMPLO da PM no ano de 2026
    SELECT numero_ocorrencia
    FROM db_bisp_reds_reporting.tb_ocorrencia
    WHERE YEAR(data_hora_fato) = 2026  
      AND natureza_codigo IN ('A19000', 'A19001','A19004','A19099', 'A19006', 'A19007','A19008','A19009', 'A19010', 'A19011','A20001', 'A21007', 'A20028') 
      AND ocorrencia_uf = 'MG' 
      AND digitador_sigla_orgao = 'PM' 
      AND nome_tipo_relatorio IN ('BOS', 'BOS AMPLO') 
      AND ind_estado IN ('F','R') -- Fechado ou Pendente de Recibo
      AND codigo_municipio IN (310670, 310810, 310900, 311860, 312060, 312410, 312600, 312980, 313010, 313220, 313665, 314015, 314070, 315040, 315460, 315530, 316292, 316553)
),

AGUAS AS (
    -- Tabela de exceção para tratamento de coordenadas em cursos d'água (Rural/Urbano)
    SELECT '310800810000009' AS setor_codigo, 'Rural' AS zona_agua UNION ALL
    SELECT '315430905000031', 'Urbana' UNION ALL
    SELECT '316225205000015', 'Urbana' -- [Lista resumida para clareza no GitHub]
),

VITIMA_CV AS (
    -- Validação de existência de vítimas válidas para crimes violentos (não fatais)
    SELECT DISTINCT ENV.numero_ocorrencia, 1 AS VITIMA_VALIDA
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    WHERE ENV.data_hora_fato >= '2025-01-01 00:00:00'
      AND ENV.condicao_fisica_codigo <> '0100' -- Exclui óbitos
      AND ENV.id_envolvimento IN (25,1097,27,32,28,26,872)
),

BASE AS (
    -- Captura o REDS referenciado no Histórico para validar VTCV/VT
    SELECT DISTINCT 
        tb.REDS,
        oco.numero_ocorrencia AS reds_no_historico,
        -- Regra para Furto em Residência/Comércio
        CASE WHEN natureza_codigo = 'C01155' 
             AND (SUBSTRING(oco.local_imediato_codigo, 1, 2) IN ('07', '10', '14', '15', '03') OR oco.local_imediato_codigo = '0512')
             AND oco.complemento_natureza_codigo IN ('2002', '2004', '2005', '2015') 
             THEN 'VALIDO' ELSE 'INVALIDO' 
        END AS VALIDO_FURTO_RESIDCOM,
        -- Regra para Crime Violento
        CASE WHEN natureza_codigo IN ('B01121','B01148','B02001','C01157','C01158','C01159','B01504') AND VCV.VITIMA_VALIDA = 1
             THEN 'VALIDO' ELSE 'INVALIDO' 
        END AS VALIDO_CV   
    FROM db_bisp_reds_reporting.tb_ocorrencia oco
    LEFT JOIN VITIMA_CV VCV ON oco.numero_ocorrencia = VCV.numero_ocorrencia
    INNER JOIN (
        -- Extração via Regex do número do REDS dentro do campo Histórico
        SELECT numero_ocorrencia AS REDS, 
               REGEXP_EXTRACT(historico_ocorrencia, '([0-9]{4}-[0-9]{9}-[0-9]{3})', 0) AS BO_HISTORICO
        FROM db_bisp_reds_reporting.tb_ocorrencia
        WHERE data_hora_fato >= '2025-01-01 00:00:00'
          AND natureza_codigo IN ('A20000', 'A20028', 'A20001')
    ) tb ON oco.numero_ocorrencia = tb.BO_HISTORICO
),

FILTRO AS (
    -- Consolidação de todas as checagens (UF, Órgão, Unidade, Georeferenciamento)
    SELECT 
        OCO.numero_ocorrencia, 
        OCO.natureza_codigo,
        COUNT(CASE WHEN ENV.numero_cpf_cnpj IS NOT NULL OR (ENV.tipo_documento_codigo IN ('0801','0802', '0803', '0809') AND ENV.numero_documento_id IS NOT NULL) THEN 1 END) AS QTD_ENVOLVIDOS,
        -- Classificação do Indicador
        CASE WHEN OCO.natureza_codigo IN ('A21000','A21007') THEN 'VCP'
             WHEN OCO.natureza_codigo IN ('A20000','A20028') THEN 'VT'
             WHEN OCO.natureza_codigo = 'A20001' THEN 'VTCV'
             WHEN OCO.natureza_codigo IN ('A19000', 'A19001','A19004','A19099') THEN 'RC / RCR'
             WHEN OCO.natureza_codigo IN ('A19006', 'A19007','A19008','A19009', 'A19010', 'A19011') THEN 'MRPP'
             ELSE 'Natureza Invalida'
        END AS QUAL_INDICADOR,
        -- Validação de Zona (Urbana/Rural) via GeoData
        CASE WHEN oco.ocorrencia_uf <> 'MG' THEN 'Outra_UF'
             WHEN geo.situacao_codigo = 9 THEN AG.zona_agua
             ELSE geo.situacao_zona
        END AS RURAL_URBANO,
        MUB.udi AS RPM_AREA, MUB.ueop AS UEOP_AREA, MUB.cia AS CIA_AREA, MUB.codigo_espacial_pm AS SETOR_PM
    FROM db_bisp_reds_reporting.tb_ocorrencia OCO
    LEFT JOIN db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV ON OCO.numero_ocorrencia = ENV.numero_ocorrencia
    LEFT JOIN db_bisp_reds_master.tb_ocorrencia_setores_geodata AS geo ON oco.numero_ocorrencia = geo.numero_ocorrencia
    LEFT JOIN db_bisp_shared.tb_pmmg_setores_geodata AS MUB ON geo.setor_codigo = MUB.setor_codigo
    LEFT JOIN AGUAS AG ON geo.setor_codigo = AG.setor_codigo
    WHERE oco.numero_ocorrencia IN (SELECT numero_ocorrencia FROM OCORRENCIAS)
    GROUP BY 1,2,4,5,6,7,8,9,10,11,12,13,14,15,16
)

/* RESULTADO FINAL: VEREDITO DE AUDITORIA */
SELECT
    F.numero_ocorrencia,
    F.natureza_codigo,
    CASE WHEN QUAL_INDICADOR = 'RC / RCR' AND RURAL_URBANO = 'Rural' THEN 'RC e também RCR'
         WHEN QUAL_INDICADOR = 'RC / RCR' THEN 'Apenas RC'
         ELSE QUAL_INDICADOR 
    END AS indicador_alvo,
    -- Validação de Quantidade Mínima de Envolvidos
    CASE WHEN F.QUAL_INDICADOR = 'VCP' AND QTD_ENVOLVIDOS > 0 THEN 'VALIDO'
         WHEN F.QUAL_INDICADOR IN ('RC / RCR', 'MRPP') AND QTD_ENVOLVIDOS > 2 THEN 'VALIDO'
         WHEN F.QUAL_INDICADOR IN ('VT', 'VTCV') AND QTD_ENVOLVIDOS > 0 THEN 'VALIDO'
         ELSE 'INVALIDO (Qtd Envolvidos)'
    END AS status_envolvidos,
    -- Auditoria de Histórico (Para Visitas)
    COALESCE(B.reds_no_historico, 'Não referenciado ou inválido') AS reds_referenciado,
    F.RPM_AREA, F.UEOP_AREA, F.SETOR_PM
FROM FILTRO F
LEFT JOIN BASE B ON F.numero_ocorrencia = B.REDS
ORDER BY F.numero_ocorrencia;
