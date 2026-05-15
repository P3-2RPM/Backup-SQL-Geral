/* ================================================================================================================================================
 *  ====================================== SCRIPT DE CONFERÊNCIA - INDICADOR SRVD (A20002) =======================================================
 *  ================================================================================================================================================
 * 
 *  Objetivo: Trazer todas as ocorrências A20002 e contar os perfis de envolvidos para auditoria de filtros.
 *-----------------------------------------------------------------------------------------------------------------------------------------------------*/
SELECT
   OCO.numero_ocorrencia,                                   -- Número da ocorrência único
   OCO.natureza_codigo,                                     -- Código da natureza (A20002)
   OCO.natureza_descricao,                                  -- Descrição da natureza
   OCO.nome_municipio,                                      -- Nome do município
   OCO.data_hora_fato,                                      -- Data e hora do fato
   YEAR(OCO.data_hora_fato) AS ano_fato,                    
   MONTH(OCO.data_hora_fato) AS mes_fato,                   
   
   -- Classificação Regional (Mantida a sua lógica original de 2025/2026)
   CASE WHEN OCO.codigo_municipio IN (310620) THEN '01 RPM'
   		WHEN OCO.codigo_municipio IN (310670 , 310810 , 310900 , 311860 , 312060 , 312410 , 312600 , 312980 , 313010 , 313220 , 313665 , 314015 , 314070 , 315040 , 315460 , 315530 , 316292 , 316553) THEN '02 RPM'	
        ELSE 'OUTROS'
   	END AS RPM_2025,
   	
   CASE WHEN OCO.codigo_municipio IN (315460) THEN '40 BPM'
   		WHEN OCO.codigo_municipio IN (310900,312980,314015,316553) THEN '48 BPM'
   		WHEN OCO.codigo_municipio IN (312410) THEN '6 CIA PM IND'
   		WHEN OCO.codigo_municipio IN (310810,312060,312600,313010,313220,313665,314070,315040,315530,316292) THEN '7 CIA PM IND'
   		WHEN OCO.codigo_municipio = 311860 AND (OCO.unidade_area_militar_nome LIKE '18 BPM%' OR OCO.unidade_area_militar_nome LIKE '%/18 BPM%') AND (OCO.unidade_area_militar_nome NOT LIKE '%TM%') THEN '18 BPM'
   		WHEN OCO.codigo_municipio = 310670 AND (OCO.unidade_area_militar_nome LIKE '33 BPM%' OR OCO.unidade_area_militar_nome LIKE '%/33 BPM%') AND (OCO.unidade_area_militar_nome NOT LIKE '%TM%') THEN '33 BPM'
   		WHEN OCO.codigo_municipio = 311860 AND (OCO.unidade_area_militar_nome LIKE '39 BPM%' OR OCO.unidade_area_militar_nome LIKE '%/39 BPM%') AND (OCO.unidade_area_militar_nome NOT LIKE '%TM%') THEN '39 BPM'
		WHEN OCO.codigo_municipio = 310670 AND (OCO.unidade_area_militar_nome LIKE '66 BPM%' OR OCO.unidade_area_militar_nome LIKE '%/66 BPM%') AND (OCO.unidade_area_militar_nome NOT LIKE '%TM%') THEN '66 BPM'
		ELSE 'OUTROS'
   	END AS ueop_2025,

   -- COLUNAS DE CONFERÊNCIA SOLICITADAS:
   
   -- 1. Quantidade total de envolvidos Femininos (ou identidades de gênero especificadas nas condições de violência doméstica)
   SUM(CASE WHEN (ENV.codigo_sexo = 'F' OR (ENV.identidade_genero_codigo IN ('0400','0200','0700','0100','0600') AND ENV.id_envolvimento IN(28,27,26,25,32,1097,872,1094))) THEN 1 ELSE 0 END) AS qtd_envolvidos_feminino,
   
   -- 2. Quantidade total de vítimas com os códigos especificados
   SUM(CASE WHEN ENV.envolvimento_codigo IN ('1300', '1399', '1301', '1302', '1303', '1304', '1305') THEN 1 ELSE 0 END) AS qtd_vitimas,
   
   -- 3. Quantidade que atende AMBOS os critérios simultaneamente (Mulher E Vítima - que é o que valida o indicador final)
   SUM(CASE WHEN (ENV.codigo_sexo = 'F' OR (ENV.identidade_genero_codigo IN ('0400','0200','0700','0100','0600') AND ENV.id_envolvimento IN(28,27,26,25,32,1097,872,1094))) 
                 AND ENV.envolvimento_codigo IN ('1300', '1399', '1301', '1302', '1303', '1304', '1305') THEN 1 ELSE 0 END) AS qtd_validas_indicador

FROM db_bisp_reds_reporting.tb_ocorrencia AS OCO              
INNER JOIN db_bisp_reds_reporting.tb_envolvido_ocorrencia AS ENV ON ENV.numero_ocorrencia = OCO.numero_ocorrencia
WHERE 1 = 1
    AND YEAR(OCO.data_hora_fato) >= 2026                    -- Considera ocorrências de 2026 em diante
    AND OCO.ocorrencia_uf = 'MG'                            -- Restringe a Minas Gerais
    AND OCO.digitador_sigla_orgao = 'PM'                    -- Registros digitados pela PM
    AND OCO.natureza_codigo = 'A20002'                      -- Filtra obrigatoriamente todas as Visitas Tranquilizadoras (A20002)
    AND OCO.codigo_municipio IN (310670, 310810, 310900, 311860, 312060, 312410, 312600, 312980, 313010, 313220, 313665, 314015, 314070, 315040, 315460, 315530, 316292, 316553)

GROUP BY 
   OCO.numero_ocorrencia,                                   
   OCO.natureza_codigo,                                     
   OCO.natureza_descricao,                                  
   OCO.codigo_municipio,
   OCO.nome_municipio,                                      
   OCO.data_hora_fato,
   OCO.unidade_area_militar_nome                           

ORDER BY OCO.data_hora_fato DESC;