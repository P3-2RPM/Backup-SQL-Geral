WITH
QTDE_MILITARES AS (
    SELECT
        ESC.recurso_id,
        GROUP_CONCAT(DISTINCT ESC.pessoa_codigo_usuario, ', ') AS matriculas_militares,
        COUNT(DISTINCT ESC.pessoa_codigo_usuario) AS qtde_pm
    FROM
        db_bisp_cad_reporting.tb_recurso_componente ESC
    WHERE
        1 = 1
        AND YEAR(ESC.recurso_data_hora_ativacao) = :ANO
        AND ESC.funcao_componente_orgao_id = 0  -- POLÍCIA MILITAR
        AND ESC.funcao_componente_id IN (2, 5, 7, 8, 12, 13, 19, 38, 39, 86) -- funcao de condutor, comandante guarnicao, patrulheiro, Cmt tático
        AND (ESC.nome_unidade LIKE '%/2 RPM%' OR ESC.nome_unidade LIKE '%/2RPM%')
    GROUP BY
        ESC.recurso_id
)
SELECT
    GP.recurso_id,
    GP.recurso_versao_id,
    GP.recurso_codigo_prefixo,
    FROM_TIMESTAMP(GP.recurso_data_hora_inclusao, 'dd/MM/yy') AS data_inclusao,
	FROM_TIMESTAMP(GP.recurso_data_hora_ativacao, 'dd/MM/yy') AS data_ativacao,
    MONTH(GP.recurso_data_hora_ativacao) AS mes_ativacao,
    GP.recurso_data_hora_ativacao,
    GP.recurso_data_hora_expiracao,
    GP.unidade_servico_nome,
    GP.unidade_servico_codigo,
    CASE
        WHEN GP.unidade_servico_nome LIKE '%TM/%' THEN 'SIM'
    END AS TM,
    COALESCE(MIL.matriculas_militares, 'SEM PM') AS matriculas_militares,
    COALESCE(MIL.qtde_pm, 0) AS qtde_pm_tm
FROM
    db_bisp_cad_reporting.tb_recurso GP
INNER JOIN
    QTDE_MILITARES MIL ON MIL.recurso_id = GP.recurso_id
WHERE
    1 = 1
    AND YEAR(GP.recurso_data_hora_ativacao) = :ANO
    AND GP.unidade_servico_codigo_tipo = 'PM'					-- Filtrar PMMG
    AND (GP.unidade_servico_nome LIKE '%/2 RPM%' OR GP.unidade_servico_nome LIKE '%/2RPM%')
    AND GP.tipo_recurso_id IN (393, 1457, 1480)  				-- Filtra recurso tipo Tático Móvel, PPH e CTO
    AND GP.viatura_numero_prefixo IS NOT NULL					-- Considerar apenas os recursos motorizados (versão alternativa)
--    AND GP.sistema_integrado_id = 26 							-- Considerar apenas os recursos previstos da escala(funcionaria se fizesse a escala direito)
    AND GP.viatura_tipo_veiculo IS NOT NULL 					-- Para tirar anomalias tipo TPB, OBRA, ADM, CURSOS, ETC
    AND GP.viatura_tipo_veiculo NOT IN ('MOTOCICLET') 			-- Para tirar os GEPMOR
--    AND TIMESTAMPDIFF(HOUR, GP.recurso_data_hora_expiracao, GP.recurso_data_hora_ativacao) > 2 -- pra tirar aquelas correções simples de recursos
ORDER BY
    GP.recurso_id;