/*
================================================================================
PROJETO: Auditoria e Consolidação de Produtividade de Prisões - 2ª RPM
DESCRIÇÃO: Script para filtrar ocorrências de destaque (Roubo/Homicídio) 
           e identificar a Unidade de Execução Operacional (UEOP) responsável.
           Inclui tratamento para exclusão de Letalidade Policial.
PARÂMETROS: :ANO - Ano de referência para os fatos.
================================================================================
*/

WITH GUARNICAO AS (
    -- Consolida matrículas dos militares da 2ª RPM participantes da ocorrência
    SELECT 
        IGO.numero_ocorrencia,
        GROUP_CONCAT(DISTINCT IGO.numero_matricula, ', ') AS matriculas_militares
    FROM db_bisp_reds_reporting.tb_integrante_guarnicao_ocorrencia IGO
    WHERE YEAR(IGO.data_hora_fato) = :ANO
      AND (IGO.unidade_servico_nome LIKE '%/2 RPM%' OR IGO.unidade_servico_nome LIKE '%/2RPM%')
    GROUP BY IGO.numero_ocorrencia
),

PRESOS_R AS (
    -- Contagem de presos especificamente para natureza de Roubo (C01157)
    SELECT 
        ENV.numero_ocorrencia,
        COUNT(DISTINCT ENV.numero_envolvido) AS quantidade_presos
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV					
    INNER JOIN db_bisp_reds_reporting.tb_ocorrencia OCO ON OCO.numero_ocorrencia = ENV.numero_ocorrencia					
    WHERE YEAR(ENV.data_hora_fato) = :ANO								
      AND ENV.digitador_id_orgao = 0
      AND ENV.id_envolvimento IN (35, 36, 44) -- Autor, Co-Autor, Suspeito
      AND ENV.id_tipo_prisao_apreensao IN (1, 2, 3, 4, 6, 7)
      AND ENV.natureza_ocorrencia_codigo = 'C01157'
      AND (OCO.unidade_responsavel_registro_nome LIKE '%/2 RPM%' OR OCO.unidade_responsavel_registro_nome LIKE '%/2RPM%')
    GROUP BY ENV.numero_ocorrencia
),

PRESOS_H AS (
    -- Contagem de presos para Homicídio e naturezas correlatas
    SELECT 
        ENV.numero_ocorrencia,
        COUNT(DISTINCT ENV.numero_envolvido) AS quantidade_presos
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV					
    INNER JOIN db_bisp_reds_reporting.tb_ocorrencia OCO ON OCO.numero_ocorrencia = ENV.numero_ocorrencia					
    WHERE YEAR(ENV.data_hora_fato) = :ANO								
      AND ENV.digitador_id_orgao = 0
      AND ENV.id_envolvimento IN (35, 36, 44)
      AND ENV.id_tipo_prisao_apreensao IN (1, 2, 3, 4, 6, 7)
      AND ENV.natureza_ocorrencia_codigo IN ('B01121', 'B01504', 'G01333')
      AND (OCO.unidade_responsavel_registro_nome LIKE '%/2 RPM%' OR OCO.unidade_responsavel_registro_nome LIKE '%/2RPM%')
    GROUP BY ENV.numero_ocorrencia
),

LETALIDADE AS ( 
    -- Identifica ocorrências de Letalidade Policial para posterior exclusão
    SELECT ENV.numero_ocorrencia
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    WHERE ENV.natureza_ocorrencia_codigo IN ('B01121', 'B01129')
      AND ENV.id_envolvimento IN (35, 36, 44)
      AND ENV.ind_militar_policial = 'M'
      AND ENV.ind_militar_policial_servico = 'S'
      AND YEAR(ENV.data_hora_fato) = :ANO
),

REDS_AUDITORIA AS (
    -- Bloco de auditoria para registros específicos
    SELECT 
        OCO.numero_ocorrencia,
        FROM_TIMESTAMP(OCO.data_hora_fato, 'dd/MM/yy') AS data_fato,
        MONTH(OCO.data_hora_fato) AS mes_fato,
        -- Classificação de UEOP baseada no código do município
        CASE WHEN OCO.codigo_municipio IN (315460) THEN '40 BPM'
             WHEN OCO.codigo_municipio IN (310900, 312980, 314015, 316553) THEN '48 BPM'
             WHEN OCO.codigo_municipio IN (312410) THEN '6 CIA PM IND'
             WHEN OCO.codigo_municipio IN (310810, 312060, 312600, 313010, 313220, 313665, 314070, 315040, 315530, 316292) THEN '7 CIA PM IND'
             WHEN OCO.codigo_municipio = 311860 AND OCO.unidade_area_militar_nome LIKE '%39 BPM%' AND OCO.unidade_area_militar_nome NOT LIKE '%TM%' THEN '39 BPM'
             WHEN OCO.codigo_municipio = 311860 AND OCO.unidade_area_militar_nome LIKE '%18 BPM%' AND OCO.unidade_area_militar_nome NOT LIKE '%TM%' THEN '18 BPM'
             WHEN OCO.codigo_municipio = 310670 AND OCO.unidade_area_militar_nome LIKE '%66 BPM%' AND OCO.unidade_area_militar_nome NOT LIKE '%TM%' THEN '66 BPM'
             WHEN OCO.codigo_municipio = 310670 AND OCO.unidade_area_militar_nome LIKE '%33 BPM%' AND OCO.unidade_area_militar_nome NOT LIKE '%TM%' THEN '33 BPM'
             ELSE 'OUTROS' 
        END AS UEOP,
        OCO.unidade_area_militar_codigo,
        OCO.unidade_area_militar_nome,
        OCO.unidade_responsavel_registro_codigo,
        OCO.unidade_responsavel_registro_nome,
        CASE WHEN OCO.unidade_responsavel_registro_nome LIKE '%TM/%' THEN 'SIM' END AS TM,
        CAST(NULL AS STRING) AS matriculas_militares, -- Placeholder para alinhar com a UNION
        OCO.natureza_codigo,
        OCO.natureza_descricao,
        OCO.natureza_ind_consumado,
        COALESCE(PR.quantidade_presos, 0) AS presos_roubo,
        COALESCE(PH.quantidade_presos, 0) AS presos_homicidio
    FROM db_bisp_reds_reporting.tb_ocorrencia OCO
    -- Correção: Adicionados os JOINs que faltavam para evitar erro de referência
    LEFT JOIN PRESOS_R PR ON OCO.numero_ocorrencia = PR.numero_ocorrencia
    LEFT JOIN PRESOS_H PH ON OCO.numero_ocorrencia = PH.numero_ocorrencia
    WHERE OCO.numero_ocorrencia = '2025-016118327-001'
),

TODOS AS (
    -- Consolidação de todos os registros da 2ª RPM (Exceto Letalidade)
    SELECT 
        OCO.numero_ocorrencia,
        FROM_TIMESTAMP(OCO.data_hora_fato, 'dd/MM/yy') AS data_fato,
        MONTH(OCO.data_hora_fato) AS mes_fato,
        CASE WHEN OCO.codigo_municipio IN (315460) THEN '40 BPM'
             WHEN OCO.codigo_municipio IN (310900, 312980, 314015, 316553) THEN '48 BPM'
             WHEN OCO.codigo_municipio IN (312410) THEN '6 CIA PM IND'
             WHEN OCO.codigo_municipio IN (310810, 312060, 312600, 313010, 313220, 313665, 314070, 315040, 315530, 316292) THEN '7 CIA PM IND'
             WHEN OCO.codigo_municipio = 311860 AND OCO.unidade_area_militar_nome LIKE '%39 BPM%' AND OCO.unidade_area_militar_nome NOT LIKE '%TM%' THEN '39 BPM'
             WHEN OCO.codigo_municipio = 311860 AND OCO.unidade_area_militar_nome LIKE '%18 BPM%' AND OCO.unidade_area_militar_nome NOT LIKE '%TM%' THEN '18 BPM'
             WHEN OCO.codigo_municipio = 310670 AND OCO.unidade_area_militar_nome LIKE '%66 BPM%' AND OCO.unidade_area_militar_nome NOT LIKE '%TM%' THEN '66 BPM'
             WHEN OCO.codigo_municipio = 310670 AND OCO.unidade_area_militar_nome LIKE '%33 BPM%' AND OCO.unidade_area_militar_nome NOT LIKE '%TM%' THEN '33 BPM'
             ELSE 'OUTROS' 
        END AS UEOP,
        OCO.unidade_area_militar_codigo,
        OCO.unidade_area_militar_nome,
        OCO.unidade_responsavel_registro_codigo,
        OCO.unidade_responsavel_registro_nome,
        CASE WHEN OCO.unidade_responsavel_registro_nome LIKE '%TM/%' THEN 'SIM' END AS TM,
        COALESCE(G.matriculas_militares, 'SEM MILITARES') AS matriculas_militares,
        OCO.natureza_codigo,
        OCO.natureza_descricao,
        OCO.natureza_ind_consumado,
        COALESCE(PR.quantidade_presos, 0) AS presos_roubo,
        COALESCE(PH.quantidade_presos, 0) AS presos_homicidio
    FROM db_bisp_reds_reporting.tb_ocorrencia OCO
    LEFT JOIN GUARNICAO G ON OCO.numero_ocorrencia = G.numero_ocorrencia
    LEFT JOIN PRESOS_R PR ON OCO.numero_ocorrencia = PR.numero_ocorrencia
    LEFT JOIN PRESOS_H PH ON OCO.numero_ocorrencia = PH.numero_ocorrencia
    LEFT JOIN LETALIDADE LET ON OCO.numero_ocorrencia = LET.numero_ocorrencia 
    WHERE YEAR(OCO.data_hora_fato) = :ANO 
      AND OCO.digitador_id_orgao = 0 
      AND OCO.natureza_codigo IN ('B01121', 'C01157', 'B01504', 'A05000')
      AND OCO.codigo_municipio IN (310670, 310810, 310900, 311860, 312060, 312410, 312600, 312980, 313010, 313220, 313665, 314015, 314070, 315040, 315460, 315530, 316292, 316553)
      AND LET.numero_ocorrencia IS NULL    
)

-- Resultado final unindo Auditoria e Base Total
SELECT * FROM REDS_AUDITORIA
UNION ALL 
SELECT * FROM TODOS;