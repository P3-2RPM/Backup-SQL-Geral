/*
================================================================================
PROJETO: Auditoria do Indicador de Interação Comunitária - 2ª RPM
DESCRIÇÃO: Script de conferência integral para validar registros de BOS/BOS AMPLO.
           Analisa critérios de RC, RCR, MRPP, VCP, VT e VTCV, incluindo
           validação de georreferenciamento (Rural/Urbano) e reincidência.
ANO DE REFERÊNCIA: 2026
================================================================================
*/

WITH OCORRENCIAS AS (
    -- Extração inicial baseada em naturezas de interação e filtros de unidade
    SELECT numero_ocorrencia
    FROM db_bisp_reds_reporting.tb_ocorrencia
    WHERE 1 = 1 
      AND YEAR(data_hora_fato) = 2026 
      AND natureza_codigo IN ('A19000', 'A19001','A19004','A19099', 'A19006', 'A19007','A19008','A19009', 'A19010', 'A19011','A20001', 'A21007', 'A20028') 
      AND ocorrencia_uf = 'MG' 
      AND digitador_sigla_orgao = 'PM' 
      AND nome_tipo_relatorio IN ('BOS', 'BOS AMPLO') 
      AND ind_estado IN ('F','R') 
      AND codigo_municipio IN (310670, 310810, 310900, 311860, 312060, 312410, 312600, 312980, 313010, 313220, 313665, 314015, 314070, 315040, 315460, 315530, 316292, 316553)
),

AGUAS AS (
    -- Tabela de exceção para tratamento de georreferenciamento em cursos d'água
    SELECT '310800810000009' AS setor_codigo, 'Rural'  AS zona_agua UNION ALL
    SELECT '311440205000086', 'Rural'  UNION ALL
    SELECT '312520005000014', 'Rural'  UNION ALL
    SELECT '312570510000021', 'Rural'  UNION ALL
    SELECT '312610910000009', 'Rural'  UNION ALL
    SELECT '315180005000418', 'Rural'  UNION ALL
    SELECT '315430905000031', 'Urbana' UNION ALL
    SELECT '315690810000020', 'Rural'  UNION ALL
    SELECT '316225205000015', 'Urbana' UNION ALL
    SELECT '316720205010026', 'Urbana' UNION ALL
    SELECT '316935605000093', 'Urbana' UNION ALL
    SELECT '310160705000238', 'Rural'  UNION ALL
    SELECT '310160705000241', 'Rural'  UNION ALL
    SELECT '310430405000063', 'Rural'  UNION ALL
    SELECT '310430405000071', 'Rural'  UNION ALL
    SELECT '311130905000043', 'Rural'  UNION ALL
    SELECT '311860105280029', 'Urbana' UNION ALL
    SELECT '312570508000008', 'Rural'  UNION ALL
    SELECT '312700805000039', 'Urbana' UNION ALL
    SELECT '313760105000244', 'Urbana' UNION ALL
    SELECT '314330205000733', 'Urbana' UNION ALL
    SELECT '314350005000030', 'Rural'  UNION ALL
    SELECT '315050510000006', 'Rural'  UNION ALL
    SELECT '316720205010022', 'Urbana' UNION ALL
    SELECT '310160710000006', 'Rural'  UNION ALL
    SELECT '310430405000056', 'Rural'  UNION ALL
    SELECT '310430405000058', 'Rural'  UNION ALL
    SELECT '310430405000065', 'Rural'  UNION ALL
    SELECT '310710905000056', 'Rural'  UNION ALL
    SELECT '314990305000064', 'Rural'  UNION ALL
    SELECT '316130405000021', 'Rural'  UNION ALL
    SELECT '316935610000016', 'Rural'  UNION ALL
    SELECT '310110205000035', 'Urbana' UNION ALL
    SELECT '312520005000012', 'Rural'  UNION ALL
    SELECT '312710705000131', 'Rural'  UNION ALL
    SELECT '313115805000020', 'Urbana' UNION ALL
    SELECT '314350010000007', 'Rural'  UNION ALL
    SELECT '316250030000015', 'Rural'  UNION ALL
    SELECT '316720205020024', 'Urbana' UNION ALL
    SELECT '310070805000015', 'Rural'  UNION ALL
    SELECT '312700805000037', 'Rural'  UNION ALL
    SELECT '312700820000008', 'Urbana' UNION ALL
    SELECT '313000205000017', 'Rural'  UNION ALL
    SELECT '313450905000031', 'Urbana' UNION ALL
    SELECT '314460720000006', 'Rural'  UNION ALL
    SELECT '315180005000419', 'Rural'  UNION ALL
    SELECT '310430405000068', 'Rural'  UNION ALL
    SELECT '310670505090031', 'Urbana' UNION ALL
    SELECT '311160605000065', 'Rural'  UNION ALL
    SELECT '311160610000011', 'Rural'  UNION ALL
    SELECT '311460005000033', 'Rural'  UNION ALL
    SELECT '312070605000007', 'Urbana' UNION ALL
    SELECT '312570505000047', 'Rural'  UNION ALL
    SELECT '316250010000008', 'Rural'  UNION ALL
    SELECT '311440210000014', 'Rural'  UNION ALL
    SELECT '312570510000030', 'Rural'  UNION ALL
    SELECT '312610925000020', 'Rural'  UNION ALL
    SELECT '313040805000023', 'Rural'  UNION ALL
    SELECT '313430120000010', 'Rural'  UNION ALL
    SELECT '313450905000023', 'Rural'  UNION ALL
    SELECT '313820305000223', 'Rural'  UNION ALL
    SELECT '315050505000027', 'Rural'  UNION ALL
    SELECT '315160205000036', 'Rural'  UNION ALL
    SELECT '317010705000100', 'Rural'
),

VITIMA_CV AS (
    -- Validação de existência de vítimas não fatais
    SELECT DISTINCT ENV.numero_ocorrencia, 1 AS VITIMA_VALIDA
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    LEFT JOIN db_bisp_reds_reporting.tb_ocorrencia oco 
        ON ENV.numero_ocorrencia = oco.numero_ocorrencia AND ((oco.codigo_municipio = ENV.codigo_municipio) OR ENV.codigo_municipio IS NULL)
    WHERE 1=1
      AND ENV.data_hora_fato >= '2025-01-01 00:00:00'
      AND ENV.condicao_fisica_codigo <> '0100'
      AND ENV.id_envolvimento IN (25,1097,27,32,28,26,872)
),

BASE AS (
    -- Cruzamento de REDS vinculados no histórico para auditoria de Visitas Técnicas
    SELECT DISTINCT 
        tb.REDS,
        oco.numero_ocorrencia AS reds_no_historico,
        oco.natureza_codigo,
        CASE WHEN natureza_codigo = 'C01155' 
             AND (((SUBSTRING(oco.local_imediato_codigo , 1, 2) IN ('07', '10', '14', '15', '03')) OR oco.local_imediato_codigo = '0512')
                  AND oco.complemento_natureza_codigo IN ('2002', '2004', '2005', '2015')) 
             THEN 'VALIDO' ELSE 'INVALIDO' 
        END AS VALIDO_FURTO_RESIDCOM,
        CASE WHEN natureza_codigo IN ('B01121','B01148','B02001','C01157','C01158','C01159','B01504') AND VCV.VITIMA_VALIDA = 1
             THEN 'VALIDO' ELSE 'INVALIDO' 
        END AS VALIDO_CV   
    FROM db_bisp_reds_reporting.tb_ocorrencia oco
    LEFT JOIN VITIMA_CV VCV ON oco.numero_ocorrencia = VCV.numero_ocorrencia
    INNER JOIN db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV 
        ON ENV.numero_ocorrencia = oco.numero_ocorrencia AND ((oco.codigo_municipio = ENV.codigo_municipio) OR ENV.codigo_municipio IS NULL)
    INNER JOIN (
        SELECT numero_ocorrencia AS REDS, 
               REGEXP_EXTRACT(oco.historico_ocorrencia, '([0-9]{4}-[0-9]{9}-[0-9]{3})', 0) AS BO_HISTORICO
        FROM db_bisp_reds_reporting.tb_ocorrencia oco
        WHERE digitador_sigla_orgao = 'PM' AND ocorrencia_uf = 'MG' AND ind_estado IN ('F','R') AND data_hora_fato >= '2025-01-01 00:00:00'
          AND ((oco.natureza_codigo = 'A20000' AND oco.data_hora_fato BETWEEN '2025-01-01 00:00:00.000' AND '2025-07-31 23:59:59.000')
               OR oco.natureza_codigo = 'A20028' OR oco.natureza_codigo = 'A20001') 
    ) tb ON oco.numero_ocorrencia = tb.BO_HISTORICO 
),

FILTRO AS (
    -- Aplicação das regras de negócio e validação geográfica
    SELECT 
        OCO.numero_ocorrencia, 
        OCO.natureza_codigo,
        COUNT(CASE WHEN ENV.numero_cpf_cnpj IS NOT NULL OR (ENV.tipo_documento_codigo IN ('0801','0802', '0803', '0809') AND ENV.numero_documento_id IS NOT NULL) THEN 1 END) AS QTD_ENVOLVIDOS,
        CASE WHEN OCO.natureza_codigo IN ('A21000','A21007') THEN 'VCP'
             WHEN OCO.natureza_codigo IN('A20000','A20028') THEN 'VT'
             WHEN OCO.natureza_codigo = 'A20001' THEN 'VTCV'
             WHEN OCO.natureza_codigo IN ('A19000', 'A19001','A19004','A19099') THEN 'RC / RCR'
             WHEN OCO.natureza_codigo IN ('A19006', 'A19007','A19008','A19009', 'A19010', 'A19011') THEN 'MRPP'
             ELSE 'Natureza Invalida'
        END AS QUAL_INDICADOR,
        CASE WHEN OCO.data_hora_fato >= '2025-01-01 00:00:00.000' THEN 'Data Valida' ELSE 'Data Invalida' END AS DATA_FATO,
        CASE WHEN OCO.natureza_codigo IN ('A19000', 'A19001','A19004','A19099','A19006', 'A19007','A19008','A19009', 'A19010', 'A19011','A20000','A20001','A20028','A21007') THEN 'Natureza Valida'
             WHEN OCO.natureza_codigo IN ('A21000','A20000') AND OCO.data_hora_fato BETWEEN '2025-01-01' AND '2025-07-31 23:59:59' THEN 'Natureza Valida (até julho)'
             ELSE 'Natureza Invalida'
        END AS NATUREZA,
        CASE WHEN OCO.ocorrencia_uf = 'MG' THEN 'UF Valida' ELSE 'UF Invalida' END AS UF,
        CASE WHEN oco.pais_codigo <> 1 AND oco.ocorrencia_uf IS NULL THEN 'Outro_Pais' 
             WHEN oco.ocorrencia_uf <> 'MG' THEN 'Outra_UF'
             WHEN oco.numero_latitude IS NULL THEN 'Invalido'
             WHEN geo.situacao_codigo = 9 THEN AG.zona_agua 
             ELSE geo.situacao_zona
        END AS RURAL_URBANO,
        CASE WHEN OCO.digitador_sigla_orgao ='PM' THEN 'Orgão Valido' ELSE 'Orgão Invalido' END AS ORGAO,
        CASE WHEN OCO.nome_tipo_relatorio IN ('BOS', 'BOS AMPLO') THEN 'Tipo Relatório Válido' ELSE 'Tipo Relatório Invalido' END AS TIPO_RELATORIO,
        CASE WHEN OCO.unidade_responsavel_registro_nome NOT LIKE '%IND PE%' AND OCO.unidade_responsavel_registro_nome NOT LIKE '%PVD%' 
                  AND (OCO.unidade_responsavel_registro_nome NOT REGEXP '/[A-Za-z]' OR OCO.unidade_responsavel_registro_nome LIKE '%/PEL TM%')
                  AND (OCO.unidade_responsavel_registro_nome REGEXP '^(SG|PEL|GP)' OR OCO.unidade_responsavel_registro_nome REGEXP '^[^A-Za-z]') 
             THEN 'Unidade Registro Válida' ELSE 'Unidade Registro Inválida'
        END AS UNIDADE_REGISTRO,
        CASE WHEN OCO.ind_estado IN ('F','R') THEN 'Estado Valido (Fechado/Pendente)' ELSE 'Estado Invalido (Não Fechado/Pendente)' END AS ESTADO,
        MUB.udi AS RPM_AREA, MUB.ueop AS UEOP_AREA, MUB.cia AS CIA_AREA, MUB.codigo_espacial_pm AS SETOR_PM
    FROM db_bisp_reds_reporting.tb_ocorrencia OCO
    LEFT JOIN db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV ON OCO.numero_ocorrencia = ENV.numero_ocorrencia
    LEFT JOIN db_bisp_reds_master.tb_ocorrencia_setores_geodata AS geo ON oco.numero_ocorrencia = geo.numero_ocorrencia AND oco.ocorrencia_uf = 'MG'
    LEFT JOIN db_bisp_shared.tb_pmmg_setores_geodata AS MUB ON geo.setor_codigo = MUB.setor_codigo
    LEFT JOIN AGUAS AG ON geo.setor_codigo = AG.setor_codigo
    WHERE 1=1 AND oco.numero_ocorrencia IN (SELECT numero_ocorrencia FROM OCORRENCIAS)
    GROUP BY OCO.numero_ocorrencia, OCO.natureza_codigo, QUAL_INDICADOR, DATA_FATO, NATUREZA, UF, RURAL_URBANO, ORGAO, TIPO_RELATORIO, UNIDADE_REGISTRO, ESTADO, RPM_AREA, UEOP_AREA, CIA_AREA, SETOR_PM
)

/* RESULTADO FINAL DA CONFERÊNCIA */
SELECT
    F.numero_ocorrencia,
    F.natureza_codigo,
    NATUREZA,
    CASE WHEN QUAL_INDICADOR = 'RC / RCR' AND RURAL_URBANO = 'Rural' THEN 'RC e tambem RCR'
         WHEN QUAL_INDICADOR = 'RC / RCR' AND RURAL_URBANO NOT IN ('Rural') THEN 'Apenas RC'
         ELSE QUAL_INDICADOR
    END AS 'CONTA PARA QUAL INDICADOR',
    RURAL_URBANO,
    CASE WHEN F.QUAL_INDICADOR = 'VCP' AND QTD_ENVOLVIDOS > 0 THEN '1 OU MAIS - VALIDO'
         WHEN F.QUAL_INDICADOR IN ('RC / RCR', 'MRPP') AND QTD_ENVOLVIDOS > 2 THEN '3 OU MAIS - VALIDO'
         WHEN F.QUAL_INDICADOR IN ('VT', 'VTCV') AND QTD_ENVOLVIDOS > 0 THEN '1 OU MAIS - VALIDO'
         ELSE CONCAT(CAST(QTD_ENVOLVIDOS AS STRING), ' - INVALIDO')
    END AS QUANTIDADE_ENVOLVIDOS,
    CASE WHEN F.QUAL_INDICADOR IN ('VT','VTCV') AND B.reds_no_historico IS NOT NULL THEN B.reds_no_historico
         ELSE '---'
    END AS REDS_HISTORICO,
    CASE WHEN F.QUAL_INDICADOR = 'VT' AND B.reds_no_historico IS NOT NULL THEN B.VALIDO_FURTO_RESIDCOM
         WHEN F.QUAL_INDICADOR = 'VTCV' AND B.reds_no_historico IS NOT NULL THEN B.VALIDO_CV
         ELSE '---'
    END AS VALIDACAO_ESPECIFICA,
    DATA_FATO, UF, ORGAO, TIPO_RELATORIO, UNIDADE_REGISTRO, ESTADO, RPM_AREA, UEOP_AREA, CIA_AREA, SETOR_PM
FROM FILTRO F
LEFT JOIN BASE B ON F.numero_ocorrencia = B.REDS
ORDER BY NUMERO_OCORRENCIA;
