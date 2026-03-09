/*
================================================================================
PROJETO: Auditoria de Empenho de Efetivo (Escalas de Serviço) - 2ª RPM
DESCRIÇÃO: Script para extração de dados de escalas e guarnições, consolidando
           as matrículas dos militares empenhados e a contagem total por guarnição.
           Utiliza a base de dados de escala (tb_guarnicao_pessoa).
PARÂMETROS: :ANO - Ano de referência para ativação das guarnições.
================================================================================
*/

WITH MILITARES AS (																	
    -- Consolida os militares ativos (Status 'A') por guarnição
    SELECT 
        IGO.guarnicao_id,
        -- Agrupa as matrículas em uma única string separada por vírgula
        GROUP_CONCAT(DISTINCT IGO.pessoa_codigo_usuario, ', ') AS matriculas_militares,
        -- Contabiliza o total de militares distintos na equipe
        COUNT(DISTINCT IGO.pessoa_codigo_usuario) AS quantidade_militares
    FROM db_bisp_escala_reporting.tb_guarnicao_pessoa IGO
    LEFT JOIN db_bisp_escala_reporting.tb_guarnicao GUPM 
        ON IGO.guarnicao_id = GUPM.guarnicao_id
    WHERE IGO.pessoa_codigo_status = 'A' -- Filtra apenas militares em status ativo
      AND YEAR(GUPM.horario_inicio_ativacao) = :ANO
    GROUP BY IGO.guarnicao_id
)

/* CONSULTA PRINCIPAL: Cruzamento entre Escala e Guarnição Ativada */
SELECT
    ESC.escala_id,
    MIL.guarnicao_id,
    ESC.descricao AS escala_descricao,
    ESC.servico_descricao,
    ESC.servico_codigo,
    ESC.unidade_nome,
    ESC.unidade_codigo,
    FROM_TIMESTAMP(ESC.data_hora_inicio, 'dd/MM/yy') AS data_escala,
    FROM_TIMESTAMP(GUPM.horario_inicio_ativacao, 'dd/MM/yy') AS data_ativacao,
    MONTH(GUPM.horario_inicio_ativacao) AS mes_ativacao,
    MIL.matriculas_militares,
    COALESCE(MIL.quantidade_militares, 0) AS qtde_pm

FROM db_bisp_escala_reporting.tb_escala AS ESC
-- Relaciona a escala com as guarnições ativadas nela
LEFT JOIN db_bisp_escala_reporting.tb_guarnicao GUPM 
    ON ESC.escala_id = GUPM.escala_id
-- Relaciona com a CTE de militares para trazer a composição da equipe
LEFT JOIN MILITARES MIL 
    ON MIL.guarnicao_id = GUPM.guarnicao_id

WHERE 1 = 1
    AND YEAR(GUPM.horario_inicio_ativacao) = :ANO 
    AND ESC.unidade_direcao_nome = '2 RPM' -- Filtro de abrangência regional

ORDER BY 
    data_ativacao DESC, 
    ESC.unidade_nome;
