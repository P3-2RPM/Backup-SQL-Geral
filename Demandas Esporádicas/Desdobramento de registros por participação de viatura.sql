SELECT
    OCO.numero_ocorrencia,                      				-- 1. Número identificador único da ocorrência
    OCO.nome_bairro,                            				-- 2. Nome do bairro onde o fato ocorreu
    VO.numero_sequencial_viatura,               				-- 3. Número sequencial de identificação da viatura envolvida
    VO.placa,                                   				-- 4. Placa de identificação da viatura
    VO.codigo_tipo_viatura,                     				-- 5. Código que descreve o tipo da viatura (ex: rádio-patrulha, unidade de resgate)
    OCO.nome_tipo_relatorio,                    				-- 6. Nome do tipo de relatório gerado para a ocorrência
    OCO.natureza_codigo,                        				-- 7. Código da natureza principal da ocorrência
    OCO.natureza_descricao,                     				-- 8. Descrição detalhada da natureza principal da ocorrência
    OCO.natureza_ind_consumado,                 				-- 9. Indicador de se a natureza da ocorrência foi consumada ('S' para sim, 'N' para não, etc.)
    OCO.responsavel_apreensao_id_orgao,         				-- 10. ID do órgão responsável por alguma apreensão relacionada à ocorrência (se houver)
    OCO.ind_tco,                                				-- 11. Indicador de se a ocorrência gerou um Termo Circunstanciado de Ocorrência (TCO)
    FROM_TIMESTAMP(OCO.data_hora_fato, 'dd/MM/yy') AS data_fato,		-- 12. Data do fato (ocorrência) formatada no padrão DD/MM/AA
    FROM_TIMESTAMP(OCO.data_hora_inclusao, 'HH') AS hora_inclusao,		-- 13. Hora em que a ocorrência foi incluída no sistema (apenas a hora)
    OCO.unidade_area_militar_nome,              				-- 14. Nome da unidade de área militar (ex: Companhia, Batalhão)
    MUB.udi,                                    				-- 15. Identificador da Unidade de Direção Integrada (UDI) da Polícia Militar
    MUB.ueop,                                   				-- 16. Unidade de Execução Operacional (UEOP) da Polícia Militar
    MUB.cia,                                    				-- 17. Companhia (CIA) da Polícia Militar
    MUB.codigo_espacial_pm AS setor_PM,         				-- 18. Código espacial do setor de policiamento da Polícia Militar
    OCO.unidade_responsavel_registro_nome       				-- 19. Nome da unidade que foi responsável por registrar a ocorrência
FROM db_bisp_reds_reporting.tb_ocorrencia OCO
LEFT JOIN db_bisp_reds_reporting.tb_viatura_ocorrencia VO on OCO.numero_ocorrencia = VO.numero_ocorrencia
LEFT JOIN db_bisp_reds_master.tb_ocorrencia_setores_geodata AS geo ON OCO.numero_ocorrencia = geo.numero_ocorrencia AND OCO.ocorrencia_uf = 'MG'
LEFT JOIN db_bisp_shared.tb_pmmg_setores_geodata AS MUB  ON geo.setor_codigo = MUB.setor_codigo
WHERE 1=1
    AND OCO.digitador_id_orgao = 0                              -- Filtra ocorrências onde o ID do órgão digitador é a Polícia Militar
    AND OCO.ind_estado = 'F'                                    -- Filtra ocorrências que estão no estado 'F' (fechadas)
    AND OCO.ocorrencia_uf = 'MG'                                -- Restringe as ocorrências à Unidade Federativa de Minas Gerais
    AND YEAR(OCO.data_hora_fato) = 2025                         -- Seleciona apenas as ocorrências cujo fato ocorreu no ano de 2025
    -- Filtra as ocorrências pelas quais o registro foi feito pela 2 RPM
    AND (OCO.unidade_responsavel_registro_nome like '%/2 RPM' OR OCO.unidade_responsavel_registro_nome like '%/2RPM' OR OCO.unidade_responsavel_registro_nome like '%/2 CIA PM IND PVD%')
GROUP BY
    1,  -- OCO.numero_ocorrencia
    2,  -- OCO.nome_bairro
    3,  -- VO.numero_sequencial_viatura
    4,  -- VO.placa
    5,  -- VO.codigo_tipo_viatura
    6,  -- OCO.nome_tipo_relatorio
    7,  -- OCO.natureza_codigo
    8,  -- OCO.natureza_descricao
    9,  -- OCO.natureza_ind_consumado
    10, -- OCO.responsavel_apreensao_id_orgao
    11, -- OCO.ind_tco
    12, -- data_fato (FROM_TIMESTAMP(OCO.data_hora_fato, 'dd/MM/yy'))
    13, -- hora_inclusao (FROM_TIMESTAMP(OCO.data_hora_inclusao, 'HH'))
    14, -- OCO.unidade_area_militar_nome
    15, -- MUB.udi
    16, -- MUB.ueop
    17, -- MUB.cia
    18, -- setor_PM (MUB.codigo_espacial_pm)
    19; -- OCO.unidade_responsavel_registro_nome