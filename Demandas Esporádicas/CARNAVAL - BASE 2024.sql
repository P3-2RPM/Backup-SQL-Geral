WITH
FILTRO AS(
SELECT DISTINCT OCO.numero_ocorrencia, EV.id_evento ,EV.descricao_evento, OCO.natureza_codigo, OCO.natureza_descricao, OCO.id_local, OCO.natureza_secundaria1_codigo,OCO.ind_violencia_domestica,
OCO.natureza_secundaria2_codigo,OCO.natureza_secundaria3_codigo, OCO.digitador_sigla_orgao , OCO.unidade_area_militar_codigo, OCO.codigo_municipio, OCO.data_hora_fato,
    OCO.unidade_area_militar_nome,     OCO.unidade_responsavel_registro_codigo, 
    OCO.unidade_responsavel_registro_nome, 
	OCO.nome_tipo_relatorio, OCO.local_imediato_codigo , OCO.local_imediato_descricao , OCO.data_hora_fechamento, OCO.numero_chamada_cad, OCO.ind_estado , OCO.complemento_natureza_codigo, OCO.complemento_natureza_descricao
FROM db_bisp_reds_reporting.tb_ocorrencia OCO
LEFT JOIN db_bisp_cad_reporting.vw_chamada_evento EV ON OCO.numero_chamada_cad = EV.numero_chamada AND EV.data_hora_exclusao IS NULL
WHERE 1=1
    AND OCO.ocorrencia_uf ='MG'
    AND OCO.digitador_sigla_orgao IN ('PM','PC') 
    AND OCO.nome_tipo_relatorio IN ('POLICIAL','RAT','BOS','REFAP','TRANSITO')
	AND OCO.data_hora_fato BETWEEN '2024-02-09 00:00:00' AND '2024-02-14 23:59:59' 
    AND OCO.ind_estado IN ('F','R')	
)
,VITIMAS_VARIADAS AS ( 
SELECT ENV.numero_ocorrencia,
	COUNT(DISTINCT CASE 
    WHEN (
        NOT (
            (id_orientacao_sexual = 5 AND id_identidade_genero IN (11, 5, 10, 4))   -- HETERO
            OR (id_orientacao_sexual = 1 AND id_identidade_genero IN (5, 4))        -- HETERO
            OR (id_orientacao_sexual = 4 AND id_identidade_genero IN (5, 11, 10, 4)) -- IGNORADO
        )
        AND id_orientacao_sexual IS NOT NULL
        AND id_identidade_genero IS NOT NULL
    )
   THEN ENV.numero_envolvido
END) AS LGBT,
COUNT(DISTINCT CASE
	WHEN (
	ENV.natureza_ocorrencia_codigo LIKE 'K07%' 
	)
	THEN ENV.numero_envolvido
END)AS RACISMO,
COUNT(DISTINCT CASE
	WHEN (
	F.natureza_codigo IN ('B01121','B01148','B02001','B01504','C01157','C01158','C01159','D01213','D01217') OR
	F.natureza_secundaria1_codigo IN ('B01121','B01148','B02001','B01504','C01157','C01158','C01159','D01213','D01217')OR
	F.natureza_secundaria2_codigo IN ('B01121','B01148','B02001','B01504','C01157','C01158','C01159','D01213','D01217')OR
	F.natureza_secundaria3_codigo IN ('B01121','B01148','B02001','B01504','C01157','C01158','C01159','D01213','D01217'))
	THEN ENV.numero_envolvido
END) AS CV,
COUNT(DISTINCT CASE
WHEN (
	ENV.natureza_ocorrencia_codigo IN ('D01213','D01217'))
	THEN ENV.numero_envolvido
END) AS ESTUPRO,
COUNT(DISTINCT CASE
	WHEN (
	ENV.natureza_ocorrencia_codigo = 'C01155'
	)
	THEN ENV.numero_envolvido
END) AS FURTO,
COUNT(DISTINCT CASE
	WHEN (
	ENV.condicao_fisica_codigo <> '0100' AND
	ENV.natureza_ocorrencia_codigo = 'C01157'
)
	THEN ENV.numero_envolvido
END) AS ICVPA_C01157,
COUNT(DISTINCT CASE
	WHEN (
	
	ENV.natureza_ocorrencia_codigo = 'C01158'
)
	THEN ENV.numero_envolvido
END) AS ICVPA_C01158,
COUNT(DISTINCT CASE
	WHEN (
	
	ENV.natureza_ocorrencia_codigo = 'C01159'
)
	THEN ENV.numero_envolvido
END) AS ICVPA_C01159,
COUNT(DISTINCT CASE
	WHEN (
	ENV.condicao_fisica_codigo = '0100' AND
	ENV.natureza_ocorrencia_codigo = 'C01157'
)
	THEN ENV.numero_envolvido
END) AS IMV_C01157,

COUNT(DISTINCT CASE
	WHEN (
	ENV.condicao_fisica_codigo = '0100' AND
	ENV.natureza_ocorrencia_codigo = 'B01504'
)
	THEN ENV.numero_envolvido
END) AS IMV_B01504,
COUNT(DISTINCT CASE
	WHEN (
	ENV.condicao_fisica_codigo = '0100' AND
	ENV.natureza_ocorrencia_codigo = 'B01129'
)
	THEN ENV.numero_envolvido
END) AS IMV_B01129,
COUNT(DISTINCT CASE
	WHEN (
	ENV.condicao_fisica_codigo = '0100' AND
	ENV.natureza_ocorrencia_codigo = 'B02001'
)
	THEN ENV.numero_envolvido
END) AS IMV_B02001,
COUNT(DISTINCT CASE
	WHEN (
	ENV.condicao_fisica_codigo = '0100' AND
	ENV.natureza_ocorrencia_codigo = 'B01148'
)
	THEN ENV.numero_envolvido
END) AS IMV_B01148,

COUNT(DISTINCT CASE
	WHEN (
	ENV.condicao_fisica_codigo = '0100' AND
	ENV.natureza_ocorrencia_codigo = 'B01121'
)
	THEN ENV.numero_envolvido
END) AS IMV_B01121,

COUNT(DISTINCT CASE
	WHEN (
	ENV.condicao_fisica_codigo <> '0100' AND
	ENV.natureza_ocorrencia_codigo = 'B01121'
)
	THEN ENV.numero_envolvido
END) AS ICVPE_B01121,
COUNT(DISTINCT CASE
	WHEN (
	ENV.condicao_fisica_codigo <> '0100' AND
	ENV.natureza_ocorrencia_codigo = 'B01504'
)
	THEN ENV.numero_envolvido
END) AS ICVPE_B01504,
COUNT(DISTINCT CASE
	WHEN (
	ENV.condicao_fisica_codigo <> '0100' AND
	ENV.natureza_ocorrencia_codigo = 'B02001'
)
	THEN ENV.numero_envolvido
END) AS ICVPE_B02001,
COUNT(DISTINCT CASE
	WHEN (
	ENV.condicao_fisica_codigo <> '0100' AND
	ENV.natureza_ocorrencia_codigo = 'B01148'
)
	THEN ENV.numero_envolvido
END) AS ICVPE_B01148,
COUNT(DISTINCT CASE
WHEN (
	ENV.natureza_ocorrencia_codigo = 'D01505' 
	)
	THEN ENV.numero_envolvido
END)AS IMPORT_SEX,
COUNT(DISTINCT CASE
	WHEN (
	ENV.natureza_ocorrencia_codigo = 'T00009' 
	)
	THEN ENV.numero_envolvido
END) AS ACID_TRANSITO,
COUNT(DISTINCT CASE
	WHEN (
	ENV.condicao_fisica_codigo = '0100' AND
	ENV.natureza_ocorrencia_codigo = 'T00009'
)
	THEN ENV.numero_envolvido
END) AS MORTE_TRANSITO,
COUNT(DISTINCT CASE
	WHEN
        F.ind_violencia_domestica = 'S'
      THEN ENV.numero_envolvido
END) AS 'VDOM',
COUNT(DISTINCT CASE
	WHEN
        ENV.ind_turista = 'S'
    THEN ENV.numero_envolvido
END) AS 'TURISTA'
FROM FILTRO F
INNER JOIN tb_envolvido_ocorrencia ENV on F.numero_ocorrencia = ENV.numero_ocorrencia AND ENV.id_envolvimento IN (25, 32, 1097, 26, 27, 28, 872)
GROUP BY 1

)

,ARMAS AS(
SELECT 
    F.numero_ocorrencia,
    COALESCE(COUNT(CASE WHEN situacao_descricao = 'APREENDIDO' THEN 1 END),0) AS QTDE_ARMAS_APREENDIDAS,
    COALESCE(COUNT(CASE WHEN situacao_descricao = 'RECUPERADO' THEN 1 END),0) AS QTDE_ARMAS_RECUPERADAS
FROM FILTRO F
INNER JOIN tb_arma_ocorrencia ARMA ON F.numero_ocorrencia = ARMA.numero_ocorrencia
WHERE 1=1
    AND situacao_descricao IN ('APREENDIDO', 'RECUPERADO') 
    AND tipo_arma_descricao NOT IN (
        'ARMA DE PRESSAO IGUAL FZ 7,62MM',
        'ARMAS DE PRESSAO ACIMA DE 6MM',		
        
        'ARMAS DE PRESSAO IGUAL OU INFERIOR A 6MM',	
        'NAO INFORMADO'
    )
    AND ARMA.digitador_id_orgao = 0
GROUP BY 1
)
,ARMAS_BRANCAS_SIMUL_MUNICAO AS(
SELECT 
    F.numero_ocorrencia,
    SUM(CASE 
            WHEN MAT.tipo_objeto_codigo IN ('2201', '0400','2200', '2299') 
            THEN CASE WHEN MAT.quantidade_material IS NULL OR MAT.quantidade_material = 0 THEN 1 ELSE MAT.quantidade_material END 
            ELSE 0 
        END) AS QTDE_ARMA_BRANCA,
    SUM(CASE 
            WHEN MAT.tipo_objeto_codigo = '2020' 
            THEN CASE WHEN MAT.quantidade_material IS NULL OR MAT.quantidade_material = 0 THEN 1 ELSE MAT.quantidade_material END 
            ELSE 0 
        END) AS QTDE_SIMULACRO,
    SUM(CASE 
            WHEN MAT.tipo_objeto_codigo IN ('2054', '2055', '2005', '1000') 
            THEN CASE WHEN MAT.quantidade_material IS NULL OR MAT.quantidade_material = 0 THEN 1 ELSE MAT.quantidade_material END 
            ELSE 0 
        END) AS QTDE_MUNICOES
FROM FILTRO F
INNER JOIN tb_material_apreendido_ocorrencia MAT ON F.numero_ocorrencia = MAT.numero_ocorrencia
WHERE 1=1
    AND situacao_descricao IN ('APREENDIDO', 'RECOLHIDO') 
    AND tipo_objeto_codigo IN (
        '2201','0400', -- ARMA BRANCA
        '2200','2299', -- INSTRUMENTO CONTUNDENTE		
        '2020', -- SIMULACRO	
        '2054','2055','2005','1000' -- MUNICOES
    )
    AND MAT.digitador_id_orgao = 0
GROUP BY 1
)
,VEICULOS AS (
    SELECT 
        F.numero_ocorrencia,
 COUNT(CASE WHEN F.digitador_sigla_orgao = 'PM' AND V.situacao_placa_codigo = '0100' THEN 1 END) AS QTDE_VEIC_APREENDIDO,
        COUNT(CASE WHEN F.digitador_sigla_orgao = 'PM' AND V.situacao_placa_codigo = '0500' THEN 1 END) AS QTDE_VEIC_REMOVIDO,
        COUNT(CASE WHEN F.digitador_sigla_orgao = 'PM' AND V.situacao_placa_codigo = '0400' THEN 1 END) AS QTDE_VEIC_RECUPERADO,
        COUNT(CASE WHEN V.situacao_placa_codigo = '0300' THEN 1 END) AS QTDE_VEIC_FURTROUB
    FROM  FILTRO F 
    INNER JOIN tb_veiculo_ocorrencia V ON F.numero_ocorrencia = V.numero_ocorrencia 
    WHERE V.situacao_placa_codigo IN ('0100', '0500', '0400','0300') -- 0100: APREENDIDO | 0500: REMOVIDO | 0400: RECUPERADO| 0300: FURT/ROUB(NAO RECUP)
--    AND V.digitador_id_orgao = 0
GROUP BY 1
)
,CELULAR AS ( 
SELECT
F.numero_ocorrencia, 
SUM(CASE  
            WHEN M.situacao_codigo = '0500' 
            THEN CASE WHEN M.quantidade_material IS NULL OR M.quantidade_material = 0 THEN 1 ELSE M.quantidade_material END 
            ELSE 0 
        END) AS QTDE_CELULAR_FURTADO_ROUBADO,
    SUM(CASE 
	    	WHEN F.digitador_sigla_orgao = 'PM' AND M.situacao_codigo = '0700' 
            THEN CASE WHEN M.quantidade_material IS NULL OR M.quantidade_material = 0 THEN 1 ELSE M.quantidade_material END 
            ELSE 0 
        END) AS QTDE_CELULAR_RECUPERADO
FROM FILTRO F
LEFT JOIN tb_material_apreendido_ocorrencia M ON F.numero_ocorrencia = M.numero_ocorrencia 
WHERE 1=1
    AND M.tipo_objeto_codigo = '0902' 
    AND M.situacao_codigo IN ('0500', '0700')

GROUP BY 1
)
,PRESOS AS (
SELECT F.numero_ocorrencia, 
COUNT (*) AS QTDE_PRESOS_TOTAL,
COALESCE(COUNT(CASE WHEN ENV.id_tipo_prisao_apreensao IN (1,2,7) THEN 1 END),0) AS QTDE_PRESO_FLAGRANTE,
COALESCE(COUNT(CASE WHEN ENV.id_tipo_prisao_apreensao IN (3) THEN 1 END),0) AS QTDE_PRESO_MANDADO
FROM FILTRO F
INNER JOIN tb_envolvido_ocorrencia ENV on F.numero_ocorrencia = ENV.numero_ocorrencia 
WHERE 1=1
		AND ENV.id_envolvimento IN(35,36,44)
		AND ENV.id_tipo_prisao_apreensao IN (1,2,3,4,6,7) 
GROUP BY 1
)
,MANDADOS_DROGAS AS (
SELECT F.numero_ocorrencia, 
COALESCE(COUNT(CASE WHEN F.natureza_codigo = 'Y10001' THEN 1 END),0) AS QTDE_MANDADO_BUSCA,
COALESCE(COUNT(CASE WHEN F.natureza_codigo = 'I04033' THEN 1 END),0) AS QTDE_TRAFICO_DROGA,
COALESCE(COUNT(CASE WHEN F.natureza_codigo = 'I04028' THEN 1 END),0) AS QTDE_USO_DROGA
FROM FILTRO F
WHERE 1=1
		AND F.natureza_codigo IN ('Y10001','I04033','I04028')
GROUP BY 1
)

SELECT 
 F.numero_ocorrencia ,
 F.descricao_evento,
    F.natureza_codigo ,
    F.natureza_descricao ,
     	CAST(F.codigo_municipio AS INTEGER) AS codigo_municipio,
    F.data_hora_fato ,
    CAST(F.data_hora_fato AS DATE) as data_fato,   
    CASE 
    WHEN F.data_hora_fato BETWEEN '2025-02-01 00:00:00' AND '2025-02-27 23:59:59' THEN 'PRE-CARNAVAL'
    ELSE
        CASE DAYOFWEEK(F.data_hora_fato)
            WHEN 6 THEN 'SABADO'
            WHEN 0 THEN 'DOMINGO'
            WHEN 1 THEN 'SEGUNDA'
            WHEN 2 THEN 'TERCA'
            WHEN 3 THEN 'QUARTA'
            WHEN 4 THEN 'QUINTA'
            WHEN 5 THEN 'SEXTA'
        END
    END AS PERIODO,
   	F.digitador_sigla_orgao ,
    F.unidade_area_militar_codigo, 
    F.unidade_area_militar_nome,
     F.local_imediato_codigo , 
F.local_imediato_descricao , F.data_hora_fechamento, F.numero_chamada_cad, F.ind_estado , F.complemento_natureza_codigo, F.complemento_natureza_descricao,
    CASE WHEN F.codigo_municipio IN (310620) THEN '01 RPM'
   		WHEN F.codigo_municipio IN (310670 , 310810 , 310900 , 311860 , 312060 , 312410 , 312600 , 312980 , 313010 , 313220 , 313665 , 314015 , 314070 , 315040 , 315460 , 315530 , 316292 , 316553) THEN '02 RPM'	
		WHEN F.codigo_municipio IN (311000 , 311787 , 312170 , 313190 , 313460 , 313660 , 313760 , 314000 , 314480 , 314610 , 315390 , 315480 , 315670 , 315780 , 315900 , 316295 , 316830 , 317120) THEN '03 RPM'
    	WHEN F.codigo_municipio IN (310150 , 310310 , 310370 , 310440 , 310460 , 310550 , 310610 , 310690 , 310870 , 311020 , 311170 , 311330 , 311530 , 311590 , 311620 , 311670 , 311960 , 312130 , 312190 , 312200 , 312290 , 312330 , 312400 , 312460 , 312490 , 312530 , 312595 , 312738 , 312840 , 312850 , 312880 , 312900 , 313260 , 313670 , 313800 , 313840 , 313860 , 313980 , 314020 , 314080 , 314160 , 314210 , 314220 , 314390 , 314540 , 314587 , 314670 , 314820 , 314830 , 314880 , 314900 , 314940 , 314950 , 315010 , 315110 , 315130 , 315410 , 315540 , 315580 , 315590 , 315620 , 315630 , 315645 , 315727 , 315840 , 315860 , 315930 , 316000 , 316140 , 316150 , 316290 , 316380 , 316443 , 316560 , 316570 , 316730 , 316750 , 316790 , 316850 , 316900 , 316920 , 316990 , 317130 , 317140 , 317200 , 317210) THEN '04 RPM'	
    	WHEN F.codigo_municipio IN (310070 , 310400 , 311110 , 311140 , 311150 , 311455 , 311690 , 311730 , 311820 , 312125 , 312700 , 312710 , 312950 , 313340 , 313440 , 313862 , 314500 , 314920 , 314980 , 315070 , 315160 , 315300 , 315690 , 315770  , 315970 , 316130 , 316810 , 317010 , 317043 , 317110) THEN '05 RPM'
    	WHEN F.codigo_municipio IN (310080 , 310710 , 310800 , 311070 , 311090 , 311120 , 311190 , 311200 , 311390 , 311400 , 311450 , 311460 , 311770 , 311870 , 312020 , 312360 , 312810 , 313000 , 313040 , 313050 , 313080 , 313430 , 313450 , 313590 , 313780 , 313820 , 313870 , 314260 , 314460 , 314550 , 314560 , 314770 , 314990 , 315060 , 315470 , 315830 , 315880 , 315990 , 316080 , 316120 , 316520 , 316930 , 316940 , 317070) THEN '06 RPM'
    	WHEN F.codigo_municipio IN (310020 , 310390 , 310420 , 310510 , 310700 , 310740 , 311040 , 311420 , 311560 , 311660 , 311760 , 311980 , 311995 , 312230 , 312320 , 312470 , 312610 , 313020 , 313030 , 313350 , 313370 , 313380 , 313530 , 313720 , 313830 , 313880 , 313970 , 314050 , 314130 , 314240 , 314350 , 314520 , 314580 , 314640 , 314650 , 314690 , 314710 , 314890 , 314960 , 314970 , 315050 , 315140 , 315200 , 315370 , 316040 , 316180 , 316310 , 316460 , 316660 , 316820) THEN '07 RPM'
    	WHEN F.codigo_municipio IN (310110 , 310180 , 310220 , 311205 , 311265 , 311570 , 311680 , 311840 , 311920 , 312083 , 312210 , 312220 , 312310 , 312370 , 312580 , 312690 , 312695 , 312730 , 312737 , 312750 , 312770 , 312800 , 313180 , 313320 , 313410 , 313655 , 313960 , 314010 , 314060 , 314150 , 314420 , 314467 , 314840 , 314860 , 314995 , 315430 , 315600 , 315680 , 315750 , 315820 , 315950 , 316105 , 316160 , 316165 , 316257 , 316280 , 316300 , 316350 , 316410 , 316450 , 316550 , 316610 , 316770 , 316840 , 316950 , 317150 , 317180 , 317190) THEN '08 RPM'	
    	WHEN F.codigo_municipio IN (310350 , 310375 , 310980 , 311180 , 311260 , 311500 , 311580 , 312480 , 312790 , 312910 , 313070 , 313140 , 313420 , 314280 , 315280 , 315980 , 316960 , 317020) THEN '09 RPM'
    	WHEN F.codigo_municipio IN (310010 , 310380 , 311430 , 311930 , 312070 , 312350 , 312890 , 313160 , 313710 , 313750 , 313753 , 314120 , 314310 , 314800 , 314810 , 315340 , 315550 , 315640 , 316170 , 316210 , 316680 , 316890 , 317075) THEN '10 RPM'
    	WHEN F.codigo_municipio IN (310665 , 310730 , 310825 , 310850 , 310860 , 311115 , 311270 , 311547 , 311650 , 311783 , 311880 , 312030 , 312087 , 312380 , 312430 , 312660 , 312670 , 312707 , 312733 , 312735 , 312780 , 312825 , 312960 , 312965 , 313005 , 313065 , 313200 , 313210 , 313505 , 313510 , 313520 , 313535 , 313657 , 313680 , 313695 , 313730 , 313865 , 313868 , 313925 , 313930 , 314085 , 314100 , 314200 , 314225 , 314270 , 314290 , 314330 , 314345 , 314465 , 314505 , 314537 , 314545 , 314625 , 314655 , 314795 , 314915 , 315057 , 315213 , 315220 , 315450 , 315560 , 315650 , 315700 , 315737 , 316045 , 316110 , 316225 , 316240 , 316245 , 316265 , 316270 , 316695 , 316800 , 317000 , 317065 , 317090 , 317103) THEN '11 RPM'
    	WHEN F.codigo_municipio IN (310030 , 310040 , 310050 , 310205 , 310230 , 310250 , 310300 , 310540 , 310570 , 310600 , 310630 , 310770 , 310780 , 310880 , 310925 , 311010 , 311210 , 311290 , 311340 , 311380 , 311535 , 311600 , 311740 , 311940 , 312000 , 312180 , 312250 , 312270 , 312352 , 312385 , 312420 , 312590 , 312820 , 312930 , 313055 , 313090 , 313115 , 313120 , 313130 , 313170 , 313280 , 313500 , 313550 , 313610 , 313620 , 313770 , 313867 , 313940 , 313950 , 314030 , 314053 , 314090 , 314170 , 314400 , 314435 , 314470 , 314585 , 314750 , 314875 , 315015 , 315020 , 315053 , 315190 , 315210 , 315350 , 315400 , 315415 , 315490 , 315500 , 315570 , 315720 , 315725 , 315740 , 315790 , 315800 , 315890 , 315895 , 315935 , 316010 , 316095 , 316100 , 316190 , 316255 , 316260 , 316340 , 316360 , 316400 , 316447 , 316556 , 316630 , 316760 , 316805 , 316870 , 317005 , 317050 , 317057 , 317115) THEN '12 RPM'	
    	WHEN F.codigo_municipio IN (310163 , 310210 , 310280 , 310290 , 310330 , 310360 , 310560 , 310590 , 310640 , 310680 , 310750 , 311220 , 311310 , 311320 , 311490 , 311520 , 311540 , 311630 , 311800 , 311830 , 311970 , 312040 , 312140 , 312150 , 312300 , 312390 , 312500 , 312940 , 313390 , 313540 , 313740 , 313790 , 313910 , 314230 , 314450 , 314570 , 314590 , 314660 , 315030 , 315080 , 315230 , 315270 , 315310 , 315380 , 315420 , 315440 , 315520 , 315610 , 315730 , 315733 , 315870 , 315910 , 315940 , 316070 , 316090 , 316250 , 316500 , 316530 , 316600 , 316620 , 316880) THEN'13 RPM'	
    	WHEN F.codigo_municipio IN (310060 , 310240 , 310285 , 310445 , 310480 , 310650 , 310920 , 310940 , 311230 , 311350 , 311610 , 311750 , 311810 , 311910 , 312010 , 312090 , 312100 , 312160 , 312260 , 312540 , 312550 , 312570 , 312650 , 312760 , 313110 , 313250 , 313545 , 313560 , 313640 , 313652 , 313810 , 313835 , 314180 , 314250 , 314360 , 314370 , 315120 , 315320 , 315330 , 315760 , 316020 , 316050 , 316060 , 316420 , 316480 , 316590 , 316650 , 316710 , 316935 , 316970 , 317080 , 317107) THEN '14 RPM'
    	WHEN F.codigo_municipio IN (310090 , 310100 , 310170 , 310270 , 310340 , 310470 , 310520 , 310660 , 311080 , 311300 , 311370 , 311545 , 311700 , 311950 , 312015 , 312235 , 312245 , 312560 , 312675 , 312680 , 312705 , 313230 , 313270 , 313330 , 313400 , 313470 , 313507 , 313580 , 313600 , 313650 , 313700 , 313890 , 313920 , 314055 , 314140 , 314315 , 314430 , 314490 , 314530 , 314535 , 314620 , 314630 , 314675 , 314850 , 314870 , 315000 , 315217 , 315240 , 315510 , 315660 , 315710 , 315765 , 315810 , 316030 , 316330 , 316555 , 316670 , 316860 , 317030 , 317160) THEN '15 RPM'	
	    WHEN F.codigo_municipio IN (310450 , 310820 , 310855 , 310930 , 310945 , 311615 , 312247 , 312620 , 312860 , 313630 , 314437 , 314700 , 315445 , 317040 , 317047 , 317052 , 317100) THEN '16 RPM'	
	    WHEN F.codigo_municipio IN (310120 , 310130 , 310140 , 310490 , 310720 , 310790 , 310830 , 310890 , 310910 , 310970 , 311050 , 311060 , 311360 , 311410 , 311480 , 311550 , 311720 , 311780 , 311790 , 311850 , 311900 , 311990 , 312050 , 312080 , 312110 , 312280 , 312440 , 312450 , 312510 , 312740 , 312920 , 313060 , 313240 , 313300 , 313310 , 313360 , 313490 , 313850 , 313990 , 314040 , 314190 , 314340 , 314380 , 314440 , 314600 , 314730 , 314760 , 314780 , 314910 , 315090 , 315100 , 315250 , 315260 , 315960 , 316200 , 316230 , 316320 , 316370 , 316440 , 316490 , 316540 , 316557 , 316580 , 316640 , 316700 , 316740 , 316780 , 316905 , 316910 , 316980 , 317170 , 317220) THEN'17 RPM'	
	    WHEN F.codigo_municipio IN (310160 , 310190 , 310200 , 310260 , 310410 , 310430 , 310530 , 310760 , 310840 , 310950 , 311030 , 311100 , 311130 , 311160 , 311240 , 311280 , 311440 , 311470 , 311510 , 311640 , 311710 , 312120 , 312240 , 312340 , 312520 , 312630 , 312830 , 312870 , 312970 , 312990 , 313150 , 313290 , 313375 , 313480 , 313690 , 313900 , 314300 , 314320 , 314410 , 314510 , 314720 , 314790 , 315150 , 315170 , 315180 , 315290 , 315920 , 316220 , 316294 , 316390 , 316430 , 316470 , 316510 , 316690 , 317060) THEN '18 RPM'	
	    WHEN F.codigo_municipio IN (316720 , 314930 , 314110 , 314740 , 315360 , 310990 , 310500 , 311250 , 313570 , 313100 , 310320 , 312720 , 311890 , 312640 , 310960 , 315850) THEN '19 RPM'	
   	END AS RPM_2025,
CASE WHEN F.codigo_municipio in (310690,311590,311960,312130,312738,312850,314020,314950,315010,315540,315620,316290) THEN '02 BPM'
		WHEN F.codigo_municipio in (310240,311750,311810,312010,312100,312160,312260,312540,312550,312760,314250,314370,315330,316020,316050,316480,316590,316650,316710) THEN '03 BPM'
		WHEN F.codigo_municipio in (312125) THEN '04 BPM'
		WHEN F.codigo_municipio in (312770,310180,311265,312370,312580,313320,314995,316770,316840,310220,312690,314010,317150,316160,316300) THEN '06 BPM'
		WHEN F.codigo_municipio in (310020,310700,310740,311560,311980,312320,312470,313530,313720,313880,314050,314240,314350,314640,314890,315200,315370,316040,316660) THEN '07 BPM'
		WHEN F.codigo_municipio in (310080,310800,311120,311190,311200,311400,311450,311460,312020,313000,313040,313080,313430,313450,313820,313870,314460,314560,314770,314990,315060,315470,315880,315990,316120) THEN '08 BPM'
		WHEN F.codigo_municipio in (310163,310210,310290,310330,310560,310680,311630,312150,312500,312940,314570,314660,315030,315440,315730,315870,315940,316070) THEN '09 BPM'
		WHEN F.codigo_municipio in (314480,315390,315480) THEN '1 CIA PM IND'
		WHEN F.codigo_municipio in (310730,311650,311880,312380,312660,312735,312825,312960,313200,313680,313730,314545,316225,316265) THEN '10 BPM'
		WHEN F.codigo_municipio in (310370,311020,311170,311670,312400,314830,314880,316380,316850,317130) THEN '10 CIA PM IND'
		WHEN F.codigo_municipio in (310030,310205,311010,311210,311290,311600,312352,312420,313770,313867,313940,313950,314053,314090,314400,314875,315350,315415,315790,315890,316255,316630,316760,316360) THEN '11 BPM'
		WHEN F.codigo_municipio in (311250,314110,314930,315360) THEN '11 CIA PM IND'
		WHEN F.codigo_municipio in (310190,311240,311280,311510,311640,312120,312340,312970,313375,314790,315150,315290,316220,316294,316430,317060) THEN '12 BPM'
		WHEN F.codigo_municipio in (310860,311115,312965,313005,313535,313865,313868,315057,315213,316110,316240,317000,317090) THEN '13 CIA PM IND'
		WHEN F.codigo_municipio in (310050,310630,310880,313115,313130,313610,314170,314435,315895) THEN '14 BPM'
		WHEN F.codigo_municipio in (310340,311950,313400,314630,317160,311700,313330,314140,315217) THEN '70 BPM'
		WHEN F.codigo_municipio in (310380,311430,313710,313750,313753,314120,314800,315340,315550,316170,316210,316890,317075) THEN '15 BPM'
		WHEN F.codigo_municipio in (310110,311840,312083,312737,313410,315430,315950,316950) THEN '15 CIA PM IND'
		WHEN F.codigo_municipio in (311070,311090,311770,313590,313780,314550,316080,316520,316930,314260) THEN '16 CIA PM IND'
		WHEN F.codigo_municipio in (310230,310600,312180,312270,313620,314470,315570,316100,316340,316556) THEN '17 CIA PM IND'
		WHEN F.codigo_municipio in (311570,312210,312730,313180,313960,314150,314467,316105,316165,316257) THEN '18 CIA PM IND'
		WHEN F.codigo_municipio in (310470,311080,311300,311545,312675,312680,313230,313270,313507,313700,313920,314490,314530,314535,314620,314850,315000,315240,316330,316555,316860) THEN '19 BPM'
		WHEN F.codigo_municipio in (313020,313970,314580,314690,314710,314960,316310) THEN '19 CIA PM IND'
		WHEN F.codigo_municipio in (310665,312087,312707,313065,314345,314465,314537,314625,315560,315650,315700,315737,316045,316270,316800,317065) THEN '2 CIA PM IND'
		WHEN F.codigo_municipio in (310140,310830,310970,311360,311720,311780,311790,311900,312440,312450,312920,313060,313490,314340,314440,314600,315250,315960,316200,316230,316440,316580,316740,316905,316980) THEN '20 BPM'
		WHEN F.codigo_municipio in (310870,312190,312330,312840,312880,312900,314160,315130,315580,315630,316150,316570,316730,316790,316900,316990,317200) THEN '21 BPM'
		WHEN F.codigo_municipio in (310040,310250,310570,312820,313550,314585,315020,315210,315490,315500,315740,316010,316400,317050) THEN '21 CIA PM IND'
		WHEN F.codigo_municipio in (311420,311660,312230,316180) THEN '23 BPM'
		WHEN F.codigo_municipio in (310060,310285,310445,310650,311230,311350,311610,312650,313250,313545,313652,313835,314180,316970,317107) THEN '23 CIA PM IND'
		WHEN F.codigo_municipio in (310710,311390,311870,312360,312810,313050,315830,316940,317070) THEN '24 BPM'
		WHEN F.codigo_municipio in (310090,310660,311370,312015,312705,313890,314430,315765,316670,317030) THEN '24 CIA PM IND'
		WHEN F.codigo_municipio in (310320,310500,310960,310990,311890,312640,312720,313100,313570,314740,315850,316720) THEN '25 BPM'
		WHEN F.codigo_municipio in (311205,311680,311920,312220,312310,312695,312750,312800,313655,314060,314420,314840,314860,315600,315680,315750,315820,316280,316350,316410,316450,316550,316610,317180,317190) THEN '65 BPM'
		WHEN F.codigo_municipio in (310540,310770,311380,311535,312590,313170,313280,314750,315720,315800,316190) THEN '26 BPM'
		WHEN F.codigo_municipio in (310610,311620,313860,313980,314080,314540,314940,315590,315727,315860,315930,316560,316750) THEN '27 BPM'
		WHEN F.codigo_municipio in (310450,310820,310930,310945,311615,312247,312620,314437,315445,317040,317047,317052) THEN '28 BPM'
		WHEN F.codigo_municipio in (310260,310530,310840,310950,311030,311100,312240,312990,313150,315180,315920) THEN '29 BPM'
		WHEN F.codigo_municipio in (311110,311455,313440,313862,317043) THEN '3 CIA PM IND'
		WHEN F.codigo_municipio in (310825,311783,313210,313520,313695,313930,314225,314270,314915,316245) THEN '30 BPM'
		WHEN F.codigo_municipio in (310640,311220,311310,311320,311490,311540,311800,311830,312040,312140,312390,313390,313540,313790,314230,314590,315080,315230,315310,315380,315520,315910,316090,316600) THEN '31 BPM'
		WHEN F.codigo_municipio in (315780) THEN '35 BPM'
		WHEN F.codigo_municipio in (316295,317120) THEN '36 BPM'
		WHEN F.codigo_municipio in (313760,311787,315900,313460) THEN '8 CIA PM IND'
		WHEN F.codigo_municipio in (310400,311150,311820,312950,314500,314920,314980,315300,315690,315770,315970,316810) THEN '37 BPM'
		WHEN F.codigo_municipio in (310280,310360,310590,310750,311520,311970,312300,313740,313910,314450,315270,315420,315610,315733,316250,316500,316530,316880) THEN '38 BPM'
		WHEN F.codigo_municipio in (311690,312700,312710,313340,315160,316130,311140,311730,315070) THEN '69 BPM'
		WHEN F.codigo_municipio in (315460) THEN '40 BPM'
		WHEN F.codigo_municipio in (310480,310920,311910,312090,312570,313110,313640,314360,315320,316060,316935) THEN '42 BPM'
		WHEN F.codigo_municipio in (310410,310760,312830,312870,313290,313690,314300,314320,314410,314510,316390,316470,316510,312630,313480) THEN '43 BPM'
		WHEN F.codigo_municipio in (310170,310520,312245,312560,313470,313580,313600,313650,314055,314315,314675,315510,315660,315710,315810,316030,310100,310270,312235,314870) THEN '44 BPM'
		WHEN F.codigo_municipio in (310855,312860,313630,314700,317100) THEN '45 BPM'
		WHEN F.codigo_municipio in (310010,311930,312070,312350,312890,313160,314310,314810,315640,316680) THEN '46 BPM'
		WHEN F.codigo_municipio in (310310,310550,311330,312200,312490,312530,312595,313800,314210,314390,314587,314670,314820,314900,315645,316140,316920,317140) THEN '47 BPM'
		WHEN F.codigo_municipio in (310900,312980,314015,316553) THEN '48 BPM'
		WHEN F.codigo_municipio in (310850,311270,312030,312670,312780,313657,314200,314795 ) THEN '50 BPM'
		WHEN F.codigo_municipio in (311547,312430,312733,313505,313510,313925,314100,314290,314505,314655,315220,315450,316695,317103,314085) THEN '51 BPM'
		WHEN F.codigo_municipio in (312170,313190,314000,314610) THEN '52 BPM'
		WHEN F.codigo_municipio in (310350,310375,311500,312480,312790,313070,316960) THEN '53 BPM'
		WHEN F.codigo_municipio in (310980,311180,311260,311580,312910,313140,313420,314280,315280,315980) THEN '54 BPM'
		WHEN F.codigo_municipio in (310940,313560,313810,315120,315760,316420,317080) THEN '55 BPM'
		WHEN F.codigo_municipio in (310890,311850,312050,312110,312740,313240,313990,314040,314730,314910,315090,315100,316320,316540,317220) THEN '56 BPM'
		WHEN F.codigo_municipio in (310120,310130,310490,310720,311410,311480,311550,312080,312280,313300,313310,313850,314190,314760,314780,315260,316370,316490,316640,316700,316780,317170) THEN '57 BPM'
		WHEN F.codigo_municipio in (310300,311940,313500,314030,316870) THEN '58 BPM'
		WHEN F.codigo_municipio in (310790,311050,311060,311990,312510,313360,316557,316910,310910,314380) THEN '59 BPM'
		WHEN F.codigo_municipio in (310390,311760,313830,314520,314970,315140) THEN '60 BPM'
		WHEN F.codigo_municipio in (311000,313660,315670,316830) THEN '61 BPM'
		WHEN F.codigo_municipio in (310780,311340,311740,312000,312250,312385,313055,313090,313120,315015,315053,315190,315400,315725,315935,316095,316260,316447,316805,317005,317057,317115,310925,312930) THEN '62 BPM'
		WHEN F.codigo_municipio in (310420,310510,311040,311995,312610,313030,313350,314130,314650,315050,316460,316820) THEN '63 BPM'
		WHEN F.codigo_municipio in (310160,310200,310430,311130,311160,311440,311470,311710,312520,313900,314720,315170,316690) THEN '64 BPM'
		WHEN F.codigo_municipio in (312410) THEN '6 CIA PM IND'
		WHEN F.codigo_municipio in (310070,317110) THEN '67 BPM'
		WHEN F.codigo_municipio in (310810,312060,312600,313010,313220,313665,314070,315040,315530,316292) THEN '7 CIA PM IND'
		WHEN F.codigo_municipio in (310440,310460,311530,312290,313260,313840,314220,315410,315840,316443,315110,317210,310150,316000,312460) THEN '68 BPM'
		WHEN F.codigo_municipio in (313370,313380) THEN '9 CIA PM IND'
		WHEN F.codigo_municipio =317020 AND (F.unidade_area_militar_nome like '32 BPM%' or F.unidade_area_militar_nome like '%/32 BPM%') THEN '32 BPM'
		WHEN F.codigo_municipio =317020 AND (F.unidade_area_militar_nome like '17 BPM%' or F.unidade_area_militar_nome like '%/17 BPM%') THEN '17 BPM'
		WHEN F.codigo_municipio =317010 AND (F.unidade_area_militar_nome like '4 BPM%' or F.unidade_area_militar_nome like '%/4 BPM%') THEN '04 BPM'
		WHEN F.codigo_municipio =317010 AND (F.unidade_area_militar_nome like '67 BPM%' or F.unidade_area_militar_nome like '%/67 BPM%') THEN '67 BPM'
		WHEN F.codigo_municipio =314330 AND (F.unidade_area_militar_nome like '50 BPM%' or F.unidade_area_militar_nome like '%/50 BPM%') THEN '50 BPM'
		WHEN F.codigo_municipio =314330 AND (F.unidade_area_militar_nome like '10 BPM%' or F.unidade_area_militar_nome like '%/10 BPM%') THEN '10 BPM'
		WHEN F.codigo_municipio =313670 AND (F.unidade_area_militar_nome like '27 BPM%' or F.unidade_area_militar_nome like '%/27 BPM%') THEN '27 BPM'
		WHEN F.codigo_municipio =313670 AND (F.unidade_area_militar_nome like '2 BPM%' or F.unidade_area_militar_nome like '%/2 BPM%') THEN '02 BPM'
		WHEN F.codigo_municipio =311860 AND (F.unidade_area_militar_nome like '39 BPM%' or F.unidade_area_militar_nome like '%/39 BPM%') THEN '39 BPM'
		WHEN F.codigo_municipio =311860 AND (F.unidade_area_militar_nome like '18 BPM%' or F.unidade_area_militar_nome like '%/18 BPM%') THEN '18 BPM'
		WHEN F.codigo_municipio =310670 AND (F.unidade_area_militar_nome like '66 BPM%' or F.unidade_area_militar_nome like '%/66 BPM%') THEN '66 BPM'
		WHEN F.codigo_municipio =310670 AND (F.unidade_area_militar_nome like '33 BPM%' or F.unidade_area_militar_nome like '%/33 BPM%') THEN '33 BPM'
		WHEN F.codigo_municipio =310620 AND (F.unidade_area_militar_nome like '1 BPM%' or F.unidade_area_militar_nome like '%/1 BPM%') THEN '01 BPM'
		WHEN F.codigo_municipio =310620 AND (F.unidade_area_militar_nome like '5 BPM%' or F.unidade_area_militar_nome like '%/5 BPM%')  THEN '05 BPM'
		WHEN F.codigo_municipio =310620 AND (F.unidade_area_militar_nome like '13 BPM%' or F.unidade_area_militar_nome like '%/13 BPM%')  THEN '13 BPM'
		WHEN F.codigo_municipio =310620 AND (F.unidade_area_militar_nome like '16 BPM%' or F.unidade_area_militar_nome like '%/16 BPM%')  THEN '16 BPM'
		WHEN F.codigo_municipio =310620 AND (F.unidade_area_militar_nome like '22 BPM%' or F.unidade_area_militar_nome like '%/22 BPM%' )  THEN '22 BPM'
		WHEN F.codigo_municipio =310620 AND (F.unidade_area_militar_nome like '41 BPM%' or F.unidade_area_militar_nome like '%/41 BPM%') THEN '41 BPM'
		WHEN F.codigo_municipio =310620 AND (F.unidade_area_militar_nome like '49 BPM%' or F.unidade_area_militar_nome like '%/49 BPM%') THEN '49 BPM'
		WHEN F.codigo_municipio =310620 AND (F.unidade_area_militar_nome like '34 BPM%' or F.unidade_area_militar_nome like '%/34 BPM%') THEN '34 BPM'
		WHEN F.codigo_municipio =316620 AND (F.unidade_area_militar_nome like '31 BPM%' or F.unidade_area_militar_nome like '%/31 BPM%') THEN '31 BPM'
		WHEN F.codigo_municipio =316620 AND (F.unidade_area_militar_nome like '9 BPM%' or F.unidade_area_militar_nome like '%/9 BPM%') THEN '9 BPM'
		ELSE 'OUTROS'
	END AS UEOP_2025,	
	CASE 
		WHEN F.codigo_municipio =317020 AND (L.unidade_area_militar_nome like '32 BPM%' or L.unidade_area_militar_nome like '%/32 BPM%') THEN '32 BPM'
		WHEN F.codigo_municipio =317020 AND (L.unidade_area_militar_nome like '17 BPM%' or L.unidade_area_militar_nome like '%/17 BPM%') THEN '17 BPM'
		WHEN F.codigo_municipio =317010 AND (L.unidade_area_militar_nome like '4 BPM%' or L.unidade_area_militar_nome like '%/4 BPM%') THEN '04 BPM'
		WHEN F.codigo_municipio =317010 AND (L.unidade_area_militar_nome like '67 BPM%' or L.unidade_area_militar_nome like '%/67 BPM%') THEN '67 BPM'
		WHEN F.codigo_municipio =314330 AND (L.unidade_area_militar_nome like '50 BPM%' or L.unidade_area_militar_nome like '%/50 BPM%') THEN '50 BPM'
		WHEN F.codigo_municipio =314330 AND (L.unidade_area_militar_nome like '10 BPM%' or L.unidade_area_militar_nome like '%/10 BPM%') THEN '10 BPM'
		WHEN F.codigo_municipio =313670 AND (L.unidade_area_militar_nome like '27 BPM%' or L.unidade_area_militar_nome like '%/27 BPM%') THEN '27 BPM'
		WHEN F.codigo_municipio =313670 AND (L.unidade_area_militar_nome like '2 BPM%' or L.unidade_area_militar_nome like '%/2 BPM%') THEN '02 BPM'
		WHEN F.codigo_municipio =311860 AND (L.unidade_area_militar_nome like '39 BPM%' or L.unidade_area_militar_nome like '%/39 BPM%') THEN '39 BPM'
		WHEN F.codigo_municipio =311860 AND (L.unidade_area_militar_nome like '18 BPM%' or L.unidade_area_militar_nome like '%/18 BPM%') THEN '18 BPM'
		WHEN F.codigo_municipio =310670 AND (L.unidade_area_militar_nome like '66 BPM%' or L.unidade_area_militar_nome like '%/66 BPM%') THEN '66 BPM'
		WHEN F.codigo_municipio =310670 AND (L.unidade_area_militar_nome like '33 BPM%' or L.unidade_area_militar_nome like '%/33 BPM%') THEN '33 BPM'
		WHEN F.codigo_municipio =310620 AND (L.unidade_area_militar_nome like '1 BPM%' or L.unidade_area_militar_nome like '%/1 BPM%') THEN '01 BPM'
		WHEN F.codigo_municipio =310620 AND (L.unidade_area_militar_nome like '5 BPM%' or L.unidade_area_militar_nome like '%/5 BPM%')  THEN '05 BPM'
		WHEN F.codigo_municipio =310620 AND (L.unidade_area_militar_nome like '13 BPM%' or L.unidade_area_militar_nome like '%/13 BPM%')  THEN '13 BPM'
		WHEN F.codigo_municipio =310620 AND (L.unidade_area_militar_nome like '16 BPM%' or L.unidade_area_militar_nome like '%/16 BPM%')  THEN '16 BPM'
		WHEN F.codigo_municipio =310620 AND (L.unidade_area_militar_nome like '22 BPM%' or L.unidade_area_militar_nome like '%/22 BPM%' )  THEN '22 BPM'
		WHEN F.codigo_municipio =310620 AND (L.unidade_area_militar_nome like '41 BPM%' or L.unidade_area_militar_nome like '%/41 BPM%') THEN '41 BPM'
		WHEN F.codigo_municipio =310620 AND (L.unidade_area_militar_nome like '49 BPM%' or L.unidade_area_militar_nome like '%/49 BPM%') THEN '49 BPM'
		WHEN F.codigo_municipio =310620 AND (L.unidade_area_militar_nome like '34 BPM%' or L.unidade_area_militar_nome like '%/34 BPM%') THEN '34 BPM'
		WHEN F.codigo_municipio =316620 AND (L.unidade_area_militar_nome like '31 BPM%' or L.unidade_area_militar_nome like '%/31 BPM%') THEN '31 BPM'
		WHEN F.codigo_municipio =316620 AND (L.unidade_area_militar_nome like '9 BPM%' or L.unidade_area_militar_nome like '%/9 BPM%') THEN '9 BPM'
		ELSE 'OUTROS'
	END AS UEOP_2025_LOCALRAT,
    OCO.unidade_responsavel_registro_codigo, 
    OCO.unidade_responsavel_registro_nome, 
	OCO.nome_tipo_relatorio,
 COALESCE(A.QTDE_ARMAS_APREENDIDAS, 0) AS QTDE_ARMAS_APREENDIDAS,
    COALESCE(A.QTDE_ARMAS_RECUPERADAS, 0) AS QTDE_ARMAS_RECUPERADAS,
    COALESCE(AB.QTDE_ARMA_BRANCA, 0) AS QTDE_ARMA_BRANCA,
    COALESCE(AB.QTDE_SIMULACRO, 0) AS QTDE_SIMULACRO,
    COALESCE(AB.QTDE_MUNICOES, 0) AS QTDE_MUNICOES,
    COALESCE(V.QTDE_VEIC_APREENDIDO, 0) AS QTDE_VEIC_APREENDIDO,
    COALESCE(V.QTDE_VEIC_REMOVIDO, 0) AS QTDE_VEIC_REMOVIDO,
    COALESCE(V.QTDE_VEIC_RECUPERADO, 0) AS QTDE_VEIC_RECUPERADO,
    COALESCE(V.QTDE_VEIC_FURTROUB, 0) AS QTDE_VEIC_FURTROUB,
    COALESCE(C.QTDE_CELULAR_FURTADO_ROUBADO, 0) AS CELULAR_FURTADO_ROUBADO,
    COALESCE(C.QTDE_CELULAR_RECUPERADO, 0) AS QTDE_CELULAR_RECUP,
    COALESCE(P.QTDE_PRESOS_TOTAL, 0) AS QTDE_PRESOS_TOTAL,
    COALESCE(P.QTDE_PRESO_FLAGRANTE, 0) AS QTDE_PRESO_FLAGRANTE,
    COALESCE(P.QTDE_PRESO_MANDADO, 0) AS QTDE_PRESO_MANDADO,
    COALESCE(M.QTDE_MANDADO_BUSCA, 0) AS QTDE_MANDADO_BUSCA,
    COALESCE(M.QTDE_TRAFICO_DROGA, 0) AS QTDE_TRAFICO_DROGA,
    COALESCE(M.QTDE_USO_DROGA, 0) AS QTDE_USO_DROGA,
    COALESCE(VV.lgbt, 0) AS lgbt,
    COALESCE(VV.racismo, 0) AS racismo,
    COALESCE(VV.cv, 0) AS cv,
    COALESCE(VV.estupro, 0) AS estupro,
    COALESCE(VV.furto, 0) AS furto,
    COALESCE(ICVPA_C01157, 0) AS ICVPA_C01157,
	COALESCE(ICVPA_C01158, 0) AS ICVPA_C01158,
	COALESCE(ICVPA_C01159, 0) AS ICVPA_C01159,
	COALESCE(IMV_C01157, 0) AS IMV_C01157,
	COALESCE(IMV_B01504, 0) AS IMV_B01504,
	COALESCE(IMV_B01129, 0) AS IMV_B01129,
	COALESCE(IMV_B02001, 0) AS IMV_B02001,
	COALESCE(IMV_B01148, 0) AS IMV_B01148,
	COALESCE(IMV_B01121, 0) AS IMV_B01121,
	COALESCE(ICVPE_B01121, 0) AS ICVPE_B01121,
	COALESCE(ICVPE_B01504, 0) AS ICVPE_B01504,
	COALESCE(ICVPE_B02001, 0) AS ICVPE_B02001,
	COALESCE(ICVPE_B01148, 0) AS ICVPE_B01148,
    COALESCE(VV.import_sex, 0) AS import_sex,
    COALESCE(VV.acid_transito, 0) AS acid_transito,
    COALESCE(VV.morte_transito, 0) AS morte_transito,
    COALESCE(VV.vdom, 0) AS vdom,
    COALESCE(VV.turista, 0) AS turista
FROM FILTRO F
	INNER JOIN tb_ocorrencia OCO ON OCO.numero_ocorrencia = F.numero_ocorrencia
	LEFT JOIN ARMAS A ON F.numero_ocorrencia = A.numero_ocorrencia
	LEFT JOIN ARMAS_BRANCAS_SIMUL_MUNICAO AB ON F.numero_ocorrencia = AB.numero_ocorrencia
	LEFT JOIN CELULAR C ON F.numero_ocorrencia = C.numero_ocorrencia
	LEFT JOIN MANDADOS_DROGAS M ON F.numero_ocorrencia = M.numero_ocorrencia
	LEFT JOIN VEICULOS V ON F.numero_ocorrencia = V.numero_ocorrencia
	LEFT JOIN PRESOS P ON F.numero_ocorrencia = P.numero_ocorrencia
	LEFT JOIN db_bisp_reds_master.tb_local_unidade_area_pmmg L on F.id_local = L.id_local
	LEFT JOIN VITIMAS_VARIADAS VV ON F.numero_ocorrencia = VV.numero_ocorrencia;

