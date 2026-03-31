/***************************************************************************************
 * RELATÓRIO DE EFETIVO EM SUPERVISÕES E FISCALIZAÇÕES (X01000 / X02000)
 * OBJETIVO: Mapear integrantes de guarnição em registros da 2ª RPM.
 * PERÍODO: Ano 2026
 ***************************************************************************************/

SELECT
    -- [DADOS DA OCORRÊNCIA]
    OCO.numero_ocorrencia,
    OCO.natureza_codigo,
    OCO.natureza_descricao,
    FROM_TIMESTAMP(OCO.data_hora_fato, 'dd/MM/yy') AS data_fato,
    MONTH(OCO.data_hora_fato)                      AS mes_fato,

    -- [DADOS DO INTEGRANTE]
    IGO.numero_matricula,
    IGO.nome,
    IGO.nome_cargo,

    -- [UNIDADE DE REGISTRO]
    OCO.unidade_responsavel_registro_codigo,
    OCO.unidade_responsavel_registro_nome

FROM db_bisp_reds_reporting.tb_ocorrencia AS OCO

LEFT JOIN db_bisp_reds_reporting.tb_integrante_guarnicao_ocorrencia AS IGO 
    ON OCO.numero_ocorrencia = IGO.numero_ocorrencia

WHERE 
    -- Filtro de Período
    YEAR(OCO.data_hora_fato) = 2026
    
    -- Filtro de Abrangência (2ª RPM)
    AND (OCO.unidade_responsavel_registro_nome LIKE '%/2 RPM%' 
         OR OCO.unidade_responsavel_registro_nome LIKE '%/2RPM%')
    
    -- Filtro de Naturezas
    AND OCO.natureza_codigo IN ('X01000', 'X02000')
