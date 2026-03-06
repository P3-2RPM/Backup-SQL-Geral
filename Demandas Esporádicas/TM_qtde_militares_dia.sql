WITH 
MILITARES AS (																	
				SELECT 
    			IGO.guarnicao_id,
        		COUNT(DISTINCT IGO.pessoa_codigo_usuario) AS quantidade_militares			-- cria uma coluna contando a quantidade de MILITARES distintos
				FROM db_bisp_escala_reporting.tb_guarnicao_pessoa IGO
				LEFT JOIN db_bisp_escala_reporting.tb_guarnicao GUPM ON IGO.guarnicao_id = GUPM.guarnicao_id
				WHERE 1 = 1 
        		AND YEAR (GUPM.horario_inicio_ativacao) = :ANO
        		AND IGO.funcao_id IN (13,12,5,8) 											-- funcao de patrulheiro, comandante de guarnicao, condutor / motorista, cmd tático
				AND IGO.pessoa_codigo_status = 'A'											-- STATUS ATIVO, para retirar os desabilitados
				GROUP BY IGO.guarnicao_id
			)
SELECT
ESC.escala_id,
MIL.guarnicao_id,
ESC.unidade_nome,
ESC.unidade_codigo,
FROM_TIMESTAMP(ESC.data_hora_inicio, 'dd/MM/yy') AS data_escala,
FROM_TIMESTAMP(GUPM.horario_inicio_ativacao, 'dd/MM/yy') AS data_ativacao,
MONTH (GUPM.horario_inicio_ativacao) as mes_ativacao,
CASE 	WHEN ESC.unidade_nome LIKE  '%TM/%' THEN 'SIM'
    	END TM,
COALESCE(MIL.quantidade_militares, 0) AS qtde_pm_tm
FROM db_bisp_escala_reporting.tb_escala ESC
LEFT JOIN db_bisp_escala_reporting.tb_guarnicao GUPM ON ESC.escala_id = GUPM.escala_id
LEFT JOIN MILITARES MIL ON MIL.guarnicao_id = GUPM.guarnicao_id
WHERE 1=1
--    AND YEAR(ESC.data_hora_inicio) = :ANO 
    AND YEAR(GUPM.horario_inicio_ativacao) = :ANO 
    AND ESC.unidade_direcao_nome = '2 RPM'
    AND ESC.servico_id = 13  -- Filtra serviço Tático Móvel 