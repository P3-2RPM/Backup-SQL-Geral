WITH 
BaseAutores AS (
    SELECT
        ENV.nome_completo_envolvido AS nome_autor,
        ENV.data_nascimento AS data_nascimento_autor,
        ENV.nome_mae,
        ENV.numero_documento_id,
        ENV.tipo_documento_descricao,
        CONCAT(
            (CASE 
                WHEN UPPER(ENV.nome_completo_envolvido) IS NULL 
                     OR TRIM(UPPER(ENV.nome_completo_envolvido)) = '' 
                     OR UPPER(ENV.nome_completo_envolvido) LIKE '%DESCONHECID%' 
                     OR UPPER(ENV.nome_completo_envolvido) LIKE '%IGNORAD%' 
                     OR UPPER(ENV.nome_completo_envolvido) LIKE '%IDENTIFICA%' THEN 
                CONCAT('DESCONHECIDO ', CAST(SUBSTRING(ENV.numero_ocorrencia, 6,9) AS STRING), '0', CAST(ENV.numero_envolvido AS STRING))
                ELSE UPPER(ENV.nome_completo_envolvido) 
            END),
            '-',
            (CASE 
                WHEN UPPER(ENV.nome_mae) IS NULL 
                     OR TRIM(UPPER(ENV.nome_mae)) = '' 
                     OR UPPER(ENV.nome_mae) LIKE '%DESCONHECID%' 
                     OR UPPER(ENV.nome_completo_envolvido) LIKE '%IGNORAD%' 
                     OR UPPER(ENV.nome_completo_envolvido) LIKE '%IDENTIFICA%' THEN
                CONCAT(' MAE ', CAST(SUBSTRING(ENV.numero_ocorrencia, 6,9) AS STRING), '0', CAST(ENV.numero_envolvido AS STRING))
                ELSE UPPER(ENV.nome_mae) 
            END),
            '-',
            (CASE 
                WHEN COALESCE(CAST(ENV.data_nascimento AS STRING), '') = '' THEN
                CONCAT('CAMPO NULO ', CAST(SUBSTRING(ENV.numero_ocorrencia, 6,9) AS STRING), '0', CAST(ENV.numero_envolvido AS STRING))
                ELSE CAST(ENV.data_nascimento AS STRING) 
            END)
        ) AS id_autor_unico,
        ENV.numero_individuo_sip,
        ENV.tipo_prisao_apreensao_descricao,
        OCO.numero_ocorrencia,
        OCO.data_hora_fato,
        OCO.nome_municipio,
        OCO.unidade_area_militar_nome,
        OCO.unidade_responsavel_registro_nome 
       
    FROM db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    JOIN db_bisp_reds_reporting.tb_ocorrencia OCO
        ON ENV.numero_ocorrencia = OCO.numero_ocorrencia
    WHERE
        ENV.id_envolvimento IN (35, 36) -- autor e coautor
        AND OCO.ocorrencia_uf = 'MG'
        AND OCO.data_hora_fato >= '2021-01-01'
        AND ENV.natureza_ocorrencia_codigo IN ('B01121')
        AND OCO.digitador_sigla_orgao IN ('PM','PC')               -- Filtra registros feitos pela PM ou PC
        AND ENV.ind_militar_policial IS DISTINCT FROM 'M'
        AND ENV.ind_militar_policial_servico IS DISTINCT FROM 'S'
        AND OCO.codigo_municipio IN (310670, 310810, 310900, 311860, 312060, 312410, 312600, 312980, 313010, 313220, 313665, 314015, 314070, 315040, 315460, 315530, 316292, 316553)
),
HistoricoDesligamento AS (
    SELECT 
      ADM.numero_infopen,
      ADM.numero_sip,
      IND.nome_individuo,
      IND.pai_individuo,
      IND.mae_individuo,
      IND.data_nascimento_individuo,
      IND.telefonesindividuo,
      ADM.data_de_admissao,
      ADM.data_do_desligamento,
      ADM.nome_unidade_origem,
      ADM.nome_unidade_admissao,
      ADM.descricao_tipo_regime_prisao,
      ADM.codigo_motivo_admissao,
      ADM.descricao_motivo_admissao,
      ADM.codigo_tipo_admissao,
      ADM.descricao_tipo_admissao,
      ADM.descricao_finalidade_admissao,
      ADM.descricao_motivo_do_desligamento,
      -- Criamos um ranking: 1 será a data de desligamento mais antiga
      ROW_NUMBER() OVER (
          PARTITION BY ADM.numero_infopen 
          ORDER BY ADM.data_de_admissao DESC
      ) AS ordem_desligamento
    FROM db_bisp_sigpri_reporting.tb_admissao         AS ADM
    JOIN db_bisp_sigpri_reporting.tb_individuo_sigpri AS IND
      ON ADM.numero_sip = IND.numero_sip
      WHERE YEAR (ADM.data_de_admissao) >= 2021
),
ResumoPrisao AS (
SELECT * FROM HistoricoDesligamento 
WHERE ordem_desligamento = 1
),

HistoricoMonitoramento AS (
SELECT
MONIT.idindividuo,
MONIT.numero_sip,
MONIT.data_hora_do_inicio,
MONIT.descricao_tipo_monitorado,
MONIT.duracao_monitoramento,
MONIT.descricao_motivo_finalidade,
MONIT.data_do_desligamento,
MONIT.flag_monitoramento_ativo,
MONIT.descricao_do_desligamento,
MONIT.descricao_motivo_do_desligamento,
ROW_NUMBER() OVER (
          PARTITION BY MONIT.numero_sip 
          ORDER BY MONIT.data_hora_do_inicio DESC
      ) AS ordem_monitoramento
FROM db_bisp_sigpri_reporting.tb_monitoramento_eletronico AS MONIT
WHERE YEAR (MONIT.data_hora_do_inicio) >= 2021
),

ResumoMonitoramento AS (
SELECT * FROM HistoricoMonitoramento
WHERE ordem_monitoramento = 1
),

LETALIDADE AS                                                            -- Define uma CTE chamada LETALIDADE que será usada para filtrar ocorrências
( 
    SELECT                                                                 
        ENV.numero_ocorrencia,                                           -- Seleciona o número da ocorrência da tabela de envolvidos
        ENV.digitador_id_orgao,                                          -- Seleciona o ID do órgão que registrou a ocorrência
        ENV.natureza_ocorrencia_codigo,                                  -- Seleciona o código da natureza da ocorrência
        ENV.data_hora_fato,                                             -- Seleciona a data e hora do fato
        ENV.ind_militar_policial_servico                                -- Seleciona o indicador se o militar estava em serviço
    FROM 
        db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV              -- Tabela origem dos dados de envolvidos
    WHERE 1=1                                                           -- Início das condições de filtro (1=1 é sempre verdadeiro)
        AND ENV.natureza_ocorrencia_codigo IN('B01121','B01129')  -- Filtra natureza específica (Homicídio, Lesão Corporal)
        AND ENV.id_envolvimento IN (35,36,44)                          -- Filtra apenas autores, co-autores e suspeitos
        AND ENV.ind_militar_policial IS NOT DISTINCT FROM 'M'          -- Filtra apenas militares
        AND ENV.ind_militar_policial_servico IS NOT DISTINCT FROM 'S'  -- Filtra apenas militares em serviço
        AND ENV.orgao_lotacao_policial_sigla = 'PM' 				 -- Filtra sigla do órgão policial, PM
        AND ENV.data_hora_fato BETWEEN '2021-01-01 00:00:00' AND '2027-01-01 00:00:00'            -- Filtra pelo mês final informado no parâmetro
)
SELECT 
    BaseAutores.*, 
    COUNT(*) OVER (
        PARTITION BY BaseAutores.id_autor_unico 
        ORDER BY BaseAutores.data_hora_fato 
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS historico_acumulado_autor,
    ADM.numero_infopen,
    ADM.data_de_admissao as data_entrada_ultima_prisao,
    ADM.descricao_motivo_admissao as motivo_entrada_ultima_prisao,
    ADM.descricao_tipo_regime_prisao as descricao_regime,
    ADM.data_do_desligamento as data_saida_ultima_prisao,
    ADM.descricao_motivo_do_desligamento,
    COALESCE(MON.flag_monitoramento_ativo, "SEM_MONITORAMENTO") AS monitoramento_eletronico,
    MON.data_hora_do_inicio as dia_inicio_monitoramento_mais_recente,
    MON.descricao_motivo_finalidade as motivo_monitoramento,
    MON.data_do_desligamento,
    MON.descricao_motivo_do_desligamento
FROM BaseAutores
LEFT JOIN ResumoPrisao AS ADM 
    ON ADM.numero_sip = BaseAutores.numero_individuo_sip
LEFT JOIN ResumoMonitoramento AS MON 
    ON MON.numero_sip = BaseAutores.numero_individuo_sip
LEFT JOIN LETALIDADE LET 
    ON BaseAutores.numero_ocorrencia = LET.numero_ocorrencia
WHERE LET.numero_ocorrencia IS NULL -- Garante que a ocorrência NÃO esteja na CTE LETALIDADE
ORDER BY BaseAutores.data_hora_fato DESC;