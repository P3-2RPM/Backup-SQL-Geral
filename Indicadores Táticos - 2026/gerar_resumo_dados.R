############################################### 
# CERTIFIQUE QUE ATUALIZOU A BASE DO SIGOP ANÁLISE NA PASTA SIGOP
# E RODOU O SCRIPT QUE BAIXA A BASE DE A05 NA PASTA 
############################################### 

############################################### 
# 0. INSTALAR E CARREGAR OS PACOTES NECESSÁRIOS
############################################### 

if(!require(tidyverse)) install.packages("tidyverse")
if(!require(lubridate)) install.packages("lubridate")
if(!require(readxl)) install.packages("readxl")
if(!require(gt)) install.packages("gt")
if(!require(gtExtras)) install.packages("gtExtras")

############################################### 
# 1. DEFINIÇÃO DE CAMINHOS
############################################### 

pasta_sigop <- "C:/Users/pmmg/Documents/Documentos Seção/Banco de Dados/sigop"
pasta_tri   <- "C:/Users/pmmg/Documents/Documentos Seção/Banco de Dados/BD_indicador_tatico/publicacao_2026"

############################################### 
# 2. CRIACAO DA BASE PELO SIGOP
############################################### 

df_2026 <- read.csv2(file.path(pasta_sigop, "sigop_BO_2026.csv")) %>%
  filter(MES_NUMERICO > 4) %>%
  filter(substr(CODIGO_UNID_REGISTRO_NIVEL_4, 1, 1) != "C") %>%
  filter(IMV_TOTAL > 0 | ICVPE_TOTAL > 0 | ICVPA_TOTAL > 0) %>%
  # já retirando os registros de extorsão aqui, já que não valem pros nossos indicadores
  filter(CODIGO_NATUREZA_PRINCIPAL != "C01158") %>%
  
  mutate(
    DATA_HORA_COMUNICACAO = dmy_hms(DATA_HORA_COMUNICACAO),
    DATA_HORA_FATO = dmy_hms(paste(DATA_FATO, HORARIO_FATO))
  ) %>%
  
  select(NUMERO_REDS, UNID_AREA_NIVEL_4, UNID_AREA_NIVEL_5, UNID_REGISTRO_NIVEL_7, 
         MES_NUMERICO, ANO_FATO, DATA_HORA_FATO, DATA_HORA_COMUNICACAO,
         CODIGO_NATUREZA_PRINCIPAL, QTDE_PRISAO, IMV_TOTAL, ICVPE_TOTAL, ICVPA_TOTAL) %>%
  
  mutate(FLAG_TM = case_when(
    str_detect(UNID_REGISTRO_NIVEL_7, "TM") & !str_detect(UNID_REGISTRO_NIVEL_7, "TRAN") ~ 1,
    TRUE ~ 0
  ))

############################################### 
# 3. TABELA RESUMO DE INDICADORES POR UEOP
############################################### 

tabela_resumo_indicadores <- df_2026 %>%
  group_by(UNID_AREA_NIVEL_5) %>%
  
  summarise(
    # 1. CONTAGEM DE REDS (Apenas se a comunicação for em até 8 horas após o fato)
    REDS_IMV   = sum(IMV_TOTAL > 0 & DATA_HORA_COMUNICACAO <= (DATA_HORA_FATO + hours(8)), na.rm = TRUE),
    REDS_ICVPE = sum(ICVPE_TOTAL > 0 & DATA_HORA_COMUNICACAO <= (DATA_HORA_FATO + hours(8)), na.rm = TRUE),
    REDS_ICVPA = sum(ICVPA_TOTAL > 0 & DATA_HORA_COMUNICACAO <= (DATA_HORA_FATO + hours(8)) & na.rm = TRUE),
    
    # 2. SOMA DE PRISÕES DO TM (Livre do limite de 8h, conta tudo que for TM e Indicador > 0)
    PRISOES_TM_IMV   = sum(ifelse(IMV_TOTAL > 0 & FLAG_TM == 1, QTDE_PRISAO, 0), na.rm = TRUE),
    PRISOES_TM_ICVPE = sum(ifelse(ICVPE_TOTAL > 0 & FLAG_TM == 1, QTDE_PRISAO, 0), na.rm = TRUE),
    PRISOES_TM_ICVPA = sum(ifelse(ICVPA_TOTAL > 0 & FLAG_TM == 1, QTDE_PRISAO, 0), na.rm = TRUE),
    
    .groups = "drop"
  )

# 3. Ordenação padrão
ordem_unidades <- c("18 BPM", "33 BPM", "39 BPM", "40 BPM", "48 BPM", "66 BPM", "6 CIA PM IND", "7 CIA PM IND")
tabela_resumo_indicadores <- tabela_resumo_indicadores %>%
  mutate(UNID_AREA_NIVEL_5 = factor(UNID_AREA_NIVEL_5, levels = ordem_unidades)) %>%
  arrange(UNID_AREA_NIVEL_5)


############################################### 
# 4. PROCESSAMENTO DA SEGUNDA BASE: PRISÕES A05
############################################### 

message("Processando a base de prisões PRISAO_A05.csv...")

# 4.1 Carregar a base de prisões a05
df_prisao_a05 <- read.csv2(file.path(pasta_tri, "PRISAO_A05.csv"))

# 4.2 Tratar a base: criar UEOp, Flag_TM
df_prisao_tratada <- df_prisao_a05 %>%
  # Criação da FLAG_TM
  mutate(FLAG_TM = case_when(
    str_detect(unidade_registro, "TM") & !str_detect(unidade_registro, "TRAN") ~ 1,
    TRUE ~ 0
  )) %>%
  
  # Extração da UEOp 
    mutate(
        UNID_AREA_NIVEL_5 = str_extract(unidade_registro, "18 BPM|33 BPM|39 BPM|40 BPM|48 BPM|66 BPM|6 CIA PM IND|7 CIA PM IND")
  ) %>%
  
  # Substitui por "OUTROS" caso alguma unidade de registro seja de fora da RPM
  mutate(UNID_AREA_NIVEL_5 = ifelse(is.na(unidade_registro), "OUTROS", UNID_AREA_NIVEL_5))

# 4.3 Agrupar e contar as prisões por UEOp
resumo_prisao_a05 <- df_prisao_tratada %>%
  group_by(UNID_AREA_NIVEL_5) %>%
  summarise(
    A05_TM_IMV   = sum(FLAG_TM == 1 & codigo_natureza_envolvido %in% c('B01121', 'B01504'), na.rm = TRUE),
    A05_TM_ICVPE = sum(FLAG_TM == 1 & codigo_natureza_envolvido %in% c('B02001', 'B01148'), na.rm = TRUE),
    A05_TM_ICVPA = sum(FLAG_TM == 1 & codigo_natureza_envolvido %in% c('C01157', 'C01159'), na.rm = TRUE),
    .groups = "drop"
  )

############################################### 
# 5. CONSOLIDAR AS DUAS BASES (UNIÃO DOS DADOS)
############################################### 

message("Consolidando os dados das duas matrizes...")

tabela_final_consolidada <- tabela_resumo_indicadores %>%
  # Junta a tabela anterior com o resumo da base A05 usando a UEOp como chave
  left_join(resumo_prisao_a05, by = "UNID_AREA_NIVEL_5") %>%
  
  # Substitui eventuais NAs por 0 (caso alguma UEOp não tenha prisões na base A05)
  mutate(across(starts_with("A05_"), ~ coalesce(., 0))) %>%
  
  # SOMA AS DUAS FONTES DE PRISÃO (Base original + Base A05)
  mutate(
    PRISOES_TM_IMV   = PRISOES_TM_IMV + A05_TM_IMV,
    PRISOES_TM_ICVPE = PRISOES_TM_ICVPE + A05_TM_ICVPE,
    PRISOES_TM_ICVPA = PRISOES_TM_ICVPA + A05_TM_ICVPA
  ) %>%
  
  # Remove as colunas temporárias da base A05 para limpar a matriz final
  select(UNID_AREA_NIVEL_5, REDS_IMV, REDS_ICVPE, REDS_ICVPA, 
         PRISOES_TM_IMV, PRISOES_TM_ICVPE, PRISOES_TM_ICVPA)

# Reordenar e salvar o resultado final completo
tabela_final_consolidada <- tabela_final_consolidada %>%
  mutate(UNID_AREA_NIVEL_5 = factor(UNID_AREA_NIVEL_5, levels = ordem_unidades)) %>%
  arrange(UNID_AREA_NIVEL_5)

# Nome do arquivo final consolidado
nome_consolidado <- paste0("Painel_Consolidado_Indicadores_TM_", format(hoje, "%d_%m_%Y"), ".csv")
write.csv2(tabela_final_consolidada, file.path(pasta_tri, nome_consolidado), row.names = FALSE)

message(paste("Terminado! Painel consolidado salvo em:", nome_consolidado))