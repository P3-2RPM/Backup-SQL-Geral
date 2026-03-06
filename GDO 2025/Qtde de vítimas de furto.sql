WITH
OCO_VITIMAS AS
(
    SELECT DISTINCT
        env.numero_ocorrencia,
        1 AS SINALIZA_VITIMA -- Sinaliza que esta ocorrência tem pelo menos uma vítima de 'FURTO' (C01155)
    FROM
        db_bisp_reds_reporting.tb_envolvido_ocorrencia AS env
    WHERE
        env.natureza_ocorrencia_codigo = 'C01155' -- Filtra ocorrências de "FURTO"
        AND env.digitador_id_orgao IN (0, 1) -- Filtra órgãos digitadores: PM (0) ou PC (1)
        AND env.id_envolvimento IN (25, 26, 27, 28, 32, 872, 1097) -- Filtra por IDs de envolvimento que representam 'VÍTIMAS'
        AND YEAR(env.data_hora_fato) = 2025 -- Filtra eventos ocorridos no ano de 2025
)
SELECT
    OCO.numero_ocorrencia,
    COUNT(DISTINCT CASE
        WHEN env.natureza_ocorrencia_codigo = 'C01155' -- Verifica se a natureza do envolvido é 'FURTO'
        AND (
            (env.id_envolvimento IN (25, 26, 27, 28, 32, 872, 1097)) -- Condição 1: É uma VÍTIMA
            OR
            (
                env.id_envolvimento IN (43) -- Condição 2: É um SOLICITANTE
                AND OV.sinaliza_vitima IS NULL -- E a ocorrência NÃO tem VÍTIMA registrada na CTE OCO_VITIMAS (evita duplicidade com a CTE)
            )
        )
        AND oco.ind_estado = 'F' -- Garante que a ocorrência esteja "Fechada"
        AND oco.ocorrencia_uf = 'MG' -- Garante que a UF da ocorrência seja "MG"
        AND oco.digitador_sigla_orgao IN ('PM', 'PC') -- Garante que o órgão digitador seja PM ou PC (para esta contagem específica)
        THEN env.numero_ocorrencia -- Se todas as condições forem TRUE, conta o número da ocorrência
    END) AS total_vitimas_furto -- Renomeia a coluna resultante para 'total_vitimas_furto'
FROM
    db_bisp_reds_reporting.tb_ocorrencia AS oco -- Tabela principal de ocorrências
LEFT JOIN
    db_bisp_reds_reporting.tb_envolvido_ocorrencia AS env -- Junta com a tabela de envolvidos para detalhes do envolvimento
    ON oco.numero_ocorrencia = env.numero_ocorrencia
LEFT JOIN
    OCO_VITIMAS OV -- Junta com a CTE OCO_VITIMAS para verificar a existência de vítimas
    ON oco.numero_ocorrencia = OV.numero_ocorrencia
WHERE
    OCO.digitador_id_orgao = 0 -- Filtra ocorrências digitadas apenas pela PM (0)
    AND OCO.ind_estado = 'F' -- Filtra ocorrências no estado "Fechado"
    AND OCO.ocorrencia_uf = 'MG' -- Filtra ocorrências do estado de Minas Gerais
    AND YEAR(OCO.data_hora_fato) = 2025 -- Filtra ocorrências do ano de 2025
    -- Filtra as unidades responsáveis pelo registro, considerando variações no nome
    AND (
        OCO.unidade_responsavel_registro_nome LIKE '%/2 RPM%'
        OR OCO.unidade_responsavel_registro_nome LIKE '%/2RPM%'
        OR OCO.unidade_responsavel_registro_nome LIKE '%/2 CIA PM IND PVD%'
    )
        AND env.natureza_ocorrencia_codigo IN ('C01155','C01157','C01158') -- FILTRA NATUREZA DA OCORRÊNCIA (ROUBO, FURTO, EXTORSÃO)
    AND (
        env.id_envolvimento IN (25,32,1097,26,27,28,872) -- VÍTIMAS
        OR (env.id_envolvimento IN (43) AND env.natureza_ocorrencia_codigo = 'C01155') -- SOLICITANTE
    )
    AND oco.nome_tipo_relatorio NOT IN ('BOS','RAT') -- EXCLUI RELATÓRIOS BOS E RAT
GROUP BY
    OCO.numero_ocorrencia; -- Agrupa pelo número da ocorrência para obter a contagem por ocorrência