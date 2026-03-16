/* PROJETO: Análise de Tempo de Espera - Plantão Digital
   DESCRIÇÃO: Calcula o gap temporal entre o encerramento do REDS e o recebimento pela autoridade policial.
   DATA DE ATUALIZAÇÃO: 16/03/2026
   CRIAÇÃO: Sgt Maykol - 2ª RPM
*/

WITH Base_Ocorrencias AS (
    -- Subconsulta para tratar as datas e extrair a UEOP antes dos cálculos principais
    SELECT 
        OCO.numero_ocorrencia,
        OCO.data_hora_fato,
        OCO.unidade_area_militar_nome AS unidade_area,
        OCO.unidade_responsavel_registro_nome AS unidade_registro,
        OCO.natureza_codigo,
        OCO.natureza_descricao,
        OCO.nome_municipio,
        -- Extração da UEOP via Regex
        REGEXP_EXTRACT(OCO.unidade_responsavel_registro_nome, '([^/]+)/[^/]+$', 1) AS ueop_registro,
        -- Definição dos marcos temporais (Tratamento de Nulos)
        COALESCE(OCO.data_hora_primeiro_fim_preenchimento, OCO.data_hora_fim_preenchimento) AS primeiro_encerramento,
        COALESCE(REC.data_hora_envio_autoridade, REC.data_hora_fechamento) AS data_hora_recibo,
        -- Dados de Localização (MUB)
        COALESCE(MUB.udi, 'SEM INFORMAÇÃO') AS udi,
        COALESCE(MUB.ueop, 'SEM INFORMAÇÃO') AS ueop_area,
        COALESCE(MUB.cia, 'SEM INFORMAÇÃO') AS cia_area
    FROM db_bisp_reds_reporting.tb_ocorrencia OCO
    INNER JOIN db_bisp_reds_reporting.tb_recibo REC 
        ON OCO.numero_ocorrencia = REC.numero_ocorrencia
    LEFT JOIN db_bisp_reds_master.tb_ocorrencia_setores_geodata AS geo 
        ON OCO.numero_ocorrencia = geo.numero_ocorrencia 
    LEFT JOIN db_bisp_shared.tb_pmmg_setores_geodata AS MUB 
        ON geo.setor_codigo = MUB.setor_codigo 
    WHERE OCO.data_hora_fato > '2021-09-18 00:00:00.000'
      AND OCO.digitador_id_orgao = 0
      AND (OCO.unidade_responsavel_registro_nome LIKE '%/2 RPM%' OR OCO.unidade_responsavel_registro_nome LIKE '%/2RPM%')
      AND REC.unidade_destinataria_codigo = 'C03162'
),
QTDE_PRESOS AS (
    -- Contagem direta de presos por ocorrência considerando cada linha da tabela de envolvidos
    SELECT
        ENV.numero_ocorrencia,
        COUNT(*) AS total_presos
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    WHERE ENV.data_hora_fato > '2021-09-18 00:00:00.000'
      AND ENV.digitador_id_orgao = 0
      AND ENV.id_tipo_prisao_apreensao IN (1, 2, 3, 4, 6, 7)
    GROUP BY ENV.numero_ocorrencia
)
SELECT
    B.numero_ocorrencia,
    FROM_TIMESTAMP(B.data_hora_fato, 'dd/MM/yy') AS data_fato,
    YEAR(B.data_hora_fato) AS ano_fato,
    MONTH(B.data_hora_fato) AS mes_fato,
    B.unidade_area,
    B.unidade_registro,
    B.ueop_registro,
    B.natureza_codigo,
    B.natureza_descricao,
    B.nome_municipio,
    B.udi,
    B.ueop_area,
    B.cia_area,
    
    -- Marcador de validação (se tem preso, é ocorrência de delegacia de plantão)
    COALESCE(QP.total_presos, 0) AS total_presos,
    
    -- Timestamps Formatados
    B.primeiro_encerramento,
    B.data_hora_recibo,
    
    -- Cálculos de Tempo (Diferença entre Recibo e Encerramento)
    (UNIX_TIMESTAMP(B.data_hora_recibo) - UNIX_TIMESTAMP(B.primeiro_encerramento)) AS tempo_espera_segundos,
    ROUND((UNIX_TIMESTAMP(B.data_hora_recibo) - UNIX_TIMESTAMP(B.primeiro_encerramento)) / 60, 2) AS tempo_espera_minutos,
    ROUND((UNIX_TIMESTAMP(B.data_hora_recibo) - UNIX_TIMESTAMP(B.primeiro_encerramento)) / 3600, 2) AS tempo_espera_horas

FROM Base_Ocorrencias B
LEFT JOIN QTDE_PRESOS QP ON B.numero_ocorrencia = QP.numero_ocorrencia
ORDER BY B.data_hora_fato DESC;

--- Insiders rápidos
/* PROJETO: Dashboard de Performance - Plantão Digital 2ª RPM
   DESCRIÇÃO: Consolida média de espera e volume de ocorrências por unidade.
*/

WITH Base_Calculada AS (
    SELECT 
        REGEXP_EXTRACT(OCO.unidade_responsavel_registro_nome, '([^/]+)/[^/]+$', 1) AS ueop_registro,
        OCO.nome_municipio,
        -- Cálculo da diferença em segundos entre Recibo e Encerramento
        (UNIX_TIMESTAMP(COALESCE(REC.data_hora_envio_autoridade, REC.data_hora_fechamento)) - 
         UNIX_TIMESTAMP(COALESCE(OCO.data_hora_primeiro_fim_preenchimento, OCO.data_hora_fim_preenchimento))) AS tempo_espera_seg
    FROM db_bisp_reds_reporting.tb_ocorrencia OCO
    LEFT JOIN db_bisp_reds_reporting.tb_recibo REC 
        ON OCO.numero_ocorrencia = REC.numero_ocorrencia
    WHERE YEAR(OCO.data_hora_fato) = 2026
      AND OCO.digitador_id_orgao = 0
      AND (OCO.unidade_responsavel_registro_nome LIKE '%/2 RPM%' OR OCO.unidade_responsavel_registro_nome LIKE '%/2RPM%')
      AND REC.unidade_destinataria_codigo = 'C03162'
)

SELECT
    ueop_registro,
    nome_municipio,
    COUNT(*) AS qtd_ocorrencias,
    -- Média de espera formatada
    ROUND(AVG(tempo_espera_seg) / 60, 2) AS media_espera_minutos,
    ROUND(AVG(tempo_espera_seg) / 3600, 2) AS media_espera_horas,
    -- Identifica o maior tempo de espera do grupo (Gargalo Máximo)
    ROUND(MAX(tempo_espera_seg) / 60, 2) AS maior_espera_minutos
FROM Base_Calculada
GROUP BY 1, 2
ORDER BY media_espera_minutos DESC;
