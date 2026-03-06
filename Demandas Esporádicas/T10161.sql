SELECT 
    OCO.numero_ocorrencia,
    VO.numero_reg,
    VO.placa,
    VO.prefixo,
    VO.codigo_tipo_viatura,
    GROUP_CONCAT(DISTINCT GUA.numero_matricula) AS MATRICULA_INTEGRANTES_GUARNICAO,
    OCO.natureza_codigo,
    FROM_TIMESTAMP(OCO.data_hora_fato,'dd/MM/yy') AS data_fato, 
    FROM_TIMESTAMP(OCO.data_hora_fato,'HH:mm') AS hora_fato,   
    
    -- INÍCIO: Conteúdo da coluna RPM_2025
    CASE 
   		WHEN OCO.codigo_municipio IN (310670 , 310810 , 310900 , 311860 , 312060 , 312410 , 312600 , 312980 , 313010 , 313220 , 313665 , 314015 , 314070 , 315040 , 315460 , 315530 , 316292 , 316553) THEN '02 RPM'	
	ELSE 'OUTROS'
   	END AS RPM_2025,
    -- FIM: Conteúdo da coluna RPM_2025
    
    -- INÍCIO: Conteúdo da coluna UEOP_2025
        CASE
        WHEN OCO.codigo_municipio IN (315460) THEN '40 BPM'
        WHEN OCO.codigo_municipio IN (310900, 312980, 314015, 316553) THEN '48 BPM'
        WHEN OCO.codigo_municipio IN (312410) THEN '6 CIA PM IND'
        WHEN OCO.codigo_municipio IN (310810, 312060, 312600, 313010, 313220, 313665, 314070, 315040, 315530, 316292) THEN '7 CIA PM IND'
        WHEN OCO.codigo_municipio = 311860 AND (OCO.unidade_area_militar_nome LIKE '39 BPM%' OR OCO.unidade_area_militar_nome LIKE '%/39 BPM%') AND (OCO.unidade_area_militar_nome NOT LIKE '%TM%') THEN '39 BPM'
        WHEN OCO.codigo_municipio = 311860 AND (OCO.unidade_area_militar_nome LIKE '18 BPM%' OR OCO.unidade_area_militar_nome LIKE '%/18 BPM%') AND (OCO.unidade_area_militar_nome NOT LIKE '%TM%') THEN '18 BPM'
        WHEN OCO.codigo_municipio = 310670 AND (OCO.unidade_area_militar_nome LIKE '66 BPM%' OR OCO.unidade_area_militar_nome LIKE '%/66 BPM%') AND (OCO.unidade_area_militar_nome NOT LIKE '%TM%') THEN '66 BPM'
        WHEN OCO.codigo_municipio = 310670 AND (OCO.unidade_area_militar_nome LIKE '33 BPM%' OR OCO.unidade_area_militar_nome LIKE '%/33 BPM%') AND (OCO.unidade_area_militar_nome NOT LIKE '%TM%') THEN '33 BPM'
        ELSE 'OUTROS'
    END AS UEOP_2025,
    -- FIM: Conteúdo da coluna UEOP_2025
    
    ibge.tipo_descricao,
    OCO.nome_municipio,
    OCO.unidade_area_militar_nome,
    MUB.udi,
    MUB.ueop,
    MUB.cia,
    MUB.codigo_espacial_pm AS setor_PM,
    OCO.unidade_responsavel_registro_nome
FROM 
    db_bisp_reds_reporting.tb_ocorrencia OCO
INNER JOIN 
    db_bisp_reds_reporting.tb_viatura_ocorrencia VO ON OCO.numero_ocorrencia = VO.numero_ocorrencia
INNER JOIN 
    db_bisp_reds_reporting.tb_integrante_guarnicao_ocorrencia GUA 
    ON GUA.numero_ocorrencia = VO.numero_ocorrencia 
    AND GUA.numero_sequencial_viatura = VO.numero_sequencial_viatura -- Join correto para ligar militar à viatura específica
LEFT JOIN 
    db_bisp_reds_master.tb_ocorrencia_setores_geodata AS geo 
    ON OCO.numero_ocorrencia = geo.numero_ocorrencia AND OCO.ocorrencia_uf = 'MG'
LEFT JOIN 
    db_bisp_shared.tb_ibge_setores_geodata AS ibge 
    ON geo.setor_codigo = ibge.setor_codigo
LEFT JOIN 
    db_bisp_shared.tb_pmmg_setores_geodata AS MUB  
    ON geo.setor_codigo = MUB.setor_codigo
WHERE 
    1=1
    AND OCO.digitador_id_orgao = 0
    AND OCO.ind_estado = 'F'
    AND OCO.ocorrencia_uf = 'MG'
    AND YEAR (OCO.data_hora_fato) = 2025
    AND (OCO.unidade_responsavel_registro_nome LIKE  '%/2 RPM%' OR OCO.unidade_responsavel_registro_nome LIKE  '%/2RPM%')
    AND OCO.natureza_codigo = 'T10161'
    AND VO.codigo_tipo_viatura = 'P' -- viatura principal
GROUP BY 
    OCO.numero_ocorrencia,
    VO.numero_reg,
    VO.placa,
    VO.prefixo,
    VO.codigo_tipo_viatura,
    OCO.natureza_codigo,
    OCO.nome_municipio,
    -- Campos de data/hora (ou o resultado da função, dependendo do motor SQL)
    FROM_TIMESTAMP(OCO.data_hora_fato,'dd/MM/yy'), -- data_fato (ajustado)
    FROM_TIMESTAMP(OCO.data_hora_fato,'HH:mm'),   -- hora_fato (ajustado)
    
    -- Campos de CASE WHEN
    RPM_2025,
    UEOP_2025,
    
    ibge.tipo_descricao,
    OCO.unidade_area_militar_nome,
    MUB.udi,
    MUB.ueop,
    MUB.cia,
    setor_PM,
    OCO.unidade_responsavel_registro_nome
ORDER BY 
    OCO.numero_ocorrencia;