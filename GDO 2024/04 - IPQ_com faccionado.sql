-- IPQ VERSÃO 20/04/2024 (ADIÇÃO DA COLUNA "DUPLICADO")
WITH 
FACCIONADOS AS (
SELECT "ABEL AUGUSTO DOS SANTOS SILVA" AS nome_completo_faccionado, "BENEDITA DOS SANTOS SILVA" AS nome_mae_fac, TO_TIMESTAMP("28/08/1969", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ABES CARMO DE FREITAS" AS nome_completo_faccionado, "LUCIANE DO CARMO" AS nome_mae_fac, TO_TIMESTAMP("27/10/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ABIMAEL RODRIGUES DOS SANTOS" AS nome_completo_faccionado, "MARIA RAIMUNDA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("07/09/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ABNER DIEGO FORTUNATO" AS nome_completo_faccionado, "IOLANDA FORTUNATO LESSA" AS nome_mae_fac, TO_TIMESTAMP("09/09/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ACACIO DOS SANTOS MIGUEL" AS nome_completo_faccionado, "MARIA ZALDETE RODRIGUES DOS SANTOS MIGUEL" AS nome_mae_fac, TO_TIMESTAMP("10/09/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADALBERTO MARCOS DE SOUSA" AS nome_completo_faccionado, "TEREZINHA DE JESUS DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("11/06/1957", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADAUTO FLAUZINO SOARES" AS nome_completo_faccionado, "REGIANE APARECIDA FLAUZINO" AS nome_mae_fac, TO_TIMESTAMP("23/03/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADAO PEIXOTO DE SOUZA FILHO" AS nome_completo_faccionado, "MARIA DA CONCEICAO DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("30/10/1968", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADAO RIBEIRO" AS nome_completo_faccionado, "ORFILINA RIBEIRO" AS nome_mae_fac, TO_TIMESTAMP("11/09/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADAUTO ALVES DE MORAIS JUNIOR" AS nome_completo_faccionado, "MARINALVA DE CARVALHO SILVA" AS nome_mae_fac, TO_TIMESTAMP("28/10/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADEILSON PEREIRA SILVA" AS nome_completo_faccionado, "LEIDIMAR PEREIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("14/04/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADEMILSON DOS REIS LIMA" AS nome_completo_faccionado, "NEIVA OLIVEIRA LIMA" AS nome_mae_fac, TO_TIMESTAMP("27/05/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADEMIR NELSON DE SOUZA" AS nome_completo_faccionado, "MARIA JOANA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("13/06/1972", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADENILSON ALEXANDRE GOMES" AS nome_completo_faccionado, "IZABEL ALEXANDRE EVENGELISTA" AS nome_mae_fac, TO_TIMESTAMP("24/10/1973", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADILIO CARVALHO FERREIRA" AS nome_completo_faccionado, "DALILA CARVALHO" AS nome_mae_fac, TO_TIMESTAMP("05/11/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADILSON FLAVIANO GONCALVES" AS nome_completo_faccionado, "MARIA DE LOURDES MODESTO GONCALVES" AS nome_mae_fac, TO_TIMESTAMP("01/11/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADILSON MOREIRA DA SILVA" AS nome_completo_faccionado, "MARIA DE FATIMA MOREIRA" AS nome_mae_fac, TO_TIMESTAMP("06/06/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADILSON TEIXEIRA" AS nome_completo_faccionado, "ELISABETH DE OLIVEIRA NASCIMENTO TEIXEIRA" AS nome_mae_fac, TO_TIMESTAMP("18/04/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADNEI GOMES DA SILVA" AS nome_completo_faccionado, "MARIA ROSALVA GOMES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("23/03/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADRIANA CARDOSO NOGUEIRA" AS nome_completo_faccionado, "FATIMA APARECIDA DECIMO" AS nome_mae_fac, TO_TIMESTAMP("02/02/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADRIANO ALVES SANTANA" AS nome_completo_faccionado, "JOVELINA ALVES DO CARMO SANTANA" AS nome_mae_fac, TO_TIMESTAMP("13/12/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADRIANO BERNARDINO DE FARIA" AS nome_completo_faccionado, "RITA DE CASSIA VENANCIO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("01/12/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADRIANO CARLOS DE OLIVEIRA" AS nome_completo_faccionado, "MARIA ELISABETH SOARES" AS nome_mae_fac, TO_TIMESTAMP("11/09/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADRIANO GUILHERME ROCHA TAVARES" AS nome_completo_faccionado, "MICHELE ROCHA TAVARES GUILHERME" AS nome_mae_fac, TO_TIMESTAMP("19/01/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADRIANO JOSE DA SILVA" AS nome_completo_faccionado, "ELIZANGELA MARIA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("27/05/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADRIANO REGINALDO DA CUNHA" AS nome_completo_faccionado, "MARIA DE LOURDES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("28/12/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADRIANO ROSA SILVA" AS nome_completo_faccionado, "LUCIA HELENA ROSA" AS nome_mae_fac, TO_TIMESTAMP("30/11/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADRIANO SANTANA DA SILVA" AS nome_completo_faccionado, "MARIA DO CARMO SANTANA" AS nome_mae_fac, TO_TIMESTAMP("07/10/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADRIANO SILVA RANGEL" AS nome_completo_faccionado, "MARIA D FATIMA SILVA RANGEL" AS nome_mae_fac, TO_TIMESTAMP("21/11/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADRIANO SILVESTRE DIAS" AS nome_completo_faccionado, "MARIA DE NAZARE SILVESTE DIAS" AS nome_mae_fac, TO_TIMESTAMP("07/01/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADRIELLY GONZAGA SILVA" AS nome_completo_faccionado, "ADRIANA FILOMENA GONZAGA SILVA" AS nome_mae_fac, TO_TIMESTAMP("20/06/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "AERITON LUIZ DOS SANTOS" AS nome_completo_faccionado, "MARIA JOSE LUIZ" AS nome_mae_fac, TO_TIMESTAMP("10/09/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "AGEU RIBEIRO" AS nome_completo_faccionado, "ADRIANA INACIA RIBEIRO" AS nome_mae_fac, TO_TIMESTAMP("20/03/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "AGRIMALDO OLIVEIRA DE SOUZA ROZA" AS nome_completo_faccionado, "TEREZA DE OLIVEIRA FECUNDES" AS nome_mae_fac, TO_TIMESTAMP("07/05/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "AGUINALDO ALVES DOS REIS" AS nome_completo_faccionado, "CARLA MAIZA FERREIRA DOS REIS" AS nome_mae_fac, TO_TIMESTAMP("02/06/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "AILTON CESAR DE SENA" AS nome_completo_faccionado, "MARIA FRANCISCA DE SENA" AS nome_mae_fac, TO_TIMESTAMP("30/06/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "AILTON MARTINS SILVA" AS nome_completo_faccionado, "ONIZIA ANTANIA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("14/04/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALAN DOUGLAS MORAES DIAS " AS nome_completo_faccionado, "ANA TEOTONIA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("01/06/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALAN EDISON MARTINS DE SOUZA" AS nome_completo_faccionado, "ANTONIA JANDIRA MARTINS" AS nome_mae_fac, TO_TIMESTAMP("13/11/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALAN EDUARDO ZANCAN" AS nome_completo_faccionado, "ELVIRA EDUARDO ZANCAN" AS nome_mae_fac, TO_TIMESTAMP("16/05/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALAN GOMES FERREIRA VIANA" AS nome_completo_faccionado, "MARIA DE FATIMA GOMES VIANA" AS nome_mae_fac, TO_TIMESTAMP("10/07/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALBERTO CRUZ DOS SANTOS" AS nome_completo_faccionado, "LEILA APARECIDA CRUZ DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("01/10/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALECSSANDRO RODRIGO GUIMARAES" AS nome_completo_faccionado, "ANA LUCIA DA CUNHA BARBOSA" AS nome_mae_fac, TO_TIMESTAMP("01/04/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEF MOREIRA MARTINS" AS nome_completo_faccionado, "VANI MOREIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("10/10/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEF RODRIGUES SALES" AS nome_completo_faccionado, "ROSA MARIA LEITE" AS nome_mae_fac, TO_TIMESTAMP("10/02/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALESIONARDO APARECIDO FERREIRA OLIVEIRA" AS nome_completo_faccionado, "MARIA EUSTAQUIA FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("02/04/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALESSANDRO BALDUINO DA SILVA" AS nome_completo_faccionado, "JOANA D ARC SILVA" AS nome_mae_fac, TO_TIMESTAMP("13/08/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALESSANDRO GOMES BATISTA" AS nome_completo_faccionado, "MARIA BATISTA ALBINO" AS nome_mae_fac, TO_TIMESTAMP("11/09/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALESSANDRO LUCIO FERREIRA" AS nome_completo_faccionado, "TERCILIA CHIQUEZA" AS nome_mae_fac, TO_TIMESTAMP("26/11/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALESSANDRO MARETO" AS nome_completo_faccionado, "OLIMPIA RICCI MARETO" AS nome_mae_fac, TO_TIMESTAMP("10/05/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALESSANDRO MENDANHA DA MAIA BORTOLAZ" AS nome_completo_faccionado, "ANICIA MENDANHA DA MAIA" AS nome_mae_fac, TO_TIMESTAMP("26/11/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEX CESAR GONZAGA" AS nome_completo_faccionado, "MARIA AUXILIADORA MARQUES" AS nome_mae_fac, TO_TIMESTAMP("08/07/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEX DOS SANTOS CANUTO" AS nome_completo_faccionado, "CLAUDIA RAQUEL SIQUEIRA" AS nome_mae_fac, TO_TIMESTAMP("04/10/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEX FABIANO DOS SANTOS" AS nome_completo_faccionado, "MARIA IZABEL DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("18/04/1973", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEX JUNIOR GOMES CHERXES" AS nome_completo_faccionado, "CLEUCI FERREIRA GOMES" AS nome_mae_fac, TO_TIMESTAMP("17/06/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEX MARTINS NASCIMENTO" AS nome_completo_faccionado, "MARIA TEREZINHA DOMINGUES MARTINS NASCIMENTO" AS nome_mae_fac, TO_TIMESTAMP("29/11/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEX RIBEIRO DA SILVA" AS nome_completo_faccionado, "ROSANGELA RIBEIRO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("25/08/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEX ROBSON FRANCISCO" AS nome_completo_faccionado, "JOANA DARC BARBOSA FRANCISCO" AS nome_mae_fac, TO_TIMESTAMP("08/09/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEX SANDRO BERNARDES" AS nome_completo_faccionado, "MARIA APARECIDA DA SILVA BERNARDES" AS nome_mae_fac, TO_TIMESTAMP("30/09/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEX WILLIAN DO NASCIMENTO" AS nome_completo_faccionado, "MARCIA CURSINO DOS SANTOS DO NASCIMENTO" AS nome_mae_fac, TO_TIMESTAMP("15/10/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXANDRE ALVES" AS nome_completo_faccionado, "MARIA APARECIDA PAULINO ALVES" AS nome_mae_fac, TO_TIMESTAMP("11/08/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXANDRE BARBOSA CARRIJO" AS nome_completo_faccionado, "ERMITA MARLI LINHARES BARBOSA FERNANDES" AS nome_mae_fac, TO_TIMESTAMP("07/05/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXANDRE CARDOSO DE OLIVEIRA" AS nome_completo_faccionado, "ROSELI MARIA CARDOSO DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("05/02/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXANDRE DA CRUZ CARVALHO" AS nome_completo_faccionado, "CLAUDINEIA APARECIDA DA CRUZ" AS nome_mae_fac, TO_TIMESTAMP("02/07/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXANDRE FERREIRA" AS nome_completo_faccionado, "MARIA SOCORRO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("03/10/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXANDRE JONAS DOS REIS" AS nome_completo_faccionado, "ROSA MARIA DE PONTES" AS nome_mae_fac, TO_TIMESTAMP("06/09/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXANDRE LUIZ DE JESUS FERREIRA" AS nome_completo_faccionado, "NEUZA DE JESUS DONIZETI" AS nome_mae_fac, TO_TIMESTAMP("08/10/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXANDRE MARCIO RODRIGUES" AS nome_completo_faccionado, "MARIA DE FATIMA RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("15/01/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXANDRE RIBEIRO DA COSTA" AS nome_completo_faccionado, "SILVIA RIBEIRO DA COSTA" AS nome_mae_fac, TO_TIMESTAMP("24/07/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXANDRE RODRIGUES DOS SANTOS" AS nome_completo_faccionado, "MARIA APARECIDA FERRARI DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("23/09/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXANDRE ROSA CANDIDO" AS nome_completo_faccionado, "ALICE ROSA CANDIDO" AS nome_mae_fac, TO_TIMESTAMP("26/04/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXANDRE SOUZA SILVA" AS nome_completo_faccionado, "MARIA REGINA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("21/03/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXANDRE TEMOTEO DA SILVA FERREIRA" AS nome_completo_faccionado, "MARIA EDUIZE DA SILVA FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("28/02/1966", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXANDRO FERNANDES SIQUEIRA BASTOS" AS nome_completo_faccionado, "TANIA MARIA BASTOS" AS nome_mae_fac, TO_TIMESTAMP("03/06/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXANDRO SANTANA" AS nome_completo_faccionado, "RAIMUNDA DAS GRACAS SOARES SANTANA" AS nome_mae_fac, TO_TIMESTAMP("21/10/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXSANDRA SOUSA DE JESUS" AS nome_completo_faccionado, "SUZIMARA FERREIRA DE SOUSA" AS nome_mae_fac, TO_TIMESTAMP("07/12/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXSANDRO ALVES FERREIRA" AS nome_completo_faccionado, "CANDIDA MARIA ALVES FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("08/12/1972", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXSANDRO MENDES ARAUJO" AS nome_completo_faccionado, "FATIMA APARECIDA SILVA MEDES" AS nome_mae_fac, TO_TIMESTAMP("13/05/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXSSANDRO PEREIRA SILVA" AS nome_completo_faccionado, "NELZA MARIA PEREIRA SILVA" AS nome_mae_fac, TO_TIMESTAMP("18/08/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALINE DOS REIS EMIDIO" AS nome_completo_faccionado, "BERNADETE DOS REIS EMIDIO" AS nome_mae_fac, TO_TIMESTAMP("03/02/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALISSON BRUNO DE OLIVEIRA" AS nome_completo_faccionado, "JOANA D'ARC DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("12/06/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALISSON GONCALVES CARDOSO" AS nome_completo_faccionado, "CLEIDE GONCALVES CARDOSO" AS nome_mae_fac, TO_TIMESTAMP("19/04/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALLAN PABLO NASCIMENTO MONTEIRO" AS nome_completo_faccionado, "JUCIANE APARECIDA NASCIMENTO DA SILVA " AS nome_mae_fac, TO_TIMESTAMP("16/03/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALLAN VASCONCELOS RIBEIRO" AS nome_completo_faccionado, "ANA LUCIA VASCONCELOS RIBEIRO" AS nome_mae_fac, TO_TIMESTAMP("03/04/2002", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALLYSSON CORDEIRO SANTOS" AS nome_completo_faccionado, "JUSLEY APARECIDA DA SILVA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("10/12/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALMIR RODRIGUES DOS SANTOS" AS nome_completo_faccionado, "GUIOMAR RODRIGUES DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("05/02/1972", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALVARO JOSE GUERREIRO" AS nome_completo_faccionado, "LAIDE MARTINS DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("13/03/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALVARO RIBEIRO DA COSTA SOBRINHO" AS nome_completo_faccionado, "EDNA BRITO DE MATTOS" AS nome_mae_fac, TO_TIMESTAMP("16/12/1968", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALYSSON DONIZETI DA SILVA" AS nome_completo_faccionado, "RENATA GOMES PAULINO SILVA" AS nome_mae_fac, TO_TIMESTAMP("05/07/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "AMANCIO RAMOS DOS REIS FILHO" AS nome_completo_faccionado, "NAIR GOMES DOS REIS" AS nome_mae_fac, TO_TIMESTAMP("11/04/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "AMANDA DE OLIVEIRA SOARES" AS nome_completo_faccionado, "MARGARIDA DE OLIVEIRA PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("08/01/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "AMILTON SILVA RODRIGUES" AS nome_completo_faccionado, "ELIZABETH PAULA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("13/12/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANA PAULA KANASHIRO MARTINS" AS nome_completo_faccionado, "CARMOSINA DANTAS KANASHIRO" AS nome_mae_fac, TO_TIMESTAMP("12/06/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANA PAULA ROCHA DO NASCIMENTO" AS nome_completo_faccionado, "MARIA APARECIDA FOGACA" AS nome_mae_fac, TO_TIMESTAMP("11/10/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDERSON ALVES DA SILVA" AS nome_completo_faccionado, "MARLI DE LOURDES ALVES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("28/04/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDERSON ANTONIO DA SILVA" AS nome_completo_faccionado, "ABADIA MARIA DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("07/11/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDERSON CARLOS GERONIMO" AS nome_completo_faccionado, "JULIA BASTOS GERONIMO" AS nome_mae_fac, TO_TIMESTAMP("16/10/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDERSON CLEYTON ROCHA" AS nome_completo_faccionado, "CLARICE DE FATIMA ROCHA" AS nome_mae_fac, TO_TIMESTAMP("21/01/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDERSON DE PAULA BATISTA" AS nome_completo_faccionado, "SILMARA BATISTA" AS nome_mae_fac, TO_TIMESTAMP("24/05/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDERSON DO CARMO MONTEVECHI SILVA LEMES" AS nome_completo_faccionado, "MARLI MONTEVECHI" AS nome_mae_fac, TO_TIMESTAMP("26/06/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDERSON ELIAS DA SILVA" AS nome_completo_faccionado, "SILVANA LEILA DE AVILA SILVA" AS nome_mae_fac, TO_TIMESTAMP("13/07/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDERSON FELIX MIRANDA" AS nome_completo_faccionado, "TERESINHA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("11/11/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDERSON FERNANDO OLIVEIRA" AS nome_completo_faccionado, "NATALINA AMARO JARDIM DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("20/08/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDERSON MACIEL BERNARDES" AS nome_completo_faccionado, "SOLANGE JOVINA MACIEL" AS nome_mae_fac, TO_TIMESTAMP("04/10/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDERSON MARINS" AS nome_completo_faccionado, "DORALICE MARINS" AS nome_mae_fac, TO_TIMESTAMP("08/02/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDERSON MENDES DOS SANTOS" AS nome_completo_faccionado, "MARLI DE PAULA AZEVEDO" AS nome_mae_fac, TO_TIMESTAMP("16/08/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDERSON ROBERTO PEREIRA BONFIM" AS nome_completo_faccionado, "LUCIMARA PEREIRA BONFIM" AS nome_mae_fac, TO_TIMESTAMP("15/03/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDERSON TAKATSU DA SILVA" AS nome_completo_faccionado, "SUELY DIVINA DA SILVA CAMARGOS" AS nome_mae_fac, TO_TIMESTAMP("29/11/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDERSON VINICIUS SOUZA SILVA" AS nome_completo_faccionado, "MARIA DOS ANJOS SOUZA BEM" AS nome_mae_fac, TO_TIMESTAMP("17/01/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDRE BATISTA SANTOS" AS nome_completo_faccionado, "ADALGISA BATISTA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("31/05/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDRE CARLOS ALBINO" AS nome_completo_faccionado, "ANA MARIA FELIX" AS nome_mae_fac, TO_TIMESTAMP("01/02/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDRE COSTA FERREIRA" AS nome_completo_faccionado, "IRANI COSTA FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("06/08/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDRE DE QUEIROZ LIMA" AS nome_completo_faccionado, "MARIA DAS GRACAS PENIDO DE QUEIROZ LIMA" AS nome_mae_fac, TO_TIMESTAMP("09/01/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDRE LUIS CANTARELLI DA SILVA" AS nome_completo_faccionado, "LUCILIA CANTARELLI DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("05/05/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDRE LUIZ AMARAL" AS nome_completo_faccionado, "LOURDES RODRIGUES AMARAL" AS nome_mae_fac, TO_TIMESTAMP("07/06/1969", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDRE LUIZ COSTA NASCIMENTO" AS nome_completo_faccionado, "MARLENE COSTA DO NASCIMENTO" AS nome_mae_fac, TO_TIMESTAMP("06/10/1973", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDRE LUIZ GARCIA" AS nome_completo_faccionado, "MARIA HELENA JOAQUIM GARCIA" AS nome_mae_fac, TO_TIMESTAMP("03/02/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDRE LUIZ GOMES" AS nome_completo_faccionado, "MARIA APARECIDA ROSA" AS nome_mae_fac, TO_TIMESTAMP("29/01/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDRE MARTINS MARQUES" AS nome_completo_faccionado, "TEREZINHA MARTINS MARQUES" AS nome_mae_fac, TO_TIMESTAMP("16/04/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDRE RODRIGUES PEREIRA MARTINS" AS nome_completo_faccionado, "MARIA RODRIGUES PEREIRA MARTINS" AS nome_mae_fac, TO_TIMESTAMP("07/08/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDRE RONAN COUTINHO SILVA" AS nome_completo_faccionado, "NEUSA COUTINHO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("05/01/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDRELISON DOS SANTOS OLIVEIRA" AS nome_completo_faccionado, "MARINALVA ALVES DOS SANTOS OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("21/05/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDREY MILLER SANTOS BONIFACIO" AS nome_completo_faccionado, "EDINAMAR VIEIRA DOS SANTOS BONIFACIO" AS nome_mae_fac, TO_TIMESTAMP("21/12/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANSELMO DA SILVA VITAL" AS nome_completo_faccionado, "MARIA LUCIENE DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("28/05/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANTONIA PIRES DE ANDRADE" AS nome_completo_faccionado, "MARIA SEVERINA SILVA" AS nome_mae_fac, TO_TIMESTAMP("18/09/1948", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANTONIO AUGUSTO DE ABREU PAULINO" AS nome_completo_faccionado, "IVONETE APARECIDA DE ABREU" AS nome_mae_fac, TO_TIMESTAMP("02/12/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANTONIO CARLOS GARCIA" AS nome_completo_faccionado, "ADALGIZA MARIA DOS SANTOS GARCIA" AS nome_mae_fac, TO_TIMESTAMP("11/03/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANTONIO CARLOS RODRIGUES DA SILVA" AS nome_completo_faccionado, "IRIA RODRIGUES DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("05/01/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANTONIO CELESTINO DE OLIVEIRA" AS nome_completo_faccionado, "LAURA MACHADO DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("18/03/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANTONIO CESAR COSTA" AS nome_completo_faccionado, "EUNICE FARIA COSTA" AS nome_mae_fac, TO_TIMESTAMP("13/06/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANTONIO DE SOUZA NETO" AS nome_completo_faccionado, "IRENE VENANCIA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("28/02/1957", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANTONIO DONIZETE CANDIDO" AS nome_completo_faccionado, "IRACI IZABEL DA COSTA CANDIDO" AS nome_mae_fac, TO_TIMESTAMP("03/04/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANTONIO ELIFAS SILVA" AS nome_completo_faccionado, "CACILDA SILVA" AS nome_mae_fac, TO_TIMESTAMP("04/12/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANTONIO FABIO RODRIGUES DE ALMEIDA" AS nome_completo_faccionado, "ISAURIA CORDEIRO DE ALMEIDA" AS nome_mae_fac, TO_TIMESTAMP("07/09/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANTONIO JOSE DA SILVA" AS nome_completo_faccionado, "ELISA ROSA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("05/07/1950", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANTONIO JOSE DA SILVA FILHO" AS nome_completo_faccionado, "MARIA VALDELIS CLEMENTINO DE LIMA" AS nome_mae_fac, TO_TIMESTAMP("17/01/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANTONIO JOSE PELEGRINI CORREA" AS nome_completo_faccionado, "MARIA DA GLORIA PELLEGRINI CORREA" AS nome_mae_fac, TO_TIMESTAMP("19/01/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANTONIO MARCOS FRANKLIN DE SOUZA" AS nome_completo_faccionado, "MARIA FRANKLIN DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("23/07/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANTONIO MARCOS SILVA FONTINELE" AS nome_completo_faccionado, "MARIA HELENA DE FREITAS SILVA" AS nome_mae_fac, TO_TIMESTAMP("27/05/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANTONIO MATOZINHOS JUNIOR DE MELO" AS nome_completo_faccionado, "MARIA DA CONCEICAO DE MELO OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("10/01/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANTONIO RODRIGO PEREIRA" AS nome_completo_faccionado, "MARIA IVONE TEIXEIRA NAVES" AS nome_mae_fac, TO_TIMESTAMP("28/08/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANTULIO PIRES DO PRADO" AS nome_completo_faccionado, "MARLENE MARIA DO PRADO" AS nome_mae_fac, TO_TIMESTAMP("21/09/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ARAO MADEIRA DE SIQUEIRA FREIRE JUNIOR" AS nome_completo_faccionado, "MARIA DAS MERCES BRANT DE SIQUEIRA FREIRE" AS nome_mae_fac, TO_TIMESTAMP("01/06/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ARCILIO ROSA DA SILVA" AS nome_completo_faccionado, "CLEUZA DIAS DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("29/11/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ARIEL PEIXOTO DA SILVA" AS nome_completo_faccionado, "ELIANA PEIXOTO DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("24/04/1999", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ARLEI ROCHA DA SILVA" AS nome_completo_faccionado, "MARIA DE FATIMA ROCHA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("21/07/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ARLEY DE OLIVEIRA ASSIS" AS nome_completo_faccionado, "LUZIA HELENA DE OLIVEIRA ASSIS" AS nome_mae_fac, TO_TIMESTAMP("17/04/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ARNALDO DA SILVA BEZERRA FILHO" AS nome_completo_faccionado, "MARLENE DE OLIVEIRA BEZERRA" AS nome_mae_fac, TO_TIMESTAMP("30/08/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ARTHUR BORGES DA COSTA" AS nome_completo_faccionado, "CARLA MARIA BORGES DA COSTA" AS nome_mae_fac, TO_TIMESTAMP("30/03/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ARTHUR NUNES GALVAO DA CUNHA" AS nome_completo_faccionado, "DENISE NUNES GALVAO DA CUNHA" AS nome_mae_fac, TO_TIMESTAMP("29/06/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ARTUR FALCONE JUNIOR" AS nome_completo_faccionado, "SORAIA MOREIRA LOPES" AS nome_mae_fac, TO_TIMESTAMP("13/06/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ATAIDES NUNES ALVES NETO" AS nome_completo_faccionado, "LAURA APARECIDA DE OLIVEIRA ALVES" AS nome_mae_fac, TO_TIMESTAMP("01/09/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ATILA JUSTINO DA SILVA" AS nome_completo_faccionado, "ELIZABETE DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("24/07/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "AUGUSTO DE MOURA MATIAS" AS nome_completo_faccionado, "SANDRA LUCIA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("23/04/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "AUGUSTO HENRIQUE SALES DAVIM" AS nome_completo_faccionado, "CLAUDIA SORAYA SALES DAVIM" AS nome_mae_fac, TO_TIMESTAMP("01/07/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BECKER WAINER TIAGO" AS nome_completo_faccionado, "GASPARINA PEREIRA DE LIMA" AS nome_mae_fac, TO_TIMESTAMP("14/11/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BEM-HUR FERNANDO FERREIRA BERNARDES" AS nome_completo_faccionado, "NELMA APARECIDA FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("16/05/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BENIVAL PINTO" AS nome_completo_faccionado, "JOANA MARIA DA CONCEICAO" AS nome_mae_fac, TO_TIMESTAMP("23/10/1969", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BOLIVAR JOSE ASSUNCAO" AS nome_completo_faccionado, "TEREZINHA ROSA DAMACENE" AS nome_mae_fac, TO_TIMESTAMP("06/12/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRAZ FERNANDO CLEMENTINO DA SILVA" AS nome_completo_faccionado, "SEDINA CLEMENTINA DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("30/08/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRAZ IGOR DE TOLEDO" AS nome_completo_faccionado, "MARIA APARECIDA DE TOLEDO" AS nome_mae_fac, TO_TIMESTAMP("03/02/1973", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRAZ MISAEL" AS nome_completo_faccionado, "MARIA DAS DORES DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("14/06/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRENO PEIXOTO DE SOUZA FERREIRA" AS nome_completo_faccionado, "EDNA PEIXOTO DE SOUZA FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("09/10/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO ALEXANDRE DAMIAO DOS SANTOS" AS nome_completo_faccionado, "ANA CANDIDA BATISTA GONCALVES" AS nome_mae_fac, TO_TIMESTAMP("27/08/1970", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO ALVES DE OLIVEIRA LAPA" AS nome_completo_faccionado, "NEIDE ALVES DE OLIVEIRA LAPA" AS nome_mae_fac, TO_TIMESTAMP("07/03/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO ALVES FERREIRA DA SILVA DIAS" AS nome_completo_faccionado, "ELIANE MARIA FERREIRA COSTA" AS nome_mae_fac, TO_TIMESTAMP("09/07/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO ANDRE BARUCCI" AS nome_completo_faccionado, "SOLANGE APARECIDA DE ARAUJO BARUCCI" AS nome_mae_fac, TO_TIMESTAMP("30/11/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO ANTUNES DE ARAUJO" AS nome_completo_faccionado, "AVANY ANTUNES DE ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("15/11/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO BISPO NASCIMENTO" AS nome_completo_faccionado, "MARIA BISPO RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("13/10/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO CESAR SANTOS" AS nome_completo_faccionado, "APARECIDA HELENA DA SILVA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("15/12/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO CESAR ZAUTRA" AS nome_completo_faccionado, "MARIA JOSE ALVES" AS nome_mae_fac, TO_TIMESTAMP("30/09/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO DA SILVA NASCIMENTO" AS nome_completo_faccionado, "SUSANA AUREA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("07/03/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO DANILO GONCALVES BORGES" AS nome_completo_faccionado, "HOSANA GONCALVES FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("09/01/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO DE FREITAS BARROSO" AS nome_completo_faccionado, "REGINA CLAUDIA DE FREITAS" AS nome_mae_fac, TO_TIMESTAMP("09/05/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO DO NASCIMENTO GARCIA" AS nome_completo_faccionado, "GILMARA DO NASCIMENTO GARCIA" AS nome_mae_fac, TO_TIMESTAMP("22/07/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO HENRIQUE ALMEIDA DE SALLES" AS nome_completo_faccionado, "ROSEMARY MOREIRA DE ALMEIDA" AS nome_mae_fac, TO_TIMESTAMP("30/09/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO JERONIMO DA SILVA" AS nome_completo_faccionado, "EDVANDA APARECIDA" AS nome_mae_fac, TO_TIMESTAMP("04/10/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO LINO PEREIRA" AS nome_completo_faccionado, "EVELI RODRIGUES PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("10/01/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO MARTINS SANTOS" AS nome_completo_faccionado, "LAUDELINA MARTINS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("16/03/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO MATHEUS DE SOUZA SILVA" AS nome_completo_faccionado, "IRIS MARTA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("12/05/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO MESSIAS BARCELOS DE ABREU" AS nome_completo_faccionado, "IRENE PAIVA" AS nome_mae_fac, TO_TIMESTAMP("05/09/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO MIRANDA STANCOV" AS nome_completo_faccionado, "VERA LUCIA MIRANDA" AS nome_mae_fac, TO_TIMESTAMP("20/02/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO MODESTO BARRETO" AS nome_completo_faccionado, "VILANTE MODESTO DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("05/01/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO MUNIZ DOS SANTOS" AS nome_completo_faccionado, "SIMONE MUNIZ FERREIRA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("10/12/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO PEREIRA DA SILVA" AS nome_completo_faccionado, "ROSILDA PEREIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("22/06/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO REZENDE NERES" AS nome_completo_faccionado, "ADRIANA REZENDE" AS nome_mae_fac, TO_TIMESTAMP("10/12/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO SOUSA SILVA" AS nome_completo_faccionado, "SHIRLEY APARECIDA DE SOUSA SILVA" AS nome_mae_fac, TO_TIMESTAMP("13/11/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO SOUZA MEDEIROS" AS nome_completo_faccionado, "ELIANE SOUZA RAMOS DE MEDEIROS" AS nome_mae_fac, TO_TIMESTAMP("02/06/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO THIAGO BRAGA" AS nome_completo_faccionado, "EULINA GOMES BRAGA" AS nome_mae_fac, TO_TIMESTAMP("17/09/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CACILDO BORGES BARBOSA" AS nome_completo_faccionado, "MARIA DE FATIMA BORGES BATISTA" AS nome_mae_fac, TO_TIMESTAMP("30/01/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CAIO HENRIQUE RIBEIRO" AS nome_completo_faccionado, "SIRLEI BATISTA RIBEIRO" AS nome_mae_fac, TO_TIMESTAMP("05/11/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CAIQUE FERNANDO ARGONDIZZI PEREIRA" AS nome_completo_faccionado, "ALZIRA MARIA ARGONDIZZI" AS nome_mae_fac, TO_TIMESTAMP("28/10/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CAIRO HENRIQUE PEREIRA DA SILVA" AS nome_completo_faccionado, "SANDRA MARIA PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("25/05/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CAMILA RODRIGUES NOGUEIRA" AS nome_completo_faccionado, "VERA LUCIA RODRIGUES RIBEIRO" AS nome_mae_fac, TO_TIMESTAMP("23/10/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLA BATISTA DA SILVA" AS nome_completo_faccionado, "EDIR BATISTA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("29/03/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS ALBERTO CARDOSO" AS nome_completo_faccionado, "MARIA DAS NEVES CARDOSO" AS nome_mae_fac, TO_TIMESTAMP("15/01/1946", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS ALBERTO DOS SANTOS ROSSI" AS nome_completo_faccionado, "FRANCISCA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("23/03/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS ALBERTO GERTRUDES" AS nome_completo_faccionado, "SONIA JANDIRA GERTRUDES" AS nome_mae_fac, TO_TIMESTAMP("06/09/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS ALBERTO RAMOS MATOS" AS nome_completo_faccionado, "ANGELINA RAMOS MARINHO MATOS" AS nome_mae_fac, TO_TIMESTAMP("13/05/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS ALEXANDRE RODRIGUES DE OLIVEIRA" AS nome_completo_faccionado, "NISIA REGINA DE OLIVEIRA RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("29/04/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS ANDRE DE OLIVEIRA JUNIOR" AS nome_completo_faccionado, "ENEDINA DONIZETI PIRES" AS nome_mae_fac, TO_TIMESTAMP("08/05/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS ANDRE DOS SANTOS" AS nome_completo_faccionado, "ODETE ESAU DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("18/09/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS ANTONIO DA SILVA" AS nome_completo_faccionado, "ANITA GRACINA DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("12/03/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS ANTONIO DA SIVA JUNIOR" AS nome_completo_faccionado, "EDIONE GUIMARAES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("12/06/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS ANTONIO SILVA JUNIOR" AS nome_completo_faccionado, "SANDRA RODRIGUES SOUSA E SILVA" AS nome_mae_fac, TO_TIMESTAMP("16/12/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS AUGUSTO PAIM DE OLIVEIRA" AS nome_completo_faccionado, "TEREZINHA DO CARMO PAIM" AS nome_mae_fac, TO_TIMESTAMP("17/10/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS EDUARDO BONIFACIO" AS nome_completo_faccionado, "VERA LUCIA PINHEIRO" AS nome_mae_fac, TO_TIMESTAMP("06/07/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS EDUARDO BORGES" AS nome_completo_faccionado, "ADRIANA CRISTINA DA SILVA CUNHA" AS nome_mae_fac, TO_TIMESTAMP("26/02/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS EDUARDO FERNANDES SILVA" AS nome_completo_faccionado, "HELENA FERNANDES DURVAL" AS nome_mae_fac, TO_TIMESTAMP("09/06/2001", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS EDUARDO MOREIRA" AS nome_completo_faccionado, "MARIA DAS GRACAS MOREIRA" AS nome_mae_fac, TO_TIMESTAMP("09/04/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS EDUARDO NISTARDA GALDINO DA SILVA" AS nome_completo_faccionado, "SOLANGE NISTARDA GALDINO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("21/03/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS EDUARDO NUNES DOS SANTOS" AS nome_completo_faccionado, "ANA PAULA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("30/04/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS EDUARDO ROMUALDO" AS nome_completo_faccionado, "MARIA MADALENA ROMUALDO" AS nome_mae_fac, TO_TIMESTAMP("18/11/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS EDUARDO SILVA DE OLIVEIRA" AS nome_completo_faccionado, "MARIA DO SOCORRO PEREIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("02/09/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS FABRICIO CORREA" AS nome_completo_faccionado, "SHIRLEI DOS SANTOS CORREA" AS nome_mae_fac, TO_TIMESTAMP("11/02/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS HENRIQUE ALVIM PEREIRA" AS nome_completo_faccionado, "ELIZABETE ALVIM PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("30/05/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS HENRIQUE ELIAS DA SILVA" AS nome_completo_faccionado, "GUIOMAR ELIAS DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("21/06/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS HENRIQUE NUNES DA SILVA " AS nome_completo_faccionado, "MARIA LUCIA DE FREITAS" AS nome_mae_fac, TO_TIMESTAMP("30/09/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS JERONIMO DA SILVA JUNIOR" AS nome_completo_faccionado, "CELIA MARIA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("07/07/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS LEANDRO DE FARIA" AS nome_completo_faccionado, "ELZA HELENA SILVA DE FARIA " AS nome_mae_fac, TO_TIMESTAMP("06/11/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS MARINO DA COSTA" AS nome_completo_faccionado, "MARIA DE JESUS DA COSTA" AS nome_mae_fac, TO_TIMESTAMP("02/08/1961", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS ROBERTO LAZARO DAS CHAGAS JUNIOR" AS nome_completo_faccionado, "ANA CRISTINA DO NASCIMENTO SOUSA" AS nome_mae_fac, TO_TIMESTAMP("25/02/2001", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS ROBERTO ROCHA" AS nome_completo_faccionado, "ODETE ESAU DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("26/09/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS TULIO GROPELO" AS nome_completo_faccionado, "ATENE CABRAL" AS nome_mae_fac, TO_TIMESTAMP("27/10/1970", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CASSIANO HENRIQUE PAULINO" AS nome_completo_faccionado, "FRANCISCA CAMILO PAULINO" AS nome_mae_fac, TO_TIMESTAMP("29/11/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CATRIENE DE ARAUJO LUCAS" AS nome_completo_faccionado, "SILVANA ARAUJO DA CRUZ" AS nome_mae_fac, TO_TIMESTAMP("27/10/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CAUE ALVES DE MIRANDA" AS nome_completo_faccionado, "IVA ALVES MIRANDA" AS nome_mae_fac, TO_TIMESTAMP("03/02/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CELIO ROBERTO DOS SANTOS" AS nome_completo_faccionado, "OBALDINA JACINTA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("10/12/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CELSO NUNES DA COSTA" AS nome_completo_faccionado, "MARIA HELENA GUIMARAES" AS nome_mae_fac, TO_TIMESTAMP("14/08/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CESAR AUGUSTO GOMES DE SOUSA" AS nome_completo_faccionado, "JOVINA GOMES DE SOUSA" AS nome_mae_fac, TO_TIMESTAMP("16/11/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CESAR BATISTA DO CARMO" AS nome_completo_faccionado, "MARIA BATISTA DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("13/10/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CEZAR ANTONIO DE SOUZA MAXIMO" AS nome_completo_faccionado, "MARCIA DE SOUZA MAXIMO" AS nome_mae_fac, TO_TIMESTAMP("06/06/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CHARLES BARBOSA PARRO" AS nome_completo_faccionado, "LEONICE BARBOSA RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("10/12/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CHARLES FIRMINO PEREIRA JUNIOR" AS nome_completo_faccionado, "MARIA AUXILIADORA PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("10/04/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CHARLES SILVA COSTA" AS nome_completo_faccionado, "JANE DOS REIS SILVA COSTA" AS nome_mae_fac, TO_TIMESTAMP("18/07/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CHAWSTON MARQUES" AS nome_completo_faccionado, "CRISTINA PEREIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("06/02/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CHRISTIAN RODRIGO FERREIRA" AS nome_completo_faccionado, "ANTONIETA NATALINA PENTO FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("01/04/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CHRISTOPHER CAMPOS MONTEIRO" AS nome_completo_faccionado, "CLAUDIA MARIA CAMPOS MONTEIRO" AS nome_mae_fac, TO_TIMESTAMP("05/09/1999", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CICERO DUARTE DA SILVA" AS nome_completo_faccionado, "JOEME DUARTE DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("05/09/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CILIO ANGELO MARTINS JUNIOR" AS nome_completo_faccionado, "MARLY RAIMUNDA DA SILVA MARTINS" AS nome_mae_fac, TO_TIMESTAMP("29/02/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CIRO APARECIDO OLIVEIRA DE LIMA" AS nome_completo_faccionado, "MARIA LUIZA RODRIGUES DE OLIVEIRA LIMA" AS nome_mae_fac, TO_TIMESTAMP("27/02/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CIRONEI PINTO DE SOUZA" AS nome_completo_faccionado, "ANA MARIA DA CUNHA SOUSA" AS nome_mae_fac, TO_TIMESTAMP("20/02/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLAUDINEI DOS SANTOS" AS nome_completo_faccionado, "ANGELA CATARINA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("11/12/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLAUDINEI SOUZA PAULA" AS nome_completo_faccionado, "TEREZINHA DE SOUZA DE PAULA" AS nome_mae_fac, TO_TIMESTAMP("06/06/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLAUDIO CAMILO DE ARAUJO" AS nome_completo_faccionado, "LEONTINA TERESA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("18/04/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLAUDIO DE JESUS LEAL ALMEIDA" AS nome_completo_faccionado, "MARIA NAIR LEAL ALMEIDA" AS nome_mae_fac, TO_TIMESTAMP("23/03/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLAUDIO HENRIQUE LUIZ" AS nome_completo_faccionado, "CLAUDIA MARIA FERNANDES" AS nome_mae_fac, TO_TIMESTAMP("24/11/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLAUDIO OLIVEIRA PAMPLONA" AS nome_completo_faccionado, "MIRIAM OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("03/08/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLAUDIO ROBERTO FERREIRA DA SILVA" AS nome_completo_faccionado, "MARIA ANGELICA DA CONCEICAO SANTOS DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("13/11/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLAUDIO ROSA DE ANDRADE" AS nome_completo_faccionado, "LEIMAR ROSA DE ANDRADE" AS nome_mae_fac, TO_TIMESTAMP("03/09/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLAUDIO SOUZA SILVA" AS nome_completo_faccionado, "CLAUDIONORA MARIA DE SOUZA SILVA" AS nome_mae_fac, TO_TIMESTAMP("29/08/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLEBER ANTONIO PEREIRA JUNIOR" AS nome_completo_faccionado, "ELCI SOARES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("07/01/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLEBER DO CARMO VENTURA" AS nome_completo_faccionado, "LUZIA DO CARMO VENTURA" AS nome_mae_fac, TO_TIMESTAMP("12/06/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLEBER FERREIRA DOS SANTOS JUNIOR" AS nome_completo_faccionado, "JEANE ALVES FERREIRA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("05/01/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLEBER FREITAS SILVA" AS nome_completo_faccionado, "LUCIA HELENA FREITAS SILVA" AS nome_mae_fac, TO_TIMESTAMP("16/03/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLEBER MEZZETTE VIEIRA" AS nome_completo_faccionado, "CONCEICAO DE FATIMA VIEIRA " AS nome_mae_fac, TO_TIMESTAMP("23/07/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLEBER PINHEIRO DA SILVA" AS nome_completo_faccionado, "MERCIA RIGLEIA PINHEIRO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("15/09/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLEBIO LUIS CASSEMIRO" AS nome_completo_faccionado, "MARIA APARECIDA DE SOUZA CASSEMIRO" AS nome_mae_fac, TO_TIMESTAMP("25/04/1966", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLEDSON DA CONCEICAO OLIVEIRA" AS nome_completo_faccionado, "DOMINGAS LINDAURA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("28/04/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLEIDIMAR CARVALHO FERREIRA" AS nome_completo_faccionado, "MARIA DA GLORIA FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("15/11/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLEITON DE SOUZA SANTOS" AS nome_completo_faccionado, "MARCIA DE SOUZA RAMOS" AS nome_mae_fac, TO_TIMESTAMP("23/07/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLEITON DIAS NOVAIS" AS nome_completo_faccionado, "ODETE DIAS SILVA" AS nome_mae_fac, TO_TIMESTAMP("03/08/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLEITON LUIZ MEIRELES" AS nome_completo_faccionado, "MARIA CLAUDETE DA SILVA MEIRELES" AS nome_mae_fac, TO_TIMESTAMP("14/07/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLEITON PEIXOTO DE SOUZA" AS nome_completo_faccionado, "MARIA DA CONCEICAO DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("22/03/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLEITON PEREIRA LOIOLA" AS nome_completo_faccionado, "DEUSANIRA PAULO PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("21/08/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLEONIO BATISTA DE FREITAS" AS nome_completo_faccionado, "ELZA BATISTA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("23/09/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLERIO VAGNER DA SILVA JUNIOR" AS nome_completo_faccionado, "GILDA MARIA DIAS DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("20/12/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLEUBER PIRES DO NASCIMENTO JUNIOR" AS nome_completo_faccionado, "MARIA DE JESUS CURSINO DA CUNHA NASCIMENTO" AS nome_mae_fac, TO_TIMESTAMP("07/01/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLEVESSON VITOR DOS SANTOS" AS nome_completo_faccionado, "MARIA CRISTINA VITOR DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("28/09/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLOVIS DOS SANTOS OLIVEIRA" AS nome_completo_faccionado, "IVANETE APARECIDA RUFINO OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("15/07/1973", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLOVIS MARCIO DE PAIVA" AS nome_completo_faccionado, "MARIA GORETE ROCHA" AS nome_mae_fac, TO_TIMESTAMP("28/03/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLOVIS MARTINS DOS SANTOS" AS nome_completo_faccionado, "MARIA RAIMUNDA FERREIRA MARTINS" AS nome_mae_fac, TO_TIMESTAMP("11/06/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CRISTIAN ALVES SANTOS" AS nome_completo_faccionado, "SONIA MARIA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("08/10/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CRISTIAN VICTOR TEIXEIRA NAVES NOGUEIRA " AS nome_completo_faccionado, "MARIA IVONE TEIXEIRA NAVES" AS nome_mae_fac, TO_TIMESTAMP("28/08/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CRISTIANO ALENCAR GONCALVES" AS nome_completo_faccionado, "SOLANGE GONCALVES" AS nome_mae_fac, TO_TIMESTAMP("05/04/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CRISTIANO ALVES FERNANDES" AS nome_completo_faccionado, "MARIA DE FATIMA ALVES FERNANDES" AS nome_mae_fac, TO_TIMESTAMP("13/08/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CRISTIANO ANDRE NUNES DA SILVA" AS nome_completo_faccionado, "MEIRE APARECIDA NUNES MARTINS SILVA" AS nome_mae_fac, TO_TIMESTAMP("28/09/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CRISTIANO AQUINO JUNQUEIRA" AS nome_completo_faccionado, "VERA LUCIA AQUINO JUNQUEIRA" AS nome_mae_fac, TO_TIMESTAMP("26/03/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CRISTIANO BARBOSA FARIA DA SILVA" AS nome_completo_faccionado, "MARIA BEATRIZ ROSA BARBOSA" AS nome_mae_fac, TO_TIMESTAMP("25/12/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CRISTIANO CAMPOS RIBEIRO" AS nome_completo_faccionado, "ANTONIA DE FATIMA CAMPOS" AS nome_mae_fac, TO_TIMESTAMP("13/06/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CRISTIANO DELEIGO" AS nome_completo_faccionado, "NEUSA APARECIDA BATISTA DELEIGO" AS nome_mae_fac, TO_TIMESTAMP("04/11/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CRISTIANO ESTEVES RAMOS" AS nome_completo_faccionado, "EDINALVA ESTEVES RAMOS" AS nome_mae_fac, TO_TIMESTAMP("16/05/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CRISTIANO GONCALVES" AS nome_completo_faccionado, "VITAR NAZARE LEAL GONCALVES" AS nome_mae_fac, TO_TIMESTAMP("19/09/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CRISTIANO RODRIGO DOS SANTOS" AS nome_completo_faccionado, "FRANCISCA ISABEL DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("04/06/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CRISTIANO SILVA" AS nome_completo_faccionado, "LINDEIA FLOR DE MAIO CARVALHO" AS nome_mae_fac, TO_TIMESTAMP("22/06/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DAIANA NASCIMENTO DE SOUZA" AS nome_completo_faccionado, "HELOISA HELENA NASCIMENTO DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("31/12/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DAINA MARTIMIANO LOURENCO" AS nome_completo_faccionado, "JANAINA MARTIMIANO FLAUZINO" AS nome_mae_fac, TO_TIMESTAMP("09/05/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DALMO GOMES DOS SANTOS" AS nome_completo_faccionado, "MARIA DO CARMO GOMES SANTOS" AS nome_mae_fac, TO_TIMESTAMP("31/08/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DAMIAO ALEX AMARO DA SILVA" AS nome_completo_faccionado, "VERBENIA MARIA DOMINGOS DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("01/07/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIEL ALEXSANDRO MELLO FIRMIANO" AS nome_completo_faccionado, "MAGALI D'ARCA MELLO POSSARLI" AS nome_mae_fac, TO_TIMESTAMP("09/02/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIEL BARBOSA DOS SANTOS" AS nome_completo_faccionado, "MARTINHA PEREIRA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("25/03/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIEL BRUNO DOS SANTOS MAGALHAES" AS nome_completo_faccionado, "ROSIMARIA COIMBRA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("10/12/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIEL CARVALHO" AS nome_completo_faccionado, "AIDE SOARES CARVALHO SANTOS" AS nome_mae_fac, TO_TIMESTAMP("20/06/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIEL DE LIMA MARTINS" AS nome_completo_faccionado, "MARIA EUNICE DE LIMA MARTINS" AS nome_mae_fac, TO_TIMESTAMP("03/12/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIEL DE SOUZA SILVA" AS nome_completo_faccionado, "ARLETE DE SOUZA SILVA" AS nome_mae_fac, TO_TIMESTAMP("20/04/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIEL DENIS DA SILVA" AS nome_completo_faccionado, "MARIA DE LOURDES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("09/10/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIEL FERNANDES DE CARVALHO" AS nome_completo_faccionado, "MARIA JOSE DE CARVALHO" AS nome_mae_fac, TO_TIMESTAMP("22/11/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIEL GUILHERME PASCOAL DOS SANTOS" AS nome_completo_faccionado, "CICERA MARIA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("20/01/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIEL HENRIQUE BINOTTI" AS nome_completo_faccionado, "NEUSA FRANCISCA DUARTE BINOTTI" AS nome_mae_fac, TO_TIMESTAMP("31/05/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIEL HENRIQUE GONCALVES FERREIRA" AS nome_completo_faccionado, "WANDA VICENTE FERREIRA GONCALVES" AS nome_mae_fac, TO_TIMESTAMP("07/10/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIEL JOSE GREGORIO" AS nome_completo_faccionado, "ROSELENE GREGORIO" AS nome_mae_fac, TO_TIMESTAMP("30/01/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIEL JOSE PEREIRA" AS nome_completo_faccionado, "LUCIA ABADIA PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("10/05/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIEL LUIZ DA SILVA" AS nome_completo_faccionado, "NIVALDA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("27/08/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIEL NASCIMENTO DE OLIVEIRA" AS nome_completo_faccionado, "CELIA REGINA PORTO DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("30/05/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIEL PRATES ANDRADE" AS nome_completo_faccionado, "FABRICIA PRATES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("06/06/2002", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIEL RODRIGUES SILVA" AS nome_completo_faccionado, "ELEUZA DA SILVA NOBREGA" AS nome_mae_fac, TO_TIMESTAMP("13/09/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIEL VENTURA DA SILVA" AS nome_completo_faccionado, "JACINTA VENTURA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("24/10/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIEL XAVIER RODRIGUES" AS nome_completo_faccionado, "MARCELE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("09/04/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIELLE APARECIDA SILVA" AS nome_completo_faccionado, "EDMA APARECIDA LEMOS" AS nome_mae_fac, TO_TIMESTAMP("17/08/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANILLO MENDES BARBOSA" AS nome_completo_faccionado, "MARLENE MENDES BARBOSA" AS nome_mae_fac, TO_TIMESTAMP("29/12/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANILO ALBERTO RIBEIRO DE SOUZA LIMA" AS nome_completo_faccionado, "MARIA INS RIBEIRO " AS nome_mae_fac, TO_TIMESTAMP("05/12/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANILO ANDRE SILVA MARQUES" AS nome_completo_faccionado, "CLELIA APARECIDA SILVA MARQUES" AS nome_mae_fac, TO_TIMESTAMP("23/02/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANILO DE ANDRADE NOVAIS" AS nome_completo_faccionado, "MARINEIDE MORAIS DE ANDRADE" AS nome_mae_fac, TO_TIMESTAMP("15/08/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANILO DE LIMA GOMES DE MORAIS" AS nome_completo_faccionado, "MARIA APARECIDA DE LIMA CARDOSO" AS nome_mae_fac, TO_TIMESTAMP("12/10/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANILO DIEGO DE MELO" AS nome_completo_faccionado, "EUCLEUSA MURARO DE MELO" AS nome_mae_fac, TO_TIMESTAMP("05/06/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANILO FERREIRA DIAS" AS nome_completo_faccionado, "MARIA CRISTINA FERREIRA DE MELO DIAS" AS nome_mae_fac, TO_TIMESTAMP("29/10/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANILO FERREIRA LOURENCO" AS nome_completo_faccionado, "APARECIDA FERREIRA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("22/11/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANILO FRANCISCO DE SALES" AS nome_completo_faccionado, "MARIA DE LOURDES DA SILVA SALES" AS nome_mae_fac, TO_TIMESTAMP("25/09/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANILO JOSE BUENO DE CAMARGO" AS nome_completo_faccionado, "APARECIDA BENEDITA SAMPAIO CAMARGO" AS nome_mae_fac, TO_TIMESTAMP("14/04/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANILO MOURA DE OLIVEIRA" AS nome_completo_faccionado, "MARIA PERPETUA DE OLIVEIRA MOURA" AS nome_mae_fac, TO_TIMESTAMP("17/03/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANILO REIS DO AMARAL" AS nome_completo_faccionado, "MARIA APARECIDA REIS DO AMARAL" AS nome_mae_fac, TO_TIMESTAMP("25/04/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANILO RODRIGO DACIOLO" AS nome_completo_faccionado, "SONIA CONCEICAO DACIOLO" AS nome_mae_fac, TO_TIMESTAMP("24/06/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANILO RODRIGUES FARIA" AS nome_completo_faccionado, "LAUDINETE RODRIGUES FARIA" AS nome_mae_fac, TO_TIMESTAMP("06/05/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANILO SANTOS DE LACERDA" AS nome_completo_faccionado, "VALERIA SANTOS SOUSA DE LACERDA" AS nome_mae_fac, TO_TIMESTAMP("05/05/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DARIL GONTIJO DOS SANTOS" AS nome_completo_faccionado, "IRENE GONTIJO DOS REIS" AS nome_mae_fac, TO_TIMESTAMP("02/04/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DARIO DE ANDRADE GALVAO" AS nome_completo_faccionado, "TEREZINHA DE ANDRADE GALVAO" AS nome_mae_fac, TO_TIMESTAMP("09/05/1957", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DARY ROQUE DE LIMA" AS nome_completo_faccionado, "ANA CLAUDINA" AS nome_mae_fac, TO_TIMESTAMP("15/02/1960", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DAVI BONIFACIO LINO" AS nome_completo_faccionado, "CLAUDECI MARIA DA CONCEICAO LINO" AS nome_mae_fac, TO_TIMESTAMP("15/02/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DAVI ROMANCINI" AS nome_completo_faccionado, "ROSA DE ARAUJO ROMANCINI" AS nome_mae_fac, TO_TIMESTAMP("20/06/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DAVID HENRIQUE FERREIRA" AS nome_completo_faccionado, "MARIA ISABEL MIGUEL" AS nome_mae_fac, TO_TIMESTAMP("04/04/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DAVID LIMA DA SILVA" AS nome_completo_faccionado, "LUZIA LIMA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("02/03/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DAVID MARCELO ALVES" AS nome_completo_faccionado, "BENEDITA CELIA DA SILVA CORREA" AS nome_mae_fac, TO_TIMESTAMP("01/06/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DAVID ROBERT DE FREITAS RIBEIRO" AS nome_completo_faccionado, "REGIANE APARECIDA DE FREITAS" AS nome_mae_fac, TO_TIMESTAMP("13/09/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DAVID SILVA GARCIA" AS nome_completo_faccionado, "MARIA JOSE DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("03/07/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DAVINO DA SILVA SOUZA " AS nome_completo_faccionado, "ALZENIR PEREIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("10/11/2000", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DEIR ROGER DA SILVA" AS nome_completo_faccionado, "CLARICE AMANCIO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("28/11/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DEIVID PAULO FELIX" AS nome_completo_faccionado, "CELMA JANI FELIX" AS nome_mae_fac, TO_TIMESTAMP("18/02/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DEIVID RODRIGUES DA SILVA" AS nome_completo_faccionado, "VILMA RODRIGUES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("17/06/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DEIVISSON SOARES GUERRA" AS nome_completo_faccionado, "MIRIAM SOARES MARTINS" AS nome_mae_fac, TO_TIMESTAMP("11/04/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DELMAR APARECIDO MONTANINI" AS nome_completo_faccionado, "MARIA JOSEFA DA CONCEICAO MONTANINI" AS nome_mae_fac, TO_TIMESTAMP("12/04/1969", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DENER DE OLIVEIRA" AS nome_completo_faccionado, "LEONILDA AFONSO DE PAULA" AS nome_mae_fac, TO_TIMESTAMP("26/05/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DENER RAFAEL DA SILVA RIBEIRO" AS nome_completo_faccionado, "MARILENA PEREIRA DA SILVA RIBEIRO" AS nome_mae_fac, TO_TIMESTAMP("06/11/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DENER ROSA DE OLIVEIRA" AS nome_completo_faccionado, "GENI ROSA DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("21/04/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DENICIO ANTONIO CARVALHO" AS nome_completo_faccionado, "MARIA APARECIDA GONCALVES" AS nome_mae_fac, TO_TIMESTAMP("31/08/1969", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DENILSON DA SILVA ALMEIDA" AS nome_completo_faccionado, "MARIA DE LOURDES DA SILVA ALMEIDA" AS nome_mae_fac, TO_TIMESTAMP("18/12/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DENILSON SILVA" AS nome_completo_faccionado, "MARIA DE LOURDES SILVA" AS nome_mae_fac, TO_TIMESTAMP("16/02/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DENILSON SILVA DE OLIVEIRA" AS nome_completo_faccionado, "LEILA SILVA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("26/01/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DENIS DOS SANTOS CANDIDO" AS nome_completo_faccionado, "HILDA MARIA CANDIDO" AS nome_mae_fac, TO_TIMESTAMP("20/07/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DENIS FERREIRA DE ABREU" AS nome_completo_faccionado, "LUCIANA FERREIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("08/06/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DENNER DOS SANTOS SILVA" AS nome_completo_faccionado, "GERALDA BENEDITA RAMOS" AS nome_mae_fac, TO_TIMESTAMP("20/12/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DENY MARCIO DA SILVA FARIAS" AS nome_completo_faccionado, "MARIA DO CARMO GONCALVES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("01/03/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DEON NILTON DE CAMARGO" AS nome_completo_faccionado, "MARIA DE LOURDES CAMARGO" AS nome_mae_fac, TO_TIMESTAMP("21/06/1971", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DEYVIS FERNANDES DE OLIVEIRA" AS nome_completo_faccionado, "MARIA FERNANDES DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("16/07/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIEGO ALMEIDA COSTA" AS nome_completo_faccionado, "SUELENE LEAO ALMEIDA" AS nome_mae_fac, TO_TIMESTAMP("10/02/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIEGO ALVES AMORIM" AS nome_completo_faccionado, "ROSANGELA APARECIDA DE AMORIM" AS nome_mae_fac, TO_TIMESTAMP("30/10/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIEGO ALVES DA SILVA COSTA" AS nome_completo_faccionado, "ANA ESTELA ALVES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("28/08/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIEGO ALVES SATIL" AS nome_completo_faccionado, "MARIA DO CARMO ALVES SATIL" AS nome_mae_fac, TO_TIMESTAMP("21/05/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIEGO AUGUSTO DOS SANTOS" AS nome_completo_faccionado, "MARIA ABADIA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("15/04/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIEGO BALBINO DO PRADO" AS nome_completo_faccionado, "MARILDA BALBINO DO PRADO" AS nome_mae_fac, TO_TIMESTAMP("06/03/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIEGO BELARMINO RODRIGUES" AS nome_completo_faccionado, "MARIA APARECIDA BELARMINO RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("26/09/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIEGO BRUNO DE MELO LUCIO" AS nome_completo_faccionado, "JOANA D'ARC JACINTO DE MELO LUCIO" AS nome_mae_fac, TO_TIMESTAMP("29/06/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIEGO DE ALMEIDA SANTOS TEIXEIRA" AS nome_completo_faccionado, "JOELITA DE ALMEIDA SANTOS TEIXEIRA" AS nome_mae_fac, TO_TIMESTAMP("20/07/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIEGO DE ALMEIDA TEIXEIRA" AS nome_completo_faccionado, "APARECIDA DE FATIMA DIAS DE ALMEIDA" AS nome_mae_fac, TO_TIMESTAMP("10/10/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIEGO DE OLIVEIRA BERNARDES" AS nome_completo_faccionado, "ROSANGELA MARIA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("11/09/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIEGO DINIZ SILVA PORTO" AS nome_completo_faccionado, "ROXANE DINIZ SILVA" AS nome_mae_fac, TO_TIMESTAMP("25/03/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIEGO FERNANDO PIRES" AS nome_completo_faccionado, "LUCIA HELENA PARREIRA PIRES" AS nome_mae_fac, TO_TIMESTAMP("08/08/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIEGO GONCALVES DA SILVA" AS nome_completo_faccionado, "ROSA HELENA PEREIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("26/08/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIEGO JOSE MARCUSSI" AS nome_completo_faccionado, "JANETE AUGUSTA DA SILVA MARCUSSI" AS nome_mae_fac, TO_TIMESTAMP("12/04/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIEGO MATHEUS BUGALHO SIMOES" AS nome_completo_faccionado, "TATIANE DOS REIS BUGALHO" AS nome_mae_fac, TO_TIMESTAMP("20/05/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIEGO RODRIGUES DA SILVA" AS nome_completo_faccionado, "ELIEZETE RODRIGUES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("16/08/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIOGENES ABEEN RESENDE" AS nome_completo_faccionado, "MARLENE DA SILVA DORNELAS" AS nome_mae_fac, TO_TIMESTAMP("09/01/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIOGENES ARAUJO PINHEIRO DOS SANTOS" AS nome_completo_faccionado, "JOSETE ARAUJO PINHEIRO" AS nome_mae_fac, TO_TIMESTAMP("11/10/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIOGO CASTILHO DUTRA" AS nome_completo_faccionado, "CLEUSA DE JESUS CASTILHO DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("02/04/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIOGO DA SILVA SANTOS" AS nome_completo_faccionado, "ILSINEIA DA SILVA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("13/11/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIOGO FERREIRA DA SILVA" AS nome_completo_faccionado, "ORCINA FERREIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("25/01/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIOGO MARQUES DE ARAUJO" AS nome_completo_faccionado, "MARIA DE FATIMA MARQUES DE ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("24/10/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIOGO PEREIRA DE OLIVEIRA" AS nome_completo_faccionado, "MARIA APARECIDA NUNES DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("02/04/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIONIZIO ALVES DE SOUZA NETO" AS nome_completo_faccionado, "ELOISA ALVES DE SOUZA SILVA" AS nome_mae_fac, TO_TIMESTAMP("27/03/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DJAIR ALVES DO NASCIMENTO" AS nome_completo_faccionado, "MARIA EUNICE DO NASCIMENTO" AS nome_mae_fac, TO_TIMESTAMP("09/03/1973", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "D'LEON MARCAL FERREIRA" AS nome_completo_faccionado, "IRINEIDE MARCAL DA SILVA " AS nome_mae_fac, TO_TIMESTAMP("16/01/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOMICIANO DE PAIVA ANDRADE" AS nome_completo_faccionado, "VERA LUCIA DE PAIVA ANDRADE" AS nome_mae_fac, TO_TIMESTAMP("24/01/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DONIZETE DA SILVA DE JESUS" AS nome_completo_faccionado, "MARIA NECI CLARINDO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("04/08/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DONOVAN LUIZ FERREIRA" AS nome_completo_faccionado, "LUCIA HELENA ALVES" AS nome_mae_fac, TO_TIMESTAMP("10/06/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DORIEDSON DE OLIVEIRA" AS nome_completo_faccionado, "ROMILDA CANDIDA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("22/03/1970", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS ALEXANDRE ALVES DE OLIVEIRA" AS nome_completo_faccionado, "DULCE HELENA ALEXANDRE" AS nome_mae_fac, TO_TIMESTAMP("07/08/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS ALKMIN CRISPIM" AS nome_completo_faccionado, "MARIA SUELI VIEIRA CRISPIM" AS nome_mae_fac, TO_TIMESTAMP("03/10/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS ANTONIO DA SILVA" AS nome_completo_faccionado, "MARIA FERREIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("21/09/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS APARECIDO DE CARVALHO" AS nome_completo_faccionado, "VERALUCIA RAMOS DE CARVALHO" AS nome_mae_fac, TO_TIMESTAMP("07/09/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS ARRUDA MENDONCA" AS nome_completo_faccionado, "ELENE MARIA ARRUDA MENDONCA" AS nome_mae_fac, TO_TIMESTAMP("26/04/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS CARDOSO BORGES SOUSA" AS nome_completo_faccionado, "ISAURA MARLI CARDOSO BORGES" AS nome_mae_fac, TO_TIMESTAMP("09/09/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS DA SILVA ANDRADE" AS nome_completo_faccionado, "APARECIDA DA SILVA ANDRADE" AS nome_mae_fac, TO_TIMESTAMP("02/12/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS DA SILVA ANDRADE" AS nome_completo_faccionado, "ARLY ROSA DA SILVA ANDRADE" AS nome_mae_fac, TO_TIMESTAMP("09/12/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS DA SILVEIRA" AS nome_completo_faccionado, "MARIA HILDA PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("19/09/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS DANIEL PEREIRA" AS nome_completo_faccionado, "SILVANIA APARECIDA PULQUERIO" AS nome_mae_fac, TO_TIMESTAMP("24/12/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS DE OLIVEIRA" AS nome_completo_faccionado, "APARECIDA DE LOURDES OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("05/01/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS DIAS DUARTE" AS nome_completo_faccionado, "ROSANGELA MARTINS DIAS DUARTE" AS nome_mae_fac, TO_TIMESTAMP("30/08/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS DOS REIS ROSA DIAS" AS nome_completo_faccionado, "SELMA CARLOS ROSA" AS nome_mae_fac, TO_TIMESTAMP("16/04/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS EVANGELISTA DE SOUSA" AS nome_completo_faccionado, "ROSALINA DAS DORES EVANGELISTA" AS nome_mae_fac, TO_TIMESTAMP("29/04/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS HENRIQUE GOMES" AS nome_completo_faccionado, "MARIA APARECIDA ROSA" AS nome_mae_fac, TO_TIMESTAMP("03/03/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS LOPES PEREIRA" AS nome_completo_faccionado, "SORAIA CRISTINA LOPES DE MORAIS" AS nome_mae_fac, TO_TIMESTAMP("13/04/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS MIRANDA MATOS" AS nome_completo_faccionado, "ANA PAULA MIRANDA BARBOSA" AS nome_mae_fac, TO_TIMESTAMP("10/02/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS OLIVEIRA DA SILVA" AS nome_completo_faccionado, "MARLENE RIBEIRO DE OLIVIEIRA" AS nome_mae_fac, TO_TIMESTAMP("02/03/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS PACHECO ALMEIDA DA SILVA" AS nome_completo_faccionado, "ROSANA VILALTA PACHECO ALMEIDA" AS nome_mae_fac, TO_TIMESTAMP("06/01/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS QUEIROZ MORAIS ROCHA" AS nome_completo_faccionado, "MEIRE MARIA QUEIROZ MORAIS ROCHA" AS nome_mae_fac, TO_TIMESTAMP("17/02/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS ROBERTO RAMOS FERNANDES" AS nome_completo_faccionado, "HELENA REGINA RAMOS" AS nome_mae_fac, TO_TIMESTAMP("18/11/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS TELES" AS nome_completo_faccionado, "TANIA MARIA TELES NEPOMUCENO" AS nome_mae_fac, TO_TIMESTAMP("17/06/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EBERSON DA SILVA PAULINO" AS nome_completo_faccionado, "CELIA MARIA DA SILVA PAULINO" AS nome_mae_fac, TO_TIMESTAMP("03/03/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EBERTON SALES MORAIS" AS nome_completo_faccionado, "SUELI SALES MORAIS" AS nome_mae_fac, TO_TIMESTAMP("23/02/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDER DE OLIVEIRA ESTEVES" AS nome_completo_faccionado, "CELIA DE OLIVEIRA ESTEVES" AS nome_mae_fac, TO_TIMESTAMP("02/07/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDER EUGENIO FRANCISCO DE REZENDE" AS nome_completo_faccionado, "MARIA TEREZA EUGENIO" AS nome_mae_fac, TO_TIMESTAMP("25/06/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDER LUIZ DOS SANTOS" AS nome_completo_faccionado, "RITA DE CÁSSIA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("16/10/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDER PACHECO GOMES" AS nome_completo_faccionado, "TEREZINHA PACHECO GOMES" AS nome_mae_fac, TO_TIMESTAMP("18/01/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDER SATIRO MOREIRA" AS nome_completo_faccionado, "MARIA DAS GRACAS SATIRO MOREIRA" AS nome_mae_fac, TO_TIMESTAMP("21/01/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDER SOARES DE MELO" AS nome_completo_faccionado, "MARIA EDNA DE MELO" AS nome_mae_fac, TO_TIMESTAMP("09/08/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDGARD PAULO DE ASSIS ANTONIO FILHO" AS nome_completo_faccionado, "ELIANA DA SILVA ASSIS ANTONIO" AS nome_mae_fac, TO_TIMESTAMP("11/05/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDICLECIO ALVES MARTINS" AS nome_completo_faccionado, "RITA ALVES MARTINS" AS nome_mae_fac, TO_TIMESTAMP("18/12/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDIGAR FONSECA SANTANA" AS nome_completo_faccionado, "CLEUSA RODRIGUES FONSECA" AS nome_mae_fac, TO_TIMESTAMP("19/10/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDILSON CORDEIRO DE SOUZA" AS nome_completo_faccionado, "ROSALICE CORDEIRO DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("18/02/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDIMAR ALVES DE LIMA" AS nome_completo_faccionado, "MARIA DOS ANJOS ALVES DE LIMA" AS nome_mae_fac, TO_TIMESTAMP("27/05/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDINAN RODRIGO ALVES" AS nome_completo_faccionado, "MARTA LUCIA DOS SANTOS ALVES" AS nome_mae_fac, TO_TIMESTAMP("15/02/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDINILSON CACILDO MARCAL SILVA" AS nome_completo_faccionado, "SILVANA CACILDA MARCAL" AS nome_mae_fac, TO_TIMESTAMP("24/11/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDIPO RICARDO MAGALHAES BADU" AS nome_completo_faccionado, "ELISA DE FATIMA MAGALHAES" AS nome_mae_fac, TO_TIMESTAMP("28/06/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDIVON RAMOS CARDOSO" AS nome_completo_faccionado, "ZITA ROSA RAMOS" AS nome_mae_fac, TO_TIMESTAMP("11/04/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDMAR ESTEVES GOMES" AS nome_completo_faccionado, "MARIA MARQUES ALVES" AS nome_mae_fac, TO_TIMESTAMP("05/06/1967", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDMAR PEREIRA DE MATOS" AS nome_completo_faccionado, "TEODOLINA PEREIRA DE MATOS" AS nome_mae_fac, TO_TIMESTAMP("07/05/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDMILSON DA SILVA" AS nome_completo_faccionado, "MARIA DAS GRACAS DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("16/04/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDMILSON PIMENTA DE OLIVEIRA" AS nome_completo_faccionado, "SUELY CARVALHO DE OLIVEIRA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("30/09/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDMO ROGER DOS SANTOS PRATA" AS nome_completo_faccionado, "MEIRELUCE DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("05/04/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDNILSON RODRIGUES DE SOUZA SOARES" AS nome_completo_faccionado, "MARIA APARECIDA DE SOUZA SOARES" AS nome_mae_fac, TO_TIMESTAMP("05/01/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDSON APARECIDO MAGRI DA SILVA" AS nome_completo_faccionado, "ANTONIA APARECIDA MAGRI DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("18/09/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDSON FERNANDO DE ANDRADE" AS nome_completo_faccionado, "KATIA DA SILVA LOPES FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("14/02/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDSON FERRAZ COSTA" AS nome_completo_faccionado, "ENIR FERRAZ COSTA" AS nome_mae_fac, TO_TIMESTAMP("22/06/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDSON FRANCISCO SANTOS" AS nome_completo_faccionado, "DOLORES MARIA DA CUNHA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("29/01/1963", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDSON JORGE DA SILVA" AS nome_completo_faccionado, "CLEUSA MARIA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("01/12/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDSON LUIZ MATIAS" AS nome_completo_faccionado, "MARIA ALICE MATIAS" AS nome_mae_fac, TO_TIMESTAMP("23/07/1971", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDSON MARQUES ESTEVES" AS nome_completo_faccionado, "MARIA MARQUES ALVES GOMES" AS nome_mae_fac, TO_TIMESTAMP("20/05/1969", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDSON SOUZA COSTA" AS nome_completo_faccionado, "MARIA DO CARMO SOUZA COSTA" AS nome_mae_fac, TO_TIMESTAMP("11/06/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDUARDO APARECIDO RODRIGUES PEREIRA" AS nome_completo_faccionado, "MARIA JOSE RODRIGUES DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("10/08/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDUARDO CANDIDO DE BRITO" AS nome_completo_faccionado, "NEUSA ROSA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("12/03/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDUARDO CESAR DOS SANTOS" AS nome_completo_faccionado, "GEORGINA FARIA RIBEIRO" AS nome_mae_fac, TO_TIMESTAMP("27/01/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDUARDO DE CASTRO" AS nome_completo_faccionado, "LUCIANA MARIA DE CASTRO" AS nome_mae_fac, TO_TIMESTAMP("07/03/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDUARDO DE OLIVEIRA SILVA" AS nome_completo_faccionado, "INES ROSA DE OLIVEIRA SILVA" AS nome_mae_fac, TO_TIMESTAMP("12/11/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDUARDO ESPER KALLAS" AS nome_completo_faccionado, "MARIA LUZIA GARCIA" AS nome_mae_fac, TO_TIMESTAMP("01/10/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDUARDO GOMES AMARAL" AS nome_completo_faccionado, "ELIZABETH APARECIDA GOMES" AS nome_mae_fac, TO_TIMESTAMP("24/04/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDUARDO GOMES DE OLIVEIRA" AS nome_completo_faccionado, "MARLENE GOMES DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("17/07/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDUARDO SANTOS DE ALMEIDA" AS nome_completo_faccionado, "ALESSANDRA SHEILA DOS SANTOS ALMEIDA" AS nome_mae_fac, TO_TIMESTAMP("22/07/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDVALDO CESAR DIAS" AS nome_completo_faccionado, "LUZIA APARECIDA DIAS" AS nome_mae_fac, TO_TIMESTAMP("13/03/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDWAGNER DOS SANTOS" AS nome_completo_faccionado, "MARIA LUCIA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("23/04/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ELEANDRO TIAGO PEREIRA SILVA" AS nome_completo_faccionado, "ANA MARIA VICENTE DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("09/12/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ELIAS ALVES DA SILVA" AS nome_completo_faccionado, "VILDA ALVES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("23/06/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ELIAS JUNIO AUGUSTO ARAUJO" AS nome_completo_faccionado, "LEDA EMILIA AUGUSTO ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("23/03/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ELISEU FERREIRA" AS nome_completo_faccionado, "ANTONIA DOS SANTOS FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("29/05/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ELKERSON SHEUDER BONFIM DA SILVA" AS nome_completo_faccionado, "SHEILA MORAIS BONFIM" AS nome_mae_fac, TO_TIMESTAMP("04/10/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ELLISON ARAUJO PICHARA" AS nome_completo_faccionado, "IONE DE FATIMA ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("03/04/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ELTON DO NASCIMENTO COELHO" AS nome_completo_faccionado, "MARIA DE LOURDES NASCIMENTO" AS nome_mae_fac, TO_TIMESTAMP("06/02/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ELTON JOHN SILVA DE PAULA" AS nome_completo_faccionado, "MARIA LUCIA RODRIGUES DA SILVA PAULA" AS nome_mae_fac, TO_TIMESTAMP("07/09/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ELTON JOSE SOARES" AS nome_completo_faccionado, "MARIA DE LURDES SOARES" AS nome_mae_fac, TO_TIMESTAMP("29/01/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ELVIRA BARBOSA DE OLIVEIRA" AS nome_completo_faccionado, "ALBERTINA RODRIGUES DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("24/11/1943", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ELVIS MORAIS SIMAO" AS nome_completo_faccionado, "ELENICE GIL MORAIS" AS nome_mae_fac, TO_TIMESTAMP("10/04/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EMERSON CASSIMIRO GOMES" AS nome_completo_faccionado, "FRANCISCA AGNA GOMES DE ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("18/07/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EMERSON DONIZETTI EVANGELISTA" AS nome_completo_faccionado, "MARIA JOSE EVANGELISTA" AS nome_mae_fac, TO_TIMESTAMP("18/06/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EMMANUEL FABRICIO DE JESUS" AS nome_completo_faccionado, "ANGELA JOANA DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("21/09/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EMMERSON LEONARDO ANTUNES" AS nome_completo_faccionado, "AVANY ANTUNES DE ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("28/08/1973", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ERICA GABRIEL CARVALHO" AS nome_completo_faccionado, "VITA IZABEL GABRIEL" AS nome_mae_fac, TO_TIMESTAMP("24/02/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ERICK DE OLIVEIRA GONCALVES" AS nome_completo_faccionado, "NEUSA MARIA OLIMPIA" AS nome_mae_fac, TO_TIMESTAMP("10/08/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ERICK LUIZ JACOMETTI" AS nome_completo_faccionado, "JOANA D'ARC GONCALVES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("27/02/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ERIK CLAUBER DE SOUZA PADILHA" AS nome_completo_faccionado, "SUELI APARECIDA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("14/06/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ERLIVAN DA SILVA SOUZA" AS nome_completo_faccionado, "ALZENIR PEREIRA DA SILVA SOUZA" AS nome_mae_fac, TO_TIMESTAMP("29/01/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ESPEDITO ALVES DE PAULA NETO" AS nome_completo_faccionado, "SILVANA BRUNATA ALVES DE PAULA" AS nome_mae_fac, TO_TIMESTAMP("08/10/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EURIPEDES BARSANULFO DA SILVA JUNIOR" AS nome_completo_faccionado, "LEILA GONCALVES DE SOUSA" AS nome_mae_fac, TO_TIMESTAMP("26/07/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EVANDRO LUIS DOS SANTOS" AS nome_completo_faccionado, "ROSANI DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("13/03/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EVANDRO ROSA DE AMORIM" AS nome_completo_faccionado, "MARIA DE FATIMA AMORIM" AS nome_mae_fac, TO_TIMESTAMP("30/08/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EVANILSON MARTINS PONTES" AS nome_completo_faccionado, "ELAIRDES MARTINS PONTES" AS nome_mae_fac, TO_TIMESTAMP("21/03/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EVANIO MANOEL DE OLIVEIRA" AS nome_completo_faccionado, "PENHA ELVIRA OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("15/01/1973", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EVERSON AUGUSTO BONTEMPO ROSA" AS nome_completo_faccionado, "ATAISSE BARBARA BONTEMPO ROSA" AS nome_mae_fac, TO_TIMESTAMP("07/02/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EVERSON CORREA DOS SANTOS MARTINS" AS nome_completo_faccionado, "ROSANIA CORREA DOS SANTOS MARTINS" AS nome_mae_fac, TO_TIMESTAMP("12/05/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EVERSON JEAN DE SOUZA CASTRO" AS nome_completo_faccionado, "IZABEL DE SOUZA CASTRO" AS nome_mae_fac, TO_TIMESTAMP("29/11/1973", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EVERSON JOSE DE OLIVEIRA" AS nome_completo_faccionado, "TEREZINHA DE JESUS OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("19/03/1973", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EVERSON QUEIROZ DE FREITAS" AS nome_completo_faccionado, "ROSA APARECIDA QUEIROZ" AS nome_mae_fac, TO_TIMESTAMP("18/09/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EVERTON CORREA SANTOS" AS nome_completo_faccionado, "ROSANGELA CORREA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("28/08/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EVERTON DIAS DA CRUZ" AS nome_completo_faccionado, "ANA CLAUDIA DIAS DA CRUZ" AS nome_mae_fac, TO_TIMESTAMP("15/02/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EVERTON FELICIANO DE SOUZA" AS nome_completo_faccionado, "MARCIA DE FATIMA SOUZA" AS nome_mae_fac, TO_TIMESTAMP("09/06/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EVERTON PINTO SILVESTRE" AS nome_completo_faccionado, "EVANI SIMEAO PINTO" AS nome_mae_fac, TO_TIMESTAMP("08/06/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EVILASIO HENRIQUE DE OLIVEIRA" AS nome_completo_faccionado, "ELVIRA BARBOSA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("22/01/1970", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EZEQUIEL DOMINGUES" AS nome_completo_faccionado, "SIDREOMAR EUFRASIA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("09/01/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EZEQUIEL PEREIRA DA SILVA" AS nome_completo_faccionado, "APARECIDA DO CARMO CHIMENES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("03/11/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIANO AFONSO DE CASTRO" AS nome_completo_faccionado, "ROSANGELA DE FATIMA A DE CASTRO" AS nome_mae_fac, TO_TIMESTAMP("15/11/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIANO BARBOSA CHIARADIA" AS nome_completo_faccionado, "REGINA APARECIDA BARBOSA CHIARADIA" AS nome_mae_fac, TO_TIMESTAMP("29/10/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIANO BATISTA DE ALMEIDA" AS nome_completo_faccionado, "EUNICE MARIA BATISTA DE ALMEIDA" AS nome_mae_fac, TO_TIMESTAMP("17/01/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIANO DA SILVA SALES" AS nome_completo_faccionado, "MARIA VILACI DA SILVA SALES" AS nome_mae_fac, TO_TIMESTAMP("11/09/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIANO LUCIO PEREIRA" AS nome_completo_faccionado, "MARIA LUCIA PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("14/09/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIANO NORONHA" AS nome_completo_faccionado, "ZULMIRA ROSA NORONHA" AS nome_mae_fac, TO_TIMESTAMP("09/07/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIANO QUEIROZ FERREIRA" AS nome_completo_faccionado, "JOANA QUEIROZ FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("18/11/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIANO ROBERTO TEIXEIRA" AS nome_completo_faccionado, "ROSANGELA AP. DA SILVA TEIXEIRA" AS nome_mae_fac, TO_TIMESTAMP("09/01/1972", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIO ABREU LIMA" AS nome_completo_faccionado, "MARLI SILVA CAMPOS" AS nome_mae_fac, TO_TIMESTAMP("17/08/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIO ALESSANDRO CASTILHO" AS nome_completo_faccionado, "DIRCE DE LIMA CASTILHO" AS nome_mae_fac, TO_TIMESTAMP("03/09/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIO ANTONIO DE JESUS SILVA" AS nome_completo_faccionado, "MARIA DE LOURDES DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("16/06/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIO ANTONIO GALLEGO" AS nome_completo_faccionado, "MARIA LUIZA APARECIDA BROIO GALLEGO" AS nome_mae_fac, TO_TIMESTAMP("15/06/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIO APARECIDO INHAN" AS nome_completo_faccionado, "NEIDE APARECIDA DE JESUS INHAN" AS nome_mae_fac, TO_TIMESTAMP("12/10/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIO APARECIDO VIEIRA COSTA" AS nome_completo_faccionado, "MARIA VIEIRA COSTA" AS nome_mae_fac, TO_TIMESTAMP("12/10/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIO BATISTA PEREIRA" AS nome_completo_faccionado, "JOSEFA BATISTA CERQUEIRA" AS nome_mae_fac, TO_TIMESTAMP("01/09/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIO CESAR DE JESUS" AS nome_completo_faccionado, "HELENA MARIA DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("09/08/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIO CESAR PEREIRA" AS nome_completo_faccionado, "ROSA MARIA CARNEIRO PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("10/06/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIO DA CRUZ FERREIRA" AS nome_completo_faccionado, "MARIA LUCIA CRUZ FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("06/05/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIO JULIO DA SILVA" AS nome_completo_faccionado, "MARIA DE FATIMA FREITAS SILVA" AS nome_mae_fac, TO_TIMESTAMP("30/05/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIO MACIEL DE FREITAS" AS nome_completo_faccionado, "LOURDES MACIEL DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("13/10/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIO RICARDO DA SILVA" AS nome_completo_faccionado, "MARIA DE FATIMA SOUZA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("24/05/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIO RICARDO DA SILVEIRA VALE" AS nome_completo_faccionado, "MARIA DE LOURDES DA SILVEIRA VALE" AS nome_mae_fac, TO_TIMESTAMP("04/09/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIO SILVA" AS nome_completo_faccionado, "IRANI SILVA" AS nome_mae_fac, TO_TIMESTAMP("17/06/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABRICIO DE SOUSA PEREIRA" AS nome_completo_faccionado, "MARIA DO SOCORRO LOPES DE SOUSA" AS nome_mae_fac, TO_TIMESTAMP("16/12/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABRICIO MARQUES DE SOUZA" AS nome_completo_faccionado, "TANIA MARIA MARQUES" AS nome_mae_fac, TO_TIMESTAMP("28/11/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABRICIO PEREIRA DE LIMA" AS nome_completo_faccionado, "ANA MARIA PEREIRA DE LIMA" AS nome_mae_fac, TO_TIMESTAMP("08/02/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABRICIO SEBASTIAO DOS SANTOS" AS nome_completo_faccionado, "SILVIA CRISTINA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("16/07/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FAGNER SOUZA DE LIMA" AS nome_completo_faccionado, "MARIA JOSE SOUZA DE LIMA" AS nome_mae_fac, TO_TIMESTAMP("31/03/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FELIPE AUGUSTO SILVEIRA SANTOS" AS nome_completo_faccionado, "LENIR APARECIDA SILVEIRA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("02/10/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FELIPE DA SILVA ARRUDA" AS nome_completo_faccionado, "PATRICIA FERNANDES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("06/01/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FELIPE PEDROTTI" AS nome_completo_faccionado, "MARIA APARECIDA DA COSTA PEDORTTI" AS nome_mae_fac, TO_TIMESTAMP("23/06/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FELIPE RICHARD RESENDE DE FARIA" AS nome_completo_faccionado, "JOSELY RESENDE SILVA" AS nome_mae_fac, TO_TIMESTAMP("05/02/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FELIPE ROCHA MUNIZ" AS nome_completo_faccionado, "ELIZABETH ROCHA" AS nome_mae_fac, TO_TIMESTAMP("13/09/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FELIPE ROSA CAIXETA" AS nome_completo_faccionado, "MARLUCIA DE FATIMA ROSA CAIXETA" AS nome_mae_fac, TO_TIMESTAMP("25/07/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FERNANDA APARECIDA RIBEIRO LEMES" AS nome_completo_faccionado, "MARIA DAS DORES BATISTA LEMES" AS nome_mae_fac, TO_TIMESTAMP("23/05/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FERNANDA CRISTINA RODRIGUES DE FREITAS" AS nome_completo_faccionado, "SUELI DE FATIMA RODRIGUES DE PAIVA" AS nome_mae_fac, TO_TIMESTAMP("19/02/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FERNANDA DOS SANTOS CAMARGO" AS nome_completo_faccionado, "RITA DE CASSIA DOS SANTOS CAMARGO" AS nome_mae_fac, TO_TIMESTAMP("28/09/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FERNANDO BARBOSA DO NASCIMENTO" AS nome_completo_faccionado, "MARIA CELINA DO NASCIMENTO" AS nome_mae_fac, TO_TIMESTAMP("20/12/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FERNANDO CESAR SHIOZAKI" AS nome_completo_faccionado, "APARECIDA DIVINA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("15/06/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FERNANDO DA SILVA ROCHA" AS nome_completo_faccionado, "MARIA JOSE DA SILVA PAIXAO" AS nome_mae_fac, TO_TIMESTAMP("03/12/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FERNANDO DOS SANTOS" AS nome_completo_faccionado, "VALDETE MARIA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("29/10/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FERNANDO DOS SANTOS GABRIEL" AS nome_completo_faccionado, "ALMERITA DOS SANTOS GABRIEL" AS nome_mae_fac, TO_TIMESTAMP("22/09/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FERNANDO FREITAS SILVA" AS nome_completo_faccionado, "DIVINA APARECIDA CAMILO FREITAS SILVA" AS nome_mae_fac, TO_TIMESTAMP("16/01/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FERNANDO HENRIQUE NASCIMENTO DE ALENCAR" AS nome_completo_faccionado, "ROSELI DO NASCIMENTO" AS nome_mae_fac, TO_TIMESTAMP("16/04/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FERNANDO JOSE DA SILVA" AS nome_completo_faccionado, "MARIA APARECIDA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("29/01/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FERNANDO LIMA FERNANDES" AS nome_completo_faccionado, "NILZETE LIMA SILVA" AS nome_mae_fac, TO_TIMESTAMP("17/12/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FERNANDO LUIZ DOS SANTOS" AS nome_completo_faccionado, "" AS nome_mae_fac, TO_TIMESTAMP("25/07/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FERNANDO PEREIRA ANDRADE" AS nome_completo_faccionado, "ELIZABETH PEREIRA ANDRADE" AS nome_mae_fac, TO_TIMESTAMP("19/11/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FERNANDO RICARDO GIMENES" AS nome_completo_faccionado, "LAZARA AUGUSTA DA SILVA GIMENES" AS nome_mae_fac, TO_TIMESTAMP("11/04/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FILIPE MARTINS COSTA" AS nome_completo_faccionado, "ELIENE APARECIDA COSTA" AS nome_mae_fac, TO_TIMESTAMP("13/05/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FLAVIANE FLAUSINO DE OLIVEIRA" AS nome_completo_faccionado, "MARCIA DO CARMO FLAUSINO" AS nome_mae_fac, TO_TIMESTAMP("04/03/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FLAVIO ALEX DIONISIO" AS nome_completo_faccionado, "MARLENE BENEDITA DE OLIVEIRA DIONISIO" AS nome_mae_fac, TO_TIMESTAMP("29/12/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FLAVIO DE MELO DA SILVA" AS nome_completo_faccionado, "ADENICE VIEIRA DE MELO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("09/09/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FLAVIO HENRIQUE DOS SANTOS SILVA" AS nome_completo_faccionado, "MARILENE APARECIDA DOS SANTOS SILVA" AS nome_mae_fac, TO_TIMESTAMP("26/10/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FLAVIO RODRIGUES SILVA" AS nome_completo_faccionado, "VANIA CRISTINA RODRIGUES SILVA" AS nome_mae_fac, TO_TIMESTAMP("24/12/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FLAVIO SILVA LUIZ" AS nome_completo_faccionado, "SONIA MARIA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("05/03/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FRANCILEUDO PEREIRA DA SILVA" AS nome_completo_faccionado, "GENIRA DA SILVA PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("14/03/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FRANCIS BATISTA DE OLIVEIRA" AS nome_completo_faccionado, "MARIA IZABEL DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("02/09/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FRANCISCO DE SOUSA" AS nome_completo_faccionado, "MARIA NILZA DE SOUSA" AS nome_mae_fac, TO_TIMESTAMP("21/09/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FRANCISCO DOS SANTOS PESSOA" AS nome_completo_faccionado, "MARIA DOS SANTOS PESSOA" AS nome_mae_fac, TO_TIMESTAMP("12/09/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FRANCISCO FABIANO TOBIAS BERNARDES" AS nome_completo_faccionado, "MARIA DE FATIMA TOBIAS EUZEBIO" AS nome_mae_fac, TO_TIMESTAMP("07/06/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FRANCISCO JAIRTON TEIXEIRA MARTINS" AS nome_completo_faccionado, "MARIA JOSE ALVES TEIXEIRA MARTINS" AS nome_mae_fac, TO_TIMESTAMP("03/10/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FRANCISCO LEANDRO DA SILVA" AS nome_completo_faccionado, "GENI NEVES LUCAS SILVA" AS nome_mae_fac, TO_TIMESTAMP("10/06/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FRANCISCO MANOEL DE SOUZA MEIRELLES" AS nome_completo_faccionado, "GERALDA ANGELA DE SOUZA MEIRELLES" AS nome_mae_fac, TO_TIMESTAMP("23/04/1958", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FRANKLIN WILLIAN ALBINO" AS nome_completo_faccionado, "DENISE BERNARDES ALBINO" AS nome_mae_fac, TO_TIMESTAMP("26/06/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FRANSUEL ASSIS NOGUEIRA" AS nome_completo_faccionado, "APARECIDA ASSIS NOGUEIRA" AS nome_mae_fac, TO_TIMESTAMP("09/12/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FREDERICO MARQUES DE OLIVEIRA" AS nome_completo_faccionado, "DELMA MARQUES DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("29/10/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FREONES JUSCELIO PEREIRA DA SILVA" AS nome_completo_faccionado, "ELIANA PEREIRA DE CASTRO" AS nome_mae_fac, TO_TIMESTAMP("19/08/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GABRIEL BORGES DE MENEZES" AS nome_completo_faccionado, "JULIANA LUZIA BORGES" AS nome_mae_fac, TO_TIMESTAMP("20/06/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GABRIEL COELHO FLORIANO" AS nome_completo_faccionado, "MARIA REGINA COELHO FLORIANO" AS nome_mae_fac, TO_TIMESTAMP("17/08/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GABRIEL HENRIQUE COSTA APARECIDO" AS nome_completo_faccionado, "MARTA MARIA COSTA ALVES" AS nome_mae_fac, TO_TIMESTAMP("23/01/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GABRIEL HENRIQUE DA SILVA" AS nome_completo_faccionado, "ELISA MARA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("15/09/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GABRIEL JOSE JUSTINO DE MELO" AS nome_completo_faccionado, "ROSELMA DOS REIS DE MELO" AS nome_mae_fac, TO_TIMESTAMP("14/02/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GENILDO BARBOSA DA CONCEICAO" AS nome_completo_faccionado, "MARIA DOS REIS BARBOSA DA CONCEICAO" AS nome_mae_fac, TO_TIMESTAMP("04/08/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GENIVALDO GOMES" AS nome_completo_faccionado, "MARIA ANUNCIADA GOMES" AS nome_mae_fac, TO_TIMESTAMP("26/11/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GENIVALDO PIRES CHAVES" AS nome_completo_faccionado, "MARIA EDUARDO CHAVES" AS nome_mae_fac, TO_TIMESTAMP("13/07/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GENTIL DEMETRIO DA TRINDADE" AS nome_completo_faccionado, "SONIA MARIA TRINDADE" AS nome_mae_fac, TO_TIMESTAMP("12/09/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GEONARIO SANTOS MARTINHO" AS nome_completo_faccionado, "MARIA APARECIDA SANTOS MARTINHO" AS nome_mae_fac, TO_TIMESTAMP("17/02/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GEOVANE RAMOS FERMINO" AS nome_completo_faccionado, "DEBORA APARECIDA RAMOS FERMINO" AS nome_mae_fac, TO_TIMESTAMP("22/08/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GEOVANE TEIXEIRA GARCIA" AS nome_completo_faccionado, "IVANIR TEIXEIRA" AS nome_mae_fac, TO_TIMESTAMP("10/03/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GERALDO APARECIDO DOS SANTOS SILVA" AS nome_completo_faccionado, "MARIA DIAS DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("17/04/1971", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GERALDO CESAR PEREIRA FILHO" AS nome_completo_faccionado, "ELIZABETH ROCHA" AS nome_mae_fac, TO_TIMESTAMP("13/09/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GERALDO MAGELA DE BARROS" AS nome_completo_faccionado, "ELZA VASCONCELOS DE BARROS" AS nome_mae_fac, TO_TIMESTAMP("15/09/1949", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GERLANDI MARTINS DE SOUZA" AS nome_completo_faccionado, "CLEONICE AUGUSTA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("19/04/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GERVAN PAULO DOS SANTOS" AS nome_completo_faccionado, "ROSANGELA MARIA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("03/03/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GESSI DOMINGOS DE SOUSA" AS nome_completo_faccionado, "OLIMPIA RITA DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("31/10/1965", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GESSICA DE JESUS SOARES" AS nome_completo_faccionado, "CRISTIANA ALVES DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("16/05/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GETULIO RICARDO PEREIRA" AS nome_completo_faccionado, "IRENE APARECIDA RIOS PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("18/01/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GILBERTO APARECIDO DA SILVA" AS nome_completo_faccionado, "CASTURINA FERREIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("13/02/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GILBERTO DE LIMA CARDOSO" AS nome_completo_faccionado, "MARIA DA SAUDE CARDOSO" AS nome_mae_fac, TO_TIMESTAMP("19/11/1970", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GILDASIO PECANHA ALECRIM" AS nome_completo_faccionado, "DELFINA PECANHA ALECRIM" AS nome_mae_fac, TO_TIMESTAMP("03/03/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GILDESIO ALVES DOS REIS" AS nome_completo_faccionado, "DEUZELICE ALVES DOS REIS" AS nome_mae_fac, TO_TIMESTAMP("16/09/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GILMAR FERREIRA SANTOS" AS nome_completo_faccionado, "ROMILDA FERREIRA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("13/01/1973", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GILMAR LUIZ DA SILVA" AS nome_completo_faccionado, "TEREZINHA DE FATIMA DE JESUS SILVA" AS nome_mae_fac, TO_TIMESTAMP("01/11/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GILSON ALEXANDRE DIAS" AS nome_completo_faccionado, "IRACEMA DIAS CABRAL" AS nome_mae_fac, TO_TIMESTAMP("11/01/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GILSON DE ARAUJO" AS nome_completo_faccionado, "NADIR DE ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("03/02/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GIMENE DO SANTOS GALVAO" AS nome_completo_faccionado, "MARIA LUIZA DOS SANTOS GALVAO" AS nome_mae_fac, TO_TIMESTAMP("15/04/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GLADSON TIAGO PEREIRA NERY" AS nome_completo_faccionado, "REGINA DAS GRACAS PEREIRA NERY" AS nome_mae_fac, TO_TIMESTAMP("11/03/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GLAUBER RICHARD BALBINO" AS nome_completo_faccionado, "VIRGINIA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("15/06/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GLAYSON ALEXANDRE TEIXEIRA VASCONCELOS" AS nome_completo_faccionado, "CELIA MARGARIDA TEIXEIRA" AS nome_mae_fac, TO_TIMESTAMP("23/07/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GLEDSON APARECIDO DA ROCHA" AS nome_completo_faccionado, "CLEIDE MARIA DA ROCHA" AS nome_mae_fac, TO_TIMESTAMP("13/03/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GLEIME PEREIRA BENTO" AS nome_completo_faccionado, "MARIA DOS REIS PEREIRA LIMA" AS nome_mae_fac, TO_TIMESTAMP("01/01/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GLEISON REIS DE PAULA" AS nome_completo_faccionado, "IVANI REIS DE PAULA" AS nome_mae_fac, TO_TIMESTAMP("13/08/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GLEISON TOZI CALIXTO JUNIOR" AS nome_completo_faccionado, "ROSEMARY SEGISMUNDO" AS nome_mae_fac, TO_TIMESTAMP("17/11/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GRACIANO SILVA FERRARI" AS nome_completo_faccionado, "MARLENE DOS SANTOS SILVA" AS nome_mae_fac, TO_TIMESTAMP("28/08/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GRECO FELIPE TOBIAS SILVA" AS nome_completo_faccionado, "ONICEIA SILVA" AS nome_mae_fac, TO_TIMESTAMP("21/11/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GREGORIO PEREIRA DE ARRUDA" AS nome_completo_faccionado, "TEREZINHA PEREIRA ARRUDA" AS nome_mae_fac, TO_TIMESTAMP("17/01/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GREICE KELLY ODORICO" AS nome_completo_faccionado, "MARCIA ROSA DOS REIS" AS nome_mae_fac, TO_TIMESTAMP("08/03/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUALTER FERNANDES LEITE" AS nome_completo_faccionado, "SOLANGE MARIA DA SILVA FERNANDES" AS nome_mae_fac, TO_TIMESTAMP("30/09/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUILHERME APARECIDO BARBOSA" AS nome_completo_faccionado, "CLEUSA APARECIDA BARBOSA" AS nome_mae_fac, TO_TIMESTAMP("20/09/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUILHERME DORNELES DRUMMOND" AS nome_completo_faccionado, "LIVIA DORENELES DRUMMOND" AS nome_mae_fac, TO_TIMESTAMP("08/08/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUILHERME DOUGLAS DE OLIVEIRA" AS nome_completo_faccionado, "JOANA DARC DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("23/07/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUILHERME EDUARDO DA SILVA" AS nome_completo_faccionado, "IEDA LUCIA SILVA E SILVA" AS nome_mae_fac, TO_TIMESTAMP("08/06/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUILHERME FERNANDO DOS SANTOS" AS nome_completo_faccionado, "MARIA RITA DOS SANTOS SILVA" AS nome_mae_fac, TO_TIMESTAMP("15/03/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUILHERME FERREIRA DE AGUIAR" AS nome_completo_faccionado, "MARTA FERREIRA DE AGUIAR" AS nome_mae_fac, TO_TIMESTAMP("14/04/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUILHERME GONCALVES VIEIRA" AS nome_completo_faccionado, "GLEIDE RIBEIRO BORGES GONCALVES" AS nome_mae_fac, TO_TIMESTAMP("31/10/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUILHERME HENRIQUE ESPOSITO" AS nome_completo_faccionado, "ANA PAULA ESPOSITO" AS nome_mae_fac, TO_TIMESTAMP("04/08/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUILHERME MENDES DOS SANTOS" AS nome_completo_faccionado, "ANDREA BEATRIZ CARVALHO" AS nome_mae_fac, TO_TIMESTAMP("04/05/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUILHERMO ROBINSON CARDOSO GODOY" AS nome_completo_faccionado, "DALVA DE OLIVEIRA GODOY" AS nome_mae_fac, TO_TIMESTAMP("19/02/1972", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUILHERMY FERREIRA LEITE" AS nome_completo_faccionado, "ELISANGELA LEITE" AS nome_mae_fac, TO_TIMESTAMP("19/04/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUSTAVO ALVES BOSQUETTI" AS nome_completo_faccionado, "SIRLEI MARIA ALVES" AS nome_mae_fac, TO_TIMESTAMP("25/02/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUSTAVO FREITAS SILVA" AS nome_completo_faccionado, "FAINA MARIA DE FREITAS SILVA" AS nome_mae_fac, TO_TIMESTAMP("21/06/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUSTAVO HENRIQUE DE OLIVEIRA" AS nome_completo_faccionado, "EDMEA ALVES MOTA NOGUEIRA" AS nome_mae_fac, TO_TIMESTAMP("16/05/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUSTAVO HENRIQUE DE OLIVEIRA AMORIM" AS nome_completo_faccionado, "PATRICIA RODRIGUES DE OLIVEIRA AMORIM" AS nome_mae_fac, TO_TIMESTAMP("25/02/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUSTAVO HENRIQUE DE SOUSA" AS nome_completo_faccionado, "ELENICE DA SILVA SOUSA" AS nome_mae_fac, TO_TIMESTAMP("16/03/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUSTAVO HENRIQUE FERNANDES MOREIRA" AS nome_completo_faccionado, "ADELIA LUIZA MOREIRA" AS nome_mae_fac, TO_TIMESTAMP("19/02/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUSTAVO MESQUITA MORAIS DA SILVA" AS nome_completo_faccionado, "ADRIANA IARA SERAFIM DE MESQUITA" AS nome_mae_fac, TO_TIMESTAMP("21/04/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUSTAVO PEREIRA DA SILVA" AS nome_completo_faccionado, "MARIA CELIA PEREIRA SILVA" AS nome_mae_fac, TO_TIMESTAMP("20/10/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUSTAVO PEREIRA SILVA" AS nome_completo_faccionado, "VILMA HELENA SILVA" AS nome_mae_fac, TO_TIMESTAMP("02/07/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUSTAVO SILVA CERTO" AS nome_completo_faccionado, "ROSELENE DA SILVA CERTO" AS nome_mae_fac, TO_TIMESTAMP("28/11/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HALYSSON DOMINGOS OLIVEIRA" AS nome_completo_faccionado, "HILDA APARECIDA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("24/09/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HEITOR GONÇALVES DOS SANTOS" AS nome_completo_faccionado, "MARILDA GONCALVES SILVA" AS nome_mae_fac, TO_TIMESTAMP("14/04/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HELBERT HENRIQUE DOS SANTOS" AS nome_completo_faccionado, "FLAUMIRA EVANGELISTA HENRIQUE" AS nome_mae_fac, TO_TIMESTAMP("06/11/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HELEN FERNANDES ANTENOR" AS nome_completo_faccionado, "ALBINA FERNANDES VIEIRA" AS nome_mae_fac, TO_TIMESTAMP("13/07/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HELI ALVES LIMA DO NASCIMENTO" AS nome_completo_faccionado, "JOAQUINA ALVES LIMA DO NASCIMENTO" AS nome_mae_fac, TO_TIMESTAMP("13/02/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HELIO BERNARDE CAIXETA NETO" AS nome_completo_faccionado, "MARIA APARECIDA CAIXETA" AS nome_mae_fac, TO_TIMESTAMP("06/11/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HELIO MARTINS OLIVEIRA SILVA" AS nome_completo_faccionado, "VANIA LUCIA MAIA" AS nome_mae_fac, TO_TIMESTAMP("18/01/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HELTON ARAUJO ANDRADE" AS nome_completo_faccionado, "ODILIA PINTO DE ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("22/12/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HELTON JOHN RODRIGUES FERREIRA" AS nome_completo_faccionado, "OLENTINA RODRIGUES FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("06/07/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HELTON ROGERIO LEMOS DE OLIVEIRA" AS nome_completo_faccionado, "MARLENE LEMOS DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("21/12/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HELVECIO DIAS GUIMARAES" AS nome_completo_faccionado, "NELI DIAS LEITE" AS nome_mae_fac, TO_TIMESTAMP("22/07/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HENDERSON HERINGER DE OLIVEIRA" AS nome_completo_faccionado, "PATRICIA OLIVEIRA ADRIANO" AS nome_mae_fac, TO_TIMESTAMP("01/07/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HENRIQUE BALTAZAR ALMEIDA ALVARENGA" AS nome_completo_faccionado, "MARIA DE FATIMA ALMEIDA MARTINS" AS nome_mae_fac, TO_TIMESTAMP("11/02/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HENRIQUE LISBOA DOS SANTOS" AS nome_completo_faccionado, "GERCINA LISBOA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("30/01/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HENRIQUE MARTINS DOMINGUES" AS nome_completo_faccionado, "MARIA APARECIDA BRAZ MARTINS DOMINGUES" AS nome_mae_fac, TO_TIMESTAMP("02/06/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HENRIQUE SOUZA SILVA" AS nome_completo_faccionado, "MARIA DE LOURDES SOUZA SILVA" AS nome_mae_fac, TO_TIMESTAMP("23/10/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HERCULES NUNES" AS nome_completo_faccionado, "LUCELIA NUNES" AS nome_mae_fac, TO_TIMESTAMP("19/07/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HERIVELTO DE MORAIS DIAS" AS nome_completo_faccionado, "JOANA D'ARC DE MORAIS DIAS" AS nome_mae_fac, TO_TIMESTAMP("13/03/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HERRON PATRICK SILVA" AS nome_completo_faccionado, "ADRIANA CRISTINA RODRIGUES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("14/05/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HEVERTON RODRIGUES MENDES BATISTA" AS nome_completo_faccionado, "MARIA SELMA RODRIGUES DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("02/02/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HIAGGO SILVA DOS SANTOS" AS nome_completo_faccionado, "ELOISA RIBEIRO SILVA" AS nome_mae_fac, TO_TIMESTAMP("26/05/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HILO DE CARVALHO" AS nome_completo_faccionado, "SOLANGE CUNHA DE CARVALHO" AS nome_mae_fac, TO_TIMESTAMP("19/05/1960", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HUDSON HENRIQUE DOS SANTOS" AS nome_completo_faccionado, "ROSELI ALTINA ROSA" AS nome_mae_fac, TO_TIMESTAMP("17/03/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HUGO LEONARDO DE OLIVEIRA VIDAL" AS nome_completo_faccionado, "MARIA DAS GRACAS DE OLIVEIRA VIDAL" AS nome_mae_fac, TO_TIMESTAMP("14/03/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HUGO SALVINO ALMEIDA DA SILVA" AS nome_completo_faccionado, "LAURIETE ALVES DE ALMEIDA" AS nome_mae_fac, TO_TIMESTAMP("02/01/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HUMBERTO DOS REIS RAMOS" AS nome_completo_faccionado, "HELENA SAMPOIO DOS REIS" AS nome_mae_fac, TO_TIMESTAMP("07/06/1958", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "IAGO FELIPE QUIRINO DA SILVA" AS nome_completo_faccionado, "OLGA MARIA SILVA QUIRINO" AS nome_mae_fac, TO_TIMESTAMP("21/10/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "IANDER DE JESUS CARMO JANUÁRIO" AS nome_completo_faccionado, "CRISTINA CARMO OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("02/07/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "IDENEI ROSA DA SILVA" AS nome_completo_faccionado, "TERESA SILAS DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("16/12/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "IGOR AUGUSTO NEVES DE ANDRADE" AS nome_completo_faccionado, "SIRLANE MARIA DAS NEVES RAIMUNDO ANDRADE" AS nome_mae_fac, TO_TIMESTAMP("23/01/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "IGOR DE SOUZA CALIXTO AVILA" AS nome_completo_faccionado, "LUCIMAR DE SOUZA AVILA" AS nome_mae_fac, TO_TIMESTAMP("02/08/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "IGOR FELIPE DA SILVA" AS nome_completo_faccionado, "ANGELICA PAULINO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("22/10/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "IGOR JUNIO NUNES DA SILVA" AS nome_completo_faccionado, "ISABEL CRISTINA NUNES" AS nome_mae_fac, TO_TIMESTAMP("06/02/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "IGOR ROBERTO VIEIRA DE ANDRADE" AS nome_completo_faccionado, "SUELI APARECIDA PEREIRA SILVA ANDRADE" AS nome_mae_fac, TO_TIMESTAMP("21/07/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "IGOR RUAM DE CASTRO" AS nome_completo_faccionado, "LILIANE MARIA DE OLIVEIRA CASTRO" AS nome_mae_fac, TO_TIMESTAMP("25/10/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ILDEU GOMES MOREIRA" AS nome_completo_faccionado, "VITALINA GOMES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("14/06/1948", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ILSON PEREIRA DE ALVARENGA" AS nome_completo_faccionado, "HILDA PEREIRA DE ALVARENGA" AS nome_mae_fac, TO_TIMESTAMP("07/05/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "IRAM DOS REIS JUNIOR" AS nome_completo_faccionado, "APARECIDA DE FATIMA REIS" AS nome_mae_fac, TO_TIMESTAMP("23/01/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ISAAC ALEIXO BATISTA FILHO" AS nome_completo_faccionado, "MARIA APARECIDA BATISTA" AS nome_mae_fac, TO_TIMESTAMP("29/08/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ISAAC BIAGI DOS SANTOS" AS nome_completo_faccionado, "MARIA HELENA PIMENTA" AS nome_mae_fac, TO_TIMESTAMP("29/09/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ISAAC DO NASCIMENTO SILVA" AS nome_completo_faccionado, "ADRIANA APARECIDA DO NASCIMENTO" AS nome_mae_fac, TO_TIMESTAMP("20/08/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ISAAC EMANUEL DA SILVA" AS nome_completo_faccionado, "MARIA MARTA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("17/11/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ISAQUEU MIGUEL DE OLIVEIRA" AS nome_completo_faccionado, "TEREZA CRISTINA PIEDADE LIMA" AS nome_mae_fac, TO_TIMESTAMP("10/11/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ISRAEL SOUZA LIMA" AS nome_completo_faccionado, "MARIA JOANA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("15/07/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ITALO DOS SANTOS VIEIRA" AS nome_completo_faccionado, "ELISABETH APARECIDA VIEIRA" AS nome_mae_fac, TO_TIMESTAMP("21/10/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "IVANE DE ASSIS" AS nome_completo_faccionado, "ISAURA ROSA DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("12/08/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "IVANILDO OLIVEIRA ROCHA" AS nome_completo_faccionado, "VALDELICIA SOUSA OLIVEIRA ROCHA" AS nome_mae_fac, TO_TIMESTAMP("15/06/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JACKSON DA SILVA NOGUEIRA" AS nome_completo_faccionado, "ROSELIA DA SILVA CABRAL" AS nome_mae_fac, TO_TIMESTAMP("29/05/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JACKSON LIMA DE FREITAS" AS nome_completo_faccionado, "ANTONIETA OLIVEIRA LIMA" AS nome_mae_fac, TO_TIMESTAMP("09/03/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JACKSON ROBERTO SANTOS GONCALVES" AS nome_completo_faccionado, "MARIA NOELIA SANTOS GONCALVES" AS nome_mae_fac, TO_TIMESTAMP("24/05/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JACQUELINE APARECIDA SEVERINO" AS nome_completo_faccionado, "MARIA DE FATIMA BRITO COSTA" AS nome_mae_fac, TO_TIMESTAMP("04/04/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JADEILSON DA SILVA DA COSTA" AS nome_completo_faccionado, "MARIA DA CONCEICAO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("22/05/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JAIRO FERREIRA DE CARVALHO" AS nome_completo_faccionado, "JORGINA APARECIDA FERREIRA DE CARVALHO" AS nome_mae_fac, TO_TIMESTAMP("01/09/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JAIRO LUIZ FELIX CAVALCANTE" AS nome_completo_faccionado, "LINDACI ALVES FELIX" AS nome_mae_fac, TO_TIMESTAMP("04/08/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JAIRO MARIANNO DA NATIVIDADE" AS nome_completo_faccionado, "JUCINEIA APARECIDA MARIANNO" AS nome_mae_fac, TO_TIMESTAMP("14/02/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JAIRO NOGUEIRA DE ARAUJO" AS nome_completo_faccionado, "TERESA FRANCISCA NOGUEIRA" AS nome_mae_fac, TO_TIMESTAMP("01/12/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JAMACLEY DE SOUZA SANTOS" AS nome_completo_faccionado, "ERIENE DE SOUZA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("15/10/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JANDER ADRIANO GULARTE" AS nome_completo_faccionado, "IRENE XIMENES DE ANDRADE GULARTE" AS nome_mae_fac, TO_TIMESTAMP("18/05/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JARDEL MARINHO DE LIMA" AS nome_completo_faccionado, "FRANCISCA MARINHO DE LIMA" AS nome_mae_fac, TO_TIMESTAMP("30/07/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JASON CARLOS SILVA LOSADA" AS nome_completo_faccionado, "TEREZINHA DE JESUS SILVA" AS nome_mae_fac, TO_TIMESTAMP("22/02/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEAN CARLO ALMEIDA DA CRUZ" AS nome_completo_faccionado, "MARLENE ROSA DE ALMEIDA CRUZ" AS nome_mae_fac, TO_TIMESTAMP("24/07/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEAN CARLOS DA SILVA MOREIRA" AS nome_completo_faccionado, "MARIA RONEIDE DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("09/01/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEAN CARLOS DE ANDRADE" AS nome_completo_faccionado, "LUCEMEIRE DE ANDRADE" AS nome_mae_fac, TO_TIMESTAMP("01/02/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEAN CARLOS MAGALHAES" AS nome_completo_faccionado, "DALVA MARIA MAGALHAES" AS nome_mae_fac, TO_TIMESTAMP("25/03/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEAN GALVAO SILVA" AS nome_completo_faccionado, "MARIA CONCEICAO OLIVEIRA SILVA" AS nome_mae_fac, TO_TIMESTAMP("26/04/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEAN KLEBER SANTANA" AS nome_completo_faccionado, "MARAISA APARECIDA FERNANDES" AS nome_mae_fac, TO_TIMESTAMP("06/02/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEFERSOM SILVA GOMES" AS nome_completo_faccionado, "LUZIETE SILVA GOMES" AS nome_mae_fac, TO_TIMESTAMP("23/10/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEFERSON ALVES RODRIGUES" AS nome_completo_faccionado, "IRACI DA SILVA ALVES RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("09/08/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEFERSON DA CUNHA SANTOS" AS nome_completo_faccionado, "MARINEI AUREA DA CUNHA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("15/03/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEFERSON DA SILVA" AS nome_completo_faccionado, "MARIA DE FATIMA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("17/01/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEFERSON FRANCA DE SOUZA" AS nome_completo_faccionado, "SUELY FRANCA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("02/11/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEFERSON FRANCISCO DE PAIVA" AS nome_completo_faccionado, "NILZA APARECIDA DE PAIVA" AS nome_mae_fac, TO_TIMESTAMP("10/06/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEFERSON GERALDO DE OLIVEIRA" AS nome_completo_faccionado, "MARIA HELENA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("21/10/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEFERSON JESUS CASTRO DE MORAES" AS nome_completo_faccionado, "MARIA DE FATIMA CASTRO MORAES" AS nome_mae_fac, TO_TIMESTAMP("18/05/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEFERSON RODRIGUES" AS nome_completo_faccionado, "CELIA MARIA DE JESUS SILVA" AS nome_mae_fac, TO_TIMESTAMP("23/11/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEFFERSON AMIN LOPES CORDEIRO" AS nome_completo_faccionado, "HELENIMAR LOPES DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("23/12/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEFFERSON ANTONIO OLIVEIRA ALEXANDRINO" AS nome_completo_faccionado, "MARIA APARECIDA OLIVEIRA ALEXANDRINO" AS nome_mae_fac, TO_TIMESTAMP("08/07/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEFFERSON CORREIA BORBA" AS nome_completo_faccionado, "MARIA JOSE CORREIA" AS nome_mae_fac, TO_TIMESTAMP("12/08/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEFFERSON DAMIAO DA ROCHA" AS nome_completo_faccionado, "MARIA ISABEL SANTOS DA ROCHA" AS nome_mae_fac, TO_TIMESTAMP("22/11/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEFFERSON GRANELLA DE JESUS" AS nome_completo_faccionado, "MARIA JOSE GRANELLA" AS nome_mae_fac, TO_TIMESTAMP("16/10/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEFFERSON MOREIRA DA SILVA" AS nome_completo_faccionado, "SILVANA APARECIDA MOREIRA" AS nome_mae_fac, TO_TIMESTAMP("22/05/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEFFERSON OLIVEIRA MORAIS" AS nome_completo_faccionado, "ROSELI OLIVEIRA MORAIS" AS nome_mae_fac, TO_TIMESTAMP("16/10/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEFFERSON SILVA BALDUINO MENDONCA" AS nome_completo_faccionado, "JEANE SILVA" AS nome_mae_fac, TO_TIMESTAMP("01/11/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEFFERSON SILVESTRE DE JESUS" AS nome_completo_faccionado, "SUELI LUIZA SILVESTRE DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("23/04/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEFFERSON SIQUEIRA DE SOUSA" AS nome_completo_faccionado, "SUELI MARTINS SIQUEIRA DE SOUSA" AS nome_mae_fac, TO_TIMESTAMP("24/09/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JENILSON BENICIO DE OLIVEIRA" AS nome_completo_faccionado, "MARIA APARECIDA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("17/11/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JENNIFER NATHALIA BERNARDES" AS nome_completo_faccionado, "ROSELI BERNARDES" AS nome_mae_fac, TO_TIMESTAMP("10/08/1999", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEOVANI EURIPEDES SOUZA DOS REIS" AS nome_completo_faccionado, "NELSIRIA DE SOUZA ALVES" AS nome_mae_fac, TO_TIMESTAMP("18/08/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JESSE MOREIRA SARAIVA" AS nome_completo_faccionado, "VILMARA LUZIA MOREIRA" AS nome_mae_fac, TO_TIMESTAMP("06/04/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JHONATA ROGERIO PEREIRA SOBRAL" AS nome_completo_faccionado, "ROSIMEIRE PEREIRA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("30/04/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JHONES RIKIERES SILVA" AS nome_completo_faccionado, "ROSANGELA MARIA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("06/07/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOABE DE OLIVEIRA SOARES" AS nome_completo_faccionado, "ELIANE MARIA DE OLIVEIRA SOARES" AS nome_mae_fac, TO_TIMESTAMP("19/09/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOABE SANTOS CARDOSO" AS nome_completo_faccionado, "MARIA IRANIR NASCIMENTO SANTOS CARDOSO" AS nome_mae_fac, TO_TIMESTAMP("02/01/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOAO AUGUSTO ARAUJO DE ALMEIDA" AS nome_completo_faccionado, "MARIA ALICE BARBOSA DE ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("14/04/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOAO BATISTA DE OLIVEIRA ALVES" AS nome_completo_faccionado, "MARLENE MARIA TEIXEIRA ALVES" AS nome_mae_fac, TO_TIMESTAMP("22/06/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOAO BATISTA MIRANDA" AS nome_completo_faccionado, "IZABEL VIEIRA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("31/03/1967", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOAO CARLOS DA SILVA MAIA" AS nome_completo_faccionado, "GONCALA DE LIMA MAIA" AS nome_mae_fac, TO_TIMESTAMP("09/12/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOAO FERREIRA DA ROCHA" AS nome_completo_faccionado, "LUZIA ONOFRE FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("09/10/1967", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOAO GABRIEL DE SOUZA" AS nome_completo_faccionado, "GERALDA LEITE DE MATOS" AS nome_mae_fac, TO_TIMESTAMP("06/08/1961", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOAO IZAIAS DE CARVALHO NETO" AS nome_completo_faccionado, "ROSINEIDE IZAIAS DE CARVALHO" AS nome_mae_fac, TO_TIMESTAMP("08/03/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOAO MARCOS CARVALHO OLIVEIRA" AS nome_completo_faccionado, "GISLAINE APARECIDA DE CARVALHO OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("12/02/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOAO MARCOS LIMA SANTOS" AS nome_completo_faccionado, "MARISTELA LIMA DE BARROS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("24/06/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOAO PAULO BASTOS" AS nome_completo_faccionado, "SILVIA MARIA BASTOS" AS nome_mae_fac, TO_TIMESTAMP("05/06/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOAO PAULO MENDES TRAVASSOS" AS nome_completo_faccionado, "ANGELA CRISTINA MENDES TRAVASSOS" AS nome_mae_fac, TO_TIMESTAMP("04/04/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOAO PAULO TAVARES DOS SANTOS" AS nome_completo_faccionado, "MARIA ROSA TAVARES" AS nome_mae_fac, TO_TIMESTAMP("12/11/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOAO RITA DE LIMA NETO" AS nome_completo_faccionado, "LOURDES RODRIGUES DE LIMA" AS nome_mae_fac, TO_TIMESTAMP("20/04/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOAO VICTOR NOGUEIRA DE OLIVEIRA" AS nome_completo_faccionado, "MARIA JOCENIS NOGUEIRA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("30/03/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOAQUIM DANIEL DA CONCEICAO MAGALHAES" AS nome_completo_faccionado, "MARIA DE FATIMA CONCEICAO MAGALHAES" AS nome_mae_fac, TO_TIMESTAMP("02/11/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOCELIO PEREIRA DOS SANTOS" AS nome_completo_faccionado, "RAIMUNDA SARAIVA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("23/06/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOCIMAR GOMES DE JESUS" AS nome_completo_faccionado, "TEREZINHA GOMES MARTINS" AS nome_mae_fac, TO_TIMESTAMP("05/04/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOCIMAR PEREIRA DOS SANTOS" AS nome_completo_faccionado, "MARIA GORETE DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("04/07/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOEL APARECIDO MARQUES" AS nome_completo_faccionado, "ELIANA APARECIDA MARQUES" AS nome_mae_fac, TO_TIMESTAMP("10/07/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOEL DIAS VIANA" AS nome_completo_faccionado, "MARIA NONATA DIAS VIANA" AS nome_mae_fac, TO_TIMESTAMP("18/10/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOEL DOS SANTOS REZENDE" AS nome_completo_faccionado, "HELENA VITORIA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("28/07/1963", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOEL PEREIRA" AS nome_completo_faccionado, "ODETE FRANCO DE GODOI PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("28/07/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOLBER PINHEIRO DA SILVA" AS nome_completo_faccionado, "MERCIA RIGLEIA PINHEIRO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("16/05/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOHN BUENO MATIAS DE SOUZA" AS nome_completo_faccionado, "MARIA LUCIA BUENO MATIAS" AS nome_mae_fac, TO_TIMESTAMP("18/10/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOHN RAMOS DA SILVA" AS nome_completo_faccionado, "MARIA DAS DORES RAMOS DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("31/05/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOHNATTAN FERNANDES ROCHA" AS nome_completo_faccionado, "SIRLENE DE PAULA FERNANDES" AS nome_mae_fac, TO_TIMESTAMP("26/08/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOHNNE MACEDO DE MELO" AS nome_completo_faccionado, "ROSELI MACEDO DE MELO" AS nome_mae_fac, TO_TIMESTAMP("16/05/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOHNNY DE FREITAS FARIAS" AS nome_completo_faccionado, "NEILA VALERIA DE FREITAS" AS nome_mae_fac, TO_TIMESTAMP("08/12/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JONATAN ANTONIO BARBOSA" AS nome_completo_faccionado, "ADELIA ADRIANA MIRANDA BARBOSA" AS nome_mae_fac, TO_TIMESTAMP("22/05/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JONATAS FERREIRA CARNEIRO" AS nome_completo_faccionado, "ROSALINA DE JESUS FERREIRA FILHA" AS nome_mae_fac, TO_TIMESTAMP("30/04/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JONATHAN ALVES DE LIMA" AS nome_completo_faccionado, "CLEIDIMAR ALVES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("22/03/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JONATHAN APARECIDO SILVA LIMA" AS nome_completo_faccionado, "ROSANGELA MARIA SILVA" AS nome_mae_fac, TO_TIMESTAMP("01/07/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JONATHAN EDUARDO COSTA" AS nome_completo_faccionado, "SIMONE PEREIRA CANDIDO" AS nome_mae_fac, TO_TIMESTAMP("10/04/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JONATHAN ELIAS" AS nome_completo_faccionado, "MARIA APARECIDA ELIAS" AS nome_mae_fac, TO_TIMESTAMP("06/01/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JONIEL SALVADOR" AS nome_completo_faccionado, "IZABEL MARIA SALVADOR" AS nome_mae_fac, TO_TIMESTAMP("15/01/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JORGE LUIZ DA SILVA" AS nome_completo_faccionado, "MARIA DE LOURDES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("29/11/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JORGE LUIZ DE ALMEIDA PINTO DAHER" AS nome_completo_faccionado, "LEONINA DE ALMEIDA DAHER" AS nome_mae_fac, TO_TIMESTAMP("19/12/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE AFONSO DA SILVA" AS nome_completo_faccionado, "TEREZINHA RODRIGUES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("21/09/1968", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE AGNALDO DE SOUZA" AS nome_completo_faccionado, "CARMELITA PAULA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("03/02/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE ALBERTO HIDELBRANDO GONZALES" AS nome_completo_faccionado, "MARIA DOLORES HIDELBRANDO" AS nome_mae_fac, TO_TIMESTAMP("09/06/1964", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE ANTONIO DA SILVA JUNIOR" AS nome_completo_faccionado, "MARLUCE SILVA E SILVA" AS nome_mae_fac, TO_TIMESTAMP("14/04/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE ANTONIO DA SILVA MORENO" AS nome_completo_faccionado, "OSCALINA DA SILVA MORENO" AS nome_mae_fac, TO_TIMESTAMP("15/10/1956", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE ANTONIO SILVA" AS nome_completo_faccionado, "ROSA MARIA ALVES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("07/11/1969", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE CARLOS FRANCISCO DE FREITAS" AS nome_completo_faccionado, "JANETE APARECIDA FRANCISCO" AS nome_mae_fac, TO_TIMESTAMP("19/03/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE CESAR PIRES DE LIMA" AS nome_completo_faccionado, "MARIA DE LOURDES COTELA LIMA" AS nome_mae_fac, TO_TIMESTAMP("01/11/1971", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE CISLANDIO RODRIGUES PEREIRA" AS nome_completo_faccionado, "IZABEL PEREIRA RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("19/01/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE DE FREITAS DA ROCHA" AS nome_completo_faccionado, "INES DE FREITAS" AS nome_mae_fac, TO_TIMESTAMP("01/01/1970", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE DE JESUS OLIVEIRA" AS nome_completo_faccionado, "OLIVIA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("29/07/1950", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE DJALMA FERREIRA MENDES" AS nome_completo_faccionado, "ELIENE FERREIRA MENDES" AS nome_mae_fac, TO_TIMESTAMP("01/02/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE DO AMARAL DE JESUS" AS nome_completo_faccionado, "JULIA DO AMARAL" AS nome_mae_fac, TO_TIMESTAMP("01/07/1972", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE DONIZETE CANDIDO" AS nome_completo_faccionado, "MARIA PRADO" AS nome_mae_fac, TO_TIMESTAMP("24/03/1956", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE EDUARDO DE OLIVEIRA" AS nome_completo_faccionado, "ANTONIA APARECIDA FERREIRA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("29/12/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE FERNANDO RAMOS" AS nome_completo_faccionado, "APARECIDA DAS DORES PEREIRA RAMOS" AS nome_mae_fac, TO_TIMESTAMP("04/05/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE GERALDO SOARES SANTOS JUNIOR" AS nome_completo_faccionado, "VERA LUCIA DE SOUZA SOARES" AS nome_mae_fac, TO_TIMESTAMP("03/03/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE HENRIQUE CAETANO DE ANDRADE" AS nome_completo_faccionado, "ANTONIA PIRES DE ANDRADE" AS nome_mae_fac, TO_TIMESTAMP("10/10/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE HENRIQUE CASSIANO TOMAZ" AS nome_completo_faccionado, "CRISTIANE CASSIANO" AS nome_mae_fac, TO_TIMESTAMP("10/06/1999", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE HORACIO" AS nome_completo_faccionado, "IZAURA LUIZA HORACIO" AS nome_mae_fac, TO_TIMESTAMP("03/10/1962", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE JORGE MARCIANO" AS nome_completo_faccionado, "MARIA CONCEBIDA FERNANDES MARCIANO" AS nome_mae_fac, TO_TIMESTAMP("24/06/1968", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE JULIO PEREIRA PAIXAO" AS nome_completo_faccionado, "ZULMA PEREIRA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("09/07/1972", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE LUIZ DE MELO" AS nome_completo_faccionado, "ELZA VITORIA" AS nome_mae_fac, TO_TIMESTAMP("23/09/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE MARIA CAETANO DE ANDRADE" AS nome_completo_faccionado, "SALVINA MOREIRA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("28/08/1949", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE MATEUS DA SILVA FRANCISCO" AS nome_completo_faccionado, "MARCIA APARECIDA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("17/10/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE MAURILIO DE JESUS" AS nome_completo_faccionado, "CECILIA GERMANDINA DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("30/09/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE OMAR DA SILVA PEREIRA" AS nome_completo_faccionado, "ANA JESUS PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("09/09/1952", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE ORLANDO SILVA" AS nome_completo_faccionado, "ANA FIRMINA" AS nome_mae_fac, TO_TIMESTAMP("29/11/1953", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE RAIMUNDO LOPES" AS nome_completo_faccionado, "MARIA DE LURDES LOPES" AS nome_mae_fac, TO_TIMESTAMP("08/06/1972", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE RENATO DA SILVA ARAUJO" AS nome_completo_faccionado, "MARIA DOS REIS DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("31/07/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE ROBERTO MOREIRA" AS nome_completo_faccionado, "MARIA MOREIRA MEIRELES" AS nome_mae_fac, TO_TIMESTAMP("17/03/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE RONALDO MENDES DA SILVA" AS nome_completo_faccionado, "MARIA JOSE MENDES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("05/06/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE SEBASTIAO LELIS" AS nome_completo_faccionado, "NIZETE CATARINA LELIS" AS nome_mae_fac, TO_TIMESTAMP("29/03/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE TEIXEIRA DOS SANTOS" AS nome_completo_faccionado, "MARIA DE JESUS FERREIRA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("23/01/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE VALTER DOS SANTOS" AS nome_completo_faccionado, "MARIA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("30/09/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE VALTER DOS SANTOS" AS nome_completo_faccionado, "MARIA JOSEFA PAULINA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("14/11/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSEMAR MARCELINO DOS SANTOS FARIA" AS nome_completo_faccionado, "NEUSA MARCELINO FARIA" AS nome_mae_fac, TO_TIMESTAMP("27/09/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSIEL DONIZETTI MARTINS" AS nome_completo_faccionado, "SONIA APARECIDA LOPES MARTINS" AS nome_mae_fac, TO_TIMESTAMP("14/08/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSIELTON ERICK SILVA SANTOS" AS nome_completo_faccionado, "ANDREIA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("24/01/2000", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSIMAR BUENO CAMARGO" AS nome_completo_faccionado, "APARECIDA BENEDITA SAMPAIO DE CAMARGO" AS nome_mae_fac, TO_TIMESTAMP("23/10/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSIMAR LOPES BORGES" AS nome_completo_faccionado, "LAURA REGINA CASSIANA LOPES" AS nome_mae_fac, TO_TIMESTAMP("18/11/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSIMAR OLIVEIRA" AS nome_completo_faccionado, "MARIA DA CONCEICAO APARECIDA OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("26/11/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOZANILTON ANGELO DA SILVA FILHO" AS nome_completo_faccionado, "FATIMA CRISTINA DE OLIVEIRA SILVA" AS nome_mae_fac, TO_TIMESTAMP("09/03/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JUAN CARLOS RODRIGUES LIMA" AS nome_completo_faccionado, "ANA MARIA RODRIGUES DE MORAES" AS nome_mae_fac, TO_TIMESTAMP("07/09/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JUCIMAR BELCHOR DE LIMA" AS nome_completo_faccionado, "MARIA HELENA BELCHOR PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("09/03/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JUCIMAR TOME DA SILVA" AS nome_completo_faccionado, "MARIA JOSE DA SILVA TOME" AS nome_mae_fac, TO_TIMESTAMP("02/06/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIAN VIEIRA DE OLIVEIRA" AS nome_completo_faccionado, "MARIA DAS GRACAS VIEIRA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("14/02/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIANO DOS REIS HERCULANO" AS nome_completo_faccionado, "MARIA APARECIDA DE SOUZA HERCULANO" AS nome_mae_fac, TO_TIMESTAMP("23/08/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIANO GOMES DOS REIS" AS nome_completo_faccionado, "ZELITA PEREIRA GOMES DOS REIS" AS nome_mae_fac, TO_TIMESTAMP("23/03/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIANO PEREIRA DA SILVA" AS nome_completo_faccionado, "MAGDA SILVANA PEREIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("03/12/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIANO RODRIGUES" AS nome_completo_faccionado, "MARIA NEUZA MORAES RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("03/04/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIMAR JOSE DO CARMO" AS nome_completo_faccionado, "MARIA DAS GRACAS SILVA" AS nome_mae_fac, TO_TIMESTAMP("05/05/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIO CESAR CANDIDO DE JESUS" AS nome_completo_faccionado, "SEYLA CANDIDA XAVIER ROCHA" AS nome_mae_fac, TO_TIMESTAMP("28/09/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIO CESAR DA SILVA" AS nome_completo_faccionado, "NEUZA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("24/06/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIO CESAR DA SILVA" AS nome_completo_faccionado, "MARIA LUIZA FERREIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("11/05/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIO CESAR DOS SANTOS" AS nome_completo_faccionado, "SEM REGISTRO" AS nome_mae_fac, TO_TIMESTAMP("", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIO CESAR DOS SANTOS MARTINS" AS nome_completo_faccionado, "MARIA DAS GRACAS DOS SANTOS MARTINS" AS nome_mae_fac, TO_TIMESTAMP("28/03/1972", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIO CESAR FAIAM" AS nome_completo_faccionado, "APARECIDA CONSUELO RODRIGUES DO NASCIMENTO" AS nome_mae_fac, TO_TIMESTAMP("20/02/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIO CESAR MARTOS RODRIGUES" AS nome_completo_faccionado, "MARA LUCIA MARTOS" AS nome_mae_fac, TO_TIMESTAMP("10/12/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIO CESAR MOREIRA DOS SANTOS" AS nome_completo_faccionado, "MARIA DE LOURDES MOREIRA" AS nome_mae_fac, TO_TIMESTAMP("02/01/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIO CESAR PEREIRA DO NASCIMENTO" AS nome_completo_faccionado, "MARLUCIA PEREIRA DO NASCIMENTO" AS nome_mae_fac, TO_TIMESTAMP("02/12/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIO CESAR RODRIGUES" AS nome_completo_faccionado, "MARIA DIVINA RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("30/06/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIO CEZAR SERAFIM DE CARVALHO" AS nome_completo_faccionado, "SUELY APARECIDA SERAFIM" AS nome_mae_fac, TO_TIMESTAMP("22/06/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIO DE OLIVEIRA" AS nome_completo_faccionado, "MERCEDES FERNANDES OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("03/04/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIO DE OLIVEIRA NERES" AS nome_completo_faccionado, "CELESTE DIAS DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("27/06/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIO TADEU DE MORAIS" AS nome_completo_faccionado, "LUZIA MARIA DE MORAIS" AS nome_mae_fac, TO_TIMESTAMP("19/07/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JUNIO MICHAEL DA SILVA" AS nome_completo_faccionado, "MARIA HELENA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("30/04/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JUNIO RODRIGUES VANUNCIO" AS nome_completo_faccionado, "ZILMAR RODRIGUES BARBOSA" AS nome_mae_fac, TO_TIMESTAMP("05/06/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JUVENAL ALVES DA SILVA" AS nome_completo_faccionado, "ELZA ALVES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("14/07/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "KAIANY HIRATA FARIAS" AS nome_completo_faccionado, "PAULA DE OLIVEIRA HIRATA" AS nome_mae_fac, TO_TIMESTAMP("27/02/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "KAIQUE MIKAEL BARBOSA KALIL" AS nome_completo_faccionado, "MARIA DO SOCORRO BARBOSA GLORIA" AS nome_mae_fac, TO_TIMESTAMP("18/09/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "KALIL GERALDO TADEU GARCIA SANTOS" AS nome_completo_faccionado, "MARIA DA PENHA GARCIA" AS nome_mae_fac, TO_TIMESTAMP("06/06/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "KAUAN ABRAO SANZANEZE" AS nome_completo_faccionado, "ELIDA CRISTINA PIMENTA ABRAO SANZANEZE" AS nome_mae_fac, TO_TIMESTAMP("18/07/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "KEILA MARCELINO DA SILVA" AS nome_completo_faccionado, "CREUSA APARECIDA DA SILVA " AS nome_mae_fac, TO_TIMESTAMP("09/07/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "KENEDY WASHINGTON NICOLAU BARRETO" AS nome_completo_faccionado, "LUCIMAR NICOLAU" AS nome_mae_fac, TO_TIMESTAMP("04/11/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "KENNEDY CORREA XAVIER SILVA" AS nome_completo_faccionado, "GLORIA CORREA XAVIER SILVA" AS nome_mae_fac, TO_TIMESTAMP("04/03/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "KENNEDY SOUZA PEREIRA" AS nome_completo_faccionado, "SUELI DE SOUZA AMANCIO" AS nome_mae_fac, TO_TIMESTAMP("01/05/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "KENOLT DO CARMO DE OLIVEIRA" AS nome_completo_faccionado, "KEIDE APARECIDA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("09/10/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "KESSIO STEFERSON SILVA" AS nome_completo_faccionado, "KENIA REGINA SILVA" AS nome_mae_fac, TO_TIMESTAMP("07/09/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "KEYSSON THALLIS ALVES SILVA" AS nome_completo_faccionado, "ADILZA ALVES" AS nome_mae_fac, TO_TIMESTAMP("29/04/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "KEZIA CRISTINA SILVA" AS nome_completo_faccionado, "SONIA BALDUINA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("05/12/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "KLAYKHSSON ALVES BARTHASSON" AS nome_completo_faccionado, "JULIETA BARTHASSON" AS nome_mae_fac, TO_TIMESTAMP("25/06/1973", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "KLEBER ANTONIO ALVES" AS nome_completo_faccionado, "MARIA HELENA ALVES" AS nome_mae_fac, TO_TIMESTAMP("15/10/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "KLEBERTON DEDE SANTOS SOUZA" AS nome_completo_faccionado, "ROSANGELA DAS DORES SANTOS" AS nome_mae_fac, TO_TIMESTAMP("16/10/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "KLEITON JOSE DA SILVA" AS nome_completo_faccionado, "CLAUDIA ANGELA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("17/12/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "KLISSMAN TORRES RAMOS" AS nome_completo_faccionado, "MARIA APARECIDA TORRES" AS nome_mae_fac, TO_TIMESTAMP("19/12/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LAION BORGES NASCIMENTO" AS nome_completo_faccionado, "CLAUDIMEIRE SOARES BORGES NASCIMENTO" AS nome_mae_fac, TO_TIMESTAMP("26/10/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LAION JHONI DA SILVA" AS nome_completo_faccionado, "MARIA PATRICIA OLIVEIRA SILVA" AS nome_mae_fac, TO_TIMESTAMP("12/10/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LANDER DE JESUS CARMO JANUARIO" AS nome_completo_faccionado, "MARCIA FAZOLI DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("18/11/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LARISSA REMBOWSKI DOS SANTOS" AS nome_completo_faccionado, "AUREA BEATRIZ REMBOWSKI" AS nome_mae_fac, TO_TIMESTAMP("28/12/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LAUDILEI SALDANHA MARINHO" AS nome_completo_faccionado, "SANDRA MARIA DA COSTA MARINHO" AS nome_mae_fac, TO_TIMESTAMP("08/08/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LAURY DE OLIVEIRA LELIS" AS nome_completo_faccionado, "SANDRA APARECIDA TEMME" AS nome_mae_fac, TO_TIMESTAMP("31/08/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LAZARO DE PAULA DOS SANTOS NETO" AS nome_completo_faccionado, "SELMA MARIA CHAGAS" AS nome_mae_fac, TO_TIMESTAMP("07/06/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LAZARO JUNIOR BORGES" AS nome_completo_faccionado, "MARIA CONCEICAO RODRIGUES BORGES" AS nome_mae_fac, TO_TIMESTAMP("26/02/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO APARECIDO DA SILVA" AS nome_completo_faccionado, "CLEONICE DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("24/07/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO BENEDITO BATISTA" AS nome_completo_faccionado, "CELESTE DE FATIMA P BATISTA" AS nome_mae_fac, TO_TIMESTAMP("16/11/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO CESAR DE SOUZA" AS nome_completo_faccionado, "MARIA INES MOREIRA" AS nome_mae_fac, TO_TIMESTAMP("05/11/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO DA SILVA RODRIGUES" AS nome_completo_faccionado, "MARIA ANTONIA DA SILVA RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("20/06/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO DE PAULA VITOR BERGAMINI" AS nome_completo_faccionado, "LEONOR ALVARES" AS nome_mae_fac, TO_TIMESTAMP("14/06/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO DOS REIS VITAL" AS nome_completo_faccionado, "DALILA D'ARC SOUSA VITAL" AS nome_mae_fac, TO_TIMESTAMP("25/12/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO ENEZIO" AS nome_completo_faccionado, "MARIA APARECIDA ANDRADE ENEZIO" AS nome_mae_fac, TO_TIMESTAMP("09/12/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO FABIANO DA SILVA" AS nome_completo_faccionado, "CLEUZA APARECIDA DA SILVA SOUZA" AS nome_mae_fac, TO_TIMESTAMP("23/07/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO GONCALVES FERREIRA" AS nome_completo_faccionado, "LUCIA DE FATIMA GONCALVES" AS nome_mae_fac, TO_TIMESTAMP("06/09/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO HENRIQUE DE OLIVEIRA ASSUMPCAO" AS nome_completo_faccionado, "SUELENE DE FATIMA OLIVEIRA ASSUMPCAO" AS nome_mae_fac, TO_TIMESTAMP("28/04/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO LUIZ SANTOS SILVA" AS nome_completo_faccionado, "NELI MARIA SILVA DE PAULA" AS nome_mae_fac, TO_TIMESTAMP("31/12/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO MARQUES" AS nome_completo_faccionado, "AUREA BATISTA MARQUES" AS nome_mae_fac, TO_TIMESTAMP("18/04/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO MATEUS BATISTA" AS nome_completo_faccionado, "ROSA GARCIA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("24/09/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO MATEUS GOULART" AS nome_completo_faccionado, "ROSANGELA GOULART" AS nome_mae_fac, TO_TIMESTAMP("01/02/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO MESSIAS GOUVEIA" AS nome_completo_faccionado, "JOANA D'ARC RODRIGUES SANTOS DE GOUVEIA" AS nome_mae_fac, TO_TIMESTAMP("16/12/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO OLIVEIRA DOS SANTOS" AS nome_completo_faccionado, "SUELY CARVALHO DE O SANTOS" AS nome_mae_fac, TO_TIMESTAMP("30/09/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO OLIVEIRA SANTOS" AS nome_completo_faccionado, "ANA MARIA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("04/03/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO RIBEIRO DOS SANTOS" AS nome_completo_faccionado, "GUIDA MARIA RIBEIRO DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("19/04/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO RODRIGUES DA SILVA" AS nome_completo_faccionado, "ABIGAIL GUIMARAES RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("23/03/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO SANTIAGO DE SOUZA" AS nome_completo_faccionado, "EDILAMAR NATALIA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("20/04/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO SERENO LIMA" AS nome_completo_faccionado, "MARIA APARECIDA ROSA" AS nome_mae_fac, TO_TIMESTAMP("24/03/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO SILVA" AS nome_completo_faccionado, "SILVANA FERREIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("17/08/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO SILVA REIS" AS nome_completo_faccionado, "ELIANE DE FATIMA DA SILVA REIS" AS nome_mae_fac, TO_TIMESTAMP("14/03/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO TOMAZ DA SILVA" AS nome_completo_faccionado, "MARIA DALVA SILVA" AS nome_mae_fac, TO_TIMESTAMP("18/08/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEMOEL LIMA DOMINGOS DA SILVA" AS nome_completo_faccionado, "MARIA APARECIDA DE LIMA DOMINGOS" AS nome_mae_fac, TO_TIMESTAMP("16/05/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LENON FREITAS XAVIER PEREIRA" AS nome_completo_faccionado, "EDIMARA FREITAS XAVIER " AS nome_mae_fac, TO_TIMESTAMP("10/07/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEOCATIO AMERICO PEREIRA" AS nome_completo_faccionado, "MARIA DAS DORES PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("02/08/1972", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEONARDO DOS REIS VITAL" AS nome_completo_faccionado, "ROSALINA D ARC VITAL" AS nome_mae_fac, TO_TIMESTAMP("05/05/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEONARDO FERREIRA SILVA" AS nome_completo_faccionado, "EDNA FERREIRA LARA" AS nome_mae_fac, TO_TIMESTAMP("03/01/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEONARDO FREIRES DA SILVA SOARES" AS nome_completo_faccionado, "ANTONIA SELANDIA FREIRES DA SILVA SOARES" AS nome_mae_fac, TO_TIMESTAMP("25/10/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEONARDO HENRIQUE SANTOS MERA" AS nome_completo_faccionado, "PATRICIA DE SOUZA MERA" AS nome_mae_fac, TO_TIMESTAMP("28/07/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEONARDO LAIS MACHADO" AS nome_completo_faccionado, "MARLI LAIS MACHADO" AS nome_mae_fac, TO_TIMESTAMP("27/11/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEONARDO MAXIMIANO DA SILVA" AS nome_completo_faccionado, "ADRIANA MAXIMIANO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("17/04/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEONARDO NADALINI FUNCHAL" AS nome_completo_faccionado, "MARIA DARQUES NADALINI FUNCHAL" AS nome_mae_fac, TO_TIMESTAMP("30/10/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEONARDO SOUSA DA CONCEICAO" AS nome_completo_faccionado, "MARIA LUCIA SOUSA" AS nome_mae_fac, TO_TIMESTAMP("12/06/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEONEL BATISTA RIBEIRO DE CAMPOS" AS nome_completo_faccionado, "CECILIA RIBEIRO DE CAMPOS" AS nome_mae_fac, TO_TIMESTAMP("22/04/1970", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LESTER WILKER JESUS LUCIO" AS nome_completo_faccionado, "SIMONE MARIA DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("02/03/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LETICIA DOS SANTOS BARROS" AS nome_completo_faccionado, "DINALVA PEREIRA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("18/04/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LILIAN DONIZETE BORGES" AS nome_completo_faccionado, "AVELINA MARA BORGES" AS nome_mae_fac, TO_TIMESTAMP("24/05/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LILIANI BACCI JERONIMO" AS nome_completo_faccionado, "IRENE BACCI JERONIMO" AS nome_mae_fac, TO_TIMESTAMP("11/12/1965", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LINDEMBERG REALINO BRAGA" AS nome_completo_faccionado, "MARIA IRACEMA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("12/12/1967", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LINDOMAR BARAO FOSCARINI" AS nome_completo_faccionado, "ELIA BARAO" AS nome_mae_fac, TO_TIMESTAMP("11/12/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LOURIANO FERREIRA DE JESUS" AS nome_completo_faccionado, "IVONE FATIMA TOBIAS" AS nome_mae_fac, TO_TIMESTAMP("15/06/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS ALVES" AS nome_completo_faccionado, "ANA CRISTINA ALVES" AS nome_mae_fac, TO_TIMESTAMP("28/05/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS ANTONIO CARRIJO" AS nome_completo_faccionado, "VANDIR AUGUSTA DE FATIMA CARRIJO" AS nome_mae_fac, TO_TIMESTAMP("06/09/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS APARECIDO DA SILVA" AS nome_completo_faccionado, "NILDA MARIA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("11/12/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS CAMPANHA DA SILVA" AS nome_completo_faccionado, "ANTONIA PATRICIO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("23/02/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS CESAR DE ALMEIDA" AS nome_completo_faccionado, "ELANIA APARECIDA DE ALMEIDA" AS nome_mae_fac, TO_TIMESTAMP("30/10/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS DE CARVALHO CUNHA" AS nome_completo_faccionado, "TEREZA DE CARVALHO CUNHA" AS nome_mae_fac, TO_TIMESTAMP("24/12/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS DE LIMA DA SILVEIRA" AS nome_completo_faccionado, "TEREZA JOANA DE LIMA DA SILVEIRA" AS nome_mae_fac, TO_TIMESTAMP("03/07/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS DE OLIVEIRA PIRES" AS nome_completo_faccionado, "EDISLENE APARECIDA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("26/08/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS DE SOUZA MIRA" AS nome_completo_faccionado, "SILVANA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("31/05/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS DONIZETE DE MELO RITA" AS nome_completo_faccionado, "PALMIRA MARTINS RAMIRES" AS nome_mae_fac, TO_TIMESTAMP("11/08/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS DOS SANTOS DENOBILE" AS nome_completo_faccionado, "ALESSANDRA FRANCISCA DOS SANTOS DENOBILE" AS nome_mae_fac, TO_TIMESTAMP("12/02/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS GOMES MOREIRA" AS nome_completo_faccionado, "MARIA AMELIA MOREIRA" AS nome_mae_fac, TO_TIMESTAMP("22/04/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS HENRIQUE DE OLIVEIRA" AS nome_completo_faccionado, "SANDRA REGINA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("07/11/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS HENRIQUE DUARTE" AS nome_completo_faccionado, "LUZIA REILDA DUARTE" AS nome_mae_fac, TO_TIMESTAMP("12/09/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS HENRIQUE OLIVEIRA" AS nome_completo_faccionado, "MARCIA HELENA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("09/04/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS LIBERATO BRANDAO" AS nome_completo_faccionado, "ANA APARECIDA RODRIGUEZ BRANDAO" AS nome_mae_fac, TO_TIMESTAMP("21/11/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS MACHADO SANTOS" AS nome_completo_faccionado, "APARECIDA DE NAZARE MACHADO" AS nome_mae_fac, TO_TIMESTAMP("23/04/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS RAFAEL DA SILVA" AS nome_completo_faccionado, "ROSALINA TEODORO MARQUES" AS nome_mae_fac, TO_TIMESTAMP("10/09/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS RIBELA SABINO DE SA " AS nome_completo_faccionado, "JOSIMARA TEIXEIRA" AS nome_mae_fac, TO_TIMESTAMP("04/06/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCCA NASCIMENTO RAMOS" AS nome_completo_faccionado, "JUVELINA DE FATIMA SILVA PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("15/08/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCE CAROLINA VILACA" AS nome_completo_faccionado, "LUCE MARY SILVA VILACA" AS nome_mae_fac, TO_TIMESTAMP("18/02/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCIANO ALCANTARA DE JESUS" AS nome_completo_faccionado, "ALBERTINA DE ASSIS ALCANTARA" AS nome_mae_fac, TO_TIMESTAMP("09/10/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCIANO ANTONIO NUNES PEREIRA" AS nome_completo_faccionado, "VALQUIRIA NUNES RIBEIRO" AS nome_mae_fac, TO_TIMESTAMP("24/07/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCIANO CANGNI" AS nome_completo_faccionado, "ZILDA DE FATIMA SILVA" AS nome_mae_fac, TO_TIMESTAMP("11/08/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCIANO CASTRO BORGES" AS nome_completo_faccionado, "DAMIANA CASTRO BORGES" AS nome_mae_fac, TO_TIMESTAMP("26/08/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCIANO DE PAULA CARNEIRO" AS nome_completo_faccionado, "MARIA DIONISIA PINTO CARNEIRO" AS nome_mae_fac, TO_TIMESTAMP("24/08/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCIANO FERREIRA BORGES" AS nome_completo_faccionado, "MARIA ABADIA BORGES" AS nome_mae_fac, TO_TIMESTAMP("16/01/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCILENE DA SILVA OLIVEIRA" AS nome_completo_faccionado, "MARIA APARECIDA DA SILVA OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("23/01/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUDMILA ABREU VALENTIM" AS nome_completo_faccionado, "RAILDA BARRA" AS nome_mae_fac, TO_TIMESTAMP("28/05/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIS CLAUDIO LEONOR" AS nome_completo_faccionado, "MARIA APARECIDA LEONOR" AS nome_mae_fac, TO_TIMESTAMP("27/05/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIS FERNANDES VAZ MATHEUS" AS nome_completo_faccionado, "LUCIMAR MATHEUS" AS nome_mae_fac, TO_TIMESTAMP("10/02/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIS FERNANDO RODRIGUES DA SILVA" AS nome_completo_faccionado, "ANA LUCIA RODRIGUES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("29/08/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIS FERNANDO SILVA" AS nome_completo_faccionado, "ELZA SILVA" AS nome_mae_fac, TO_TIMESTAMP("22/01/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIS FILIPE ESTEVAM DA COSTA" AS nome_completo_faccionado, "ROMILDA ESTEVAM DA COSTA" AS nome_mae_fac, TO_TIMESTAMP("23/08/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIS FRANCISCO LEMOS ALVES" AS nome_completo_faccionado, "ELAINE LEMOS DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("23/12/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIS OTAVIO FELICIO JUNIOR " AS nome_completo_faccionado, "ROSEMAR DOS REIS GOMES" AS nome_mae_fac, TO_TIMESTAMP("22/01/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIS PAULO DOS REIS" AS nome_completo_faccionado, "FELICIA GONCALVES DOS REIS" AS nome_mae_fac, TO_TIMESTAMP("30/04/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUISMAR ROSA DE LIMA" AS nome_completo_faccionado, "LUCIA HELENA SOARES DE LIMA" AS nome_mae_fac, TO_TIMESTAMP("07/03/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIZ ALBERTO PEREIRA" AS nome_completo_faccionado, "LUZIA PEREIRA DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("20/07/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIZ AUGUSTO DE ARAUJO" AS nome_completo_faccionado, "RITA DE CASSIA PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("16/08/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIZ AUGUSTO TITO CONSENTINO" AS nome_completo_faccionado, "CECILIA JANICE CONSENTINO" AS nome_mae_fac, TO_TIMESTAMP("01/05/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIZ CARLOS MAGALHÃES BARROSO" AS nome_completo_faccionado, "MARGARIDA MAGALHAES GOMES" AS nome_mae_fac, TO_TIMESTAMP("12/06/1968", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIZ CARLOS XAVIER DE AZEVEDO" AS nome_completo_faccionado, "ADAICY MOTTA DE AZEVEDO" AS nome_mae_fac, TO_TIMESTAMP("11/03/1969", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIZ FERNANDO ALVES" AS nome_completo_faccionado, "ANA PAULA ALVES" AS nome_mae_fac, TO_TIMESTAMP("24/11/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIZ FERNANDO PEREIRA DOS SANTOS" AS nome_completo_faccionado, "MARIA JOSE DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("26/10/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIZ GUSTAVO DOMINGOS DAMAZIO" AS nome_completo_faccionado, "ELIANA DOMINGOS DAMAZIO" AS nome_mae_fac, TO_TIMESTAMP("21/09/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIZ MARCOS GUEDES" AS nome_completo_faccionado, "LAURINDA ANGELICA ROSA GUEDES" AS nome_mae_fac, TO_TIMESTAMP("24/01/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIZ PAULO DOS SANTOS" AS nome_completo_faccionado, "REGINA DE FATIMA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("07/06/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIZA DE OLIVEIRA VIANA" AS nome_completo_faccionado, "NILZA PATRICIA DE OLIVEIRA VIANA" AS nome_mae_fac, TO_TIMESTAMP("14/09/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUZIER DOS SANTOS MARTINS" AS nome_completo_faccionado, "HELIANA DOS SANTOS MARTINS" AS nome_mae_fac, TO_TIMESTAMP("19/07/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAELSON DOMINGUES SANTOS" AS nome_completo_faccionado, "EVANIR DOMINGUES SANTOS" AS nome_mae_fac, TO_TIMESTAMP("09/09/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAICO GABRIEL PEREIRA DIMAS" AS nome_completo_faccionado, "MARIA APARECIDA PEREIRA DIMAS" AS nome_mae_fac, TO_TIMESTAMP("27/09/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAICON DOS REIS SILVA" AS nome_completo_faccionado, "LUCIANA MARIA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("07/11/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAICON EVELYN CERQUEIRA DA SILVA VIEIRA" AS nome_completo_faccionado, "SOLANGE CERQUEIRA DA SILVA VIEIRA" AS nome_mae_fac, TO_TIMESTAMP("08/02/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAICON MOURA PEREIRA" AS nome_completo_faccionado, "MARCIA APARECIDA DE MOURA" AS nome_mae_fac, TO_TIMESTAMP("15/05/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAICON SILVEIRA DE CARVALHO" AS nome_completo_faccionado, "NADIR CANDIDA DA SILVEIRA" AS nome_mae_fac, TO_TIMESTAMP("08/09/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAICON SOUZA DA CRUZ" AS nome_completo_faccionado, "LUANA VENANCIO DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("12/11/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAICON SULIVAN PINTO CARNEIRO" AS nome_completo_faccionado, "JANETE LEGRAN PINTO" AS nome_mae_fac, TO_TIMESTAMP("07/06/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAILSON SOARES DA SILVA" AS nome_completo_faccionado, "ANTONIA APARECIDA SOARES DUARTE SILVA" AS nome_mae_fac, TO_TIMESTAMP("02/09/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MANOEL MESSIAS AGUIAR DA SILVA" AS nome_completo_faccionado, "NEUSA AGUIAR DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("01/07/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MANOEL MESSIAS DE ABREU" AS nome_completo_faccionado, "LUIZA HELENA RIBEIRO LAMBERT" AS nome_mae_fac, TO_TIMESTAMP("25/08/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELINO ADRIANO DA CUNHA" AS nome_completo_faccionado, "LAURA ALEXANDRINA TEODORO BERNARDES" AS nome_mae_fac, TO_TIMESTAMP("10/03/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO ALVES DOS SANTOS" AS nome_completo_faccionado, "MARIA HELENA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("19/01/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO APARECIDO JULIO" AS nome_completo_faccionado, "SUELI TRINDADE JULIO" AS nome_mae_fac, TO_TIMESTAMP("30/03/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO AUGUSTO FRANCELINO" AS nome_completo_faccionado, "MARIA LUIZA DA SILVA FRANCELINO" AS nome_mae_fac, TO_TIMESTAMP("13/09/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO BARBOSA DE OLIVEIRA" AS nome_completo_faccionado, "DIVINA ROSALINA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("28/02/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO CANDIDO DA SILVA BRANTES" AS nome_completo_faccionado, "RONILDA CANDIDO DA SILVA BRANTES" AS nome_mae_fac, TO_TIMESTAMP("02/11/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO CRISTIANO DA SILVA" AS nome_completo_faccionado, "CELIA MARIA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("23/04/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO DE BONFIM" AS nome_completo_faccionado, "LUCIA DE BONFIM SILVA" AS nome_mae_fac, TO_TIMESTAMP("03/12/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO DE SOUZA E SILVA" AS nome_completo_faccionado, "ALZIRA CLMENTINA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("28/07/2018", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO FERNANDES GUIMARAES" AS nome_completo_faccionado, "ANA FERNANDES GUIMARAES AVELAR" AS nome_mae_fac, TO_TIMESTAMP("14/05/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO GONCALVES" AS nome_completo_faccionado, "MARIA DAS GRACAS APARECIDA FAUSTINO GONCALVES" AS nome_mae_fac, TO_TIMESTAMP("03/11/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO HENRIQUE ALMEIDA DE SOUZA" AS nome_completo_faccionado, "ADRIANA MARIA DE JESUS ALMEIDA" AS nome_mae_fac, TO_TIMESTAMP("22/05/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO HENRIQUE DA SILVA BENTO" AS nome_completo_faccionado, "NAIR CANDIDA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("19/08/1972", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO JOSE DE SANTANA" AS nome_completo_faccionado, "MARIA MARLENE DA SILVA SANTANA" AS nome_mae_fac, TO_TIMESTAMP("06/10/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO LEONEL BARROS" AS nome_completo_faccionado, "CLELIA LEONEL DE BARROS" AS nome_mae_fac, TO_TIMESTAMP("02/05/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO LIMA DOS REIS" AS nome_completo_faccionado, "IRANI MARIA DOS REIS LIMA" AS nome_mae_fac, TO_TIMESTAMP("01/01/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO LOPES NOBREGA" AS nome_completo_faccionado, "APARECIDA LOPES NOBREGA" AS nome_mae_fac, TO_TIMESTAMP("31/10/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO MODESTO TOLEDO SILVA" AS nome_completo_faccionado, "ROZARIA BRIGITE MODESTO" AS nome_mae_fac, TO_TIMESTAMP("26/02/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO OLIVEIRA PAULA REIS" AS nome_completo_faccionado, "CLEIDE APARECIDA DE PAULA REIS" AS nome_mae_fac, TO_TIMESTAMP("29/03/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO PAULO SANTOS OLIVEIRA LARA" AS nome_completo_faccionado, "VALERIA DOS SANTOS OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("19/09/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO PINTO DE MORAIS" AS nome_completo_faccionado, "DOROTY LEMES DE MORAIS" AS nome_mae_fac, TO_TIMESTAMP("27/04/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCIANO HONORIO NUNES" AS nome_completo_faccionado, "APARECIDA MARIA NUNES" AS nome_mae_fac, TO_TIMESTAMP("09/11/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCIEL NOE DA SILVA" AS nome_completo_faccionado, "MARIA DO CARMO SILVA" AS nome_mae_fac, TO_TIMESTAMP("23/01/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCIEL RODRIGUES DE SOUZA" AS nome_completo_faccionado, "ROSANE DOS REIS SOUZA" AS nome_mae_fac, TO_TIMESTAMP("18/12/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCIO AVELINO ROSA" AS nome_completo_faccionado, "ELINA DE LOURDES ROSA" AS nome_mae_fac, TO_TIMESTAMP("18/06/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCIO CARMO PIMENTEL" AS nome_completo_faccionado, "DEUSEDINA DO CARMO PIMENTEL" AS nome_mae_fac, TO_TIMESTAMP("18/02/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCIO CRISTIANO MOREIRA PIMENTA" AS nome_completo_faccionado, "ROSEMARY MOREIRA PIMENTA" AS nome_mae_fac, TO_TIMESTAMP("01/10/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCIO DE OLIVEIRA" AS nome_completo_faccionado, "ROSA MARIA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("16/08/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCIO DE SOUZA E SILVA" AS nome_completo_faccionado, "ALZIRA CLEMENTINA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("28/05/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCIO HENRIQUE ALVES DA COSTA" AS nome_completo_faccionado, "JURACY ALVES DA COSTA" AS nome_mae_fac, TO_TIMESTAMP("29/03/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCIO JOSE FERREIRA" AS nome_completo_faccionado, "MARIA JOSE FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("26/12/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCIO LUIZ EVANGELISTA" AS nome_completo_faccionado, "SHEILA MARIA MARTILIO DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("24/02/1963", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCIO NASCIMENTO DA SILVA" AS nome_completo_faccionado, "FRANCISCA NASCIMENTO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("12/01/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCIO SILVA RODRIGUES" AS nome_completo_faccionado, "RAULINA SILVA RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("19/10/1971", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCIO TIAGO DA SILVA" AS nome_completo_faccionado, "MARIA FILOMENA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("10/05/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCO ANTONIO DA COSTA GOMES" AS nome_completo_faccionado, "MARIA APARECIDA DA COSTA" AS nome_mae_fac, TO_TIMESTAMP("18/07/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCO ANTONIO DOS SANTOS GUEDES" AS nome_completo_faccionado, "MARIA AMELIA DOS SANTOS GUEDES" AS nome_mae_fac, TO_TIMESTAMP("23/10/1964", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCO AURELIO ALMEIDA DINIZ" AS nome_completo_faccionado, "MARIA HELENA DE ALMEIDA DINIZ" AS nome_mae_fac, TO_TIMESTAMP("27/06/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCO AURELIO BONUCCI" AS nome_completo_faccionado, "MARIA APARECIDA BONUCCI" AS nome_mae_fac, TO_TIMESTAMP("01/09/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCO AURELIO MACHADO" AS nome_completo_faccionado, "SOLANGE MACHADO" AS nome_mae_fac, TO_TIMESTAMP("02/04/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCO TULIO FERREIRA" AS nome_completo_faccionado, "TANIA MARIA FLORENCIO" AS nome_mae_fac, TO_TIMESTAMP("05/01/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCO TULIO FOURAUX DOS SANTOS" AS nome_completo_faccionado, "BERNADETE FOURAUX DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("26/09/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCOS ANTONIO DO NASCIMENTO JUNIOR" AS nome_completo_faccionado, "MARIA GORETTI DE CARVALHO NASCIMENTO" AS nome_mae_fac, TO_TIMESTAMP("02/02/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCOS ANTONIO RODRIGUES DE PAULA" AS nome_completo_faccionado, "MARIA STELA ANDRADE RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("10/06/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCOS DANIEL BATISTA DA SILVA" AS nome_completo_faccionado, "CIRLEY APARECIDA CORDEIRO" AS nome_mae_fac, TO_TIMESTAMP("02/05/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCOS DIEGO GONCALVES DE OLIVEIRA" AS nome_completo_faccionado, "ROSIMEIRE DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("10/08/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCOS FELIPE BAGGETTO BOTELHO" AS nome_completo_faccionado, "LUCILEIA LUCAS BAGGETTO BOTELHO" AS nome_mae_fac, TO_TIMESTAMP("26/11/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCOS GOMES DOS SANTOS" AS nome_completo_faccionado, "MARLENE GOMES DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("20/11/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCOS GUILHERME COSTA DA SILVA" AS nome_completo_faccionado, "SHEILA COSTA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("02/09/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCOS OLIVEIRA DA SILVA" AS nome_completo_faccionado, "MARCIA OLIVEIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("04/05/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCOS RIBEIRO RIOS" AS nome_completo_faccionado, "MARIA DAS GRACAS RIBEIRO RIOS" AS nome_mae_fac, TO_TIMESTAMP("17/03/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCOS ROBERTO BORGES SANTOS" AS nome_completo_faccionado, "ISABEL BORGES DE OLIVEIRA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("18/08/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCOS ROBERTO PEREIRA" AS nome_completo_faccionado, "MARIA APARECIDA SOUZA" AS nome_mae_fac, TO_TIMESTAMP("04/08/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCOS VINICCIOS MOREIRA DA SILVA" AS nome_completo_faccionado, "MARIA NEUZA MOREIRA" AS nome_mae_fac, TO_TIMESTAMP("06/03/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCOS VINICIUS DOLIVO" AS nome_completo_faccionado, "APARECIDA DOLIVO" AS nome_mae_fac, TO_TIMESTAMP("01/09/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCOS VINICIUS PEREIRA MANZONI" AS nome_completo_faccionado, "SONIA PEREIRA MANZONI" AS nome_mae_fac, TO_TIMESTAMP("03/01/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCUS CARVALHO BARRETO" AS nome_completo_faccionado, "ISABEL CARVALHO BARRETO" AS nome_mae_fac, TO_TIMESTAMP("25/12/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCUS VINICIUS AMARAL" AS nome_completo_faccionado, "VALESCA AMARAL" AS nome_mae_fac, TO_TIMESTAMP("27/02/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCUS VINICIUS GONZALEZ SABACK" AS nome_completo_faccionado, "MARIA DA CONCEICAO GONZALEZ SABACK" AS nome_mae_fac, TO_TIMESTAMP("29/03/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCUS VINICIUS STEPANENKO" AS nome_completo_faccionado, "DELMINDA STEPANENKO" AS nome_mae_fac, TO_TIMESTAMP("04/06/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARIA ALVES DOS SANTOS" AS nome_completo_faccionado, "DEUZENIR ALVES DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("24/12/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARIA DO SOCORRO ARAUJO" AS nome_completo_faccionado, "FRANCISCA LEANDRO DE ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("28/08/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARINEIDE SANTOS OLIVEIRA" AS nome_completo_faccionado, "MARIA DALVA PEREIRA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("08/12/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARIO APARECIDO LEITE FERRAZ JUNIOR" AS nome_completo_faccionado, "JOANA APARECIDA GUSTAVO LEITE FERRAZ" AS nome_mae_fac, TO_TIMESTAMP("17/07/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARIO COSTA FERREIRA FILHO" AS nome_completo_faccionado, "MARIA DE LOURDES DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("02/09/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARIO RAIMUNDO DA SILVA JUNIOR SALES" AS nome_completo_faccionado, "HELOISA HELENA DE OLIVEIRA DOMINGOS" AS nome_mae_fac, TO_TIMESTAMP("12/06/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARIUS FRAGOSO DOS SANTOS" AS nome_completo_faccionado, "GLORIA DAYSE FRAGOSO" AS nome_mae_fac, TO_TIMESTAMP("15/02/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARLON BRUNO GABRIEL DA SILVA" AS nome_completo_faccionado, "LUCIMARA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("22/11/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARLON PEREIRA DE MORAES" AS nome_completo_faccionado, "RITA DE CÁSSIA PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("16/08/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MATEUS PAULO DO NASCIMENTO" AS nome_completo_faccionado, "ADRIANA GONCALVES DE PAULA" AS nome_mae_fac, TO_TIMESTAMP("19/08/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MATEUS RODRIGO ROSA ALVES" AS nome_completo_faccionado, "MARIA IZABEL ROSA" AS nome_mae_fac, TO_TIMESTAMP("31/08/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MATEUS XAVIER DE OLIVEIRA" AS nome_completo_faccionado, "SANDRA MARIA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("24/06/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MATHEUS CONCEICAO LOPES" AS nome_completo_faccionado, "ELIZABETH DA CONCEICAO" AS nome_mae_fac, TO_TIMESTAMP("23/11/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MATHEUS COSTA" AS nome_completo_faccionado, "ROSELI SEBASTIAO" AS nome_mae_fac, TO_TIMESTAMP("02/11/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MATHEUS CRISTIANO DE ARAUJO NASCIMENTO" AS nome_completo_faccionado, "LUZIA MARIA DE ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("24/01/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MATHEUS DE FREITAS RODRIGUES" AS nome_completo_faccionado, "ANGELA MARIA DE FREITAS" AS nome_mae_fac, TO_TIMESTAMP("04/04/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MATHEUS DE MELO SOUZA" AS nome_completo_faccionado, "FERNANDA ANARUBIA DE MELO" AS nome_mae_fac, TO_TIMESTAMP("22/09/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MATHEUS DIAS VIEIRA" AS nome_completo_faccionado, "MARIA APARECIDA VIEIRA" AS nome_mae_fac, TO_TIMESTAMP("04/09/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MATHEUS DILHERMANDO GONCALVES CAETANO" AS nome_completo_faccionado, "NATALICIA APARECIDA CAETANO" AS nome_mae_fac, TO_TIMESTAMP("27/04/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MATHEUS DOS SANTOS BATISTA" AS nome_completo_faccionado, "VANIA BATISTA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("26/11/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MATHEUS LUCAS RODRIGUES SOUZA SENA" AS nome_completo_faccionado, "SILMAR APARECIDA DE SOUZA RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("06/03/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MATHEUS RIBEIRO DA ANDRADE" AS nome_completo_faccionado, "LUCIA RIBEIRO DA ANDRADE" AS nome_mae_fac, TO_TIMESTAMP("28/04/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MATHEUS VIEIRA ALEXANDRE" AS nome_completo_faccionado, "LENI MARIA VIEIRA ALEXANDRE" AS nome_mae_fac, TO_TIMESTAMP("05/03/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAURICIO BAIRROS DO ROSARIO" AS nome_completo_faccionado, "NAIZE MUNIZ DO ROSARIO" AS nome_mae_fac, TO_TIMESTAMP("04/04/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAURICIO CONRADO DE SOUZA" AS nome_completo_faccionado, "MARIA DA CONCEICAO BRITO DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("24/03/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAURICIO JESUS DE ABREU" AS nome_completo_faccionado, "MARIA NILZA DE ABREU" AS nome_mae_fac, TO_TIMESTAMP("14/11/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAURICIO LAMBERT DA SILVA" AS nome_completo_faccionado, "LUZIA HELENA RIBEIRO LAMBERT" AS nome_mae_fac, TO_TIMESTAMP("25/08/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAURILIO DE FREITAS PIRES" AS nome_completo_faccionado, "IRIS HELENA PIRES" AS nome_mae_fac, TO_TIMESTAMP("18/04/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAURILIO DE OLIVEIRA CABRAL GUEDES JUNIOR" AS nome_completo_faccionado, "APARECIDA HERMINDA DA SILVA GUEDES" AS nome_mae_fac, TO_TIMESTAMP("13/03/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAURO RONI MARQUES DE SOUZA" AS nome_completo_faccionado, "SANDRA MARQUES" AS nome_mae_fac, TO_TIMESTAMP("06/02/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAURO VITOR CAROLINO" AS nome_completo_faccionado, "MARIA BECATI SOUSA CAROLINO" AS nome_mae_fac, TO_TIMESTAMP("12/06/1972", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAX FLAVIO ROSA" AS nome_completo_faccionado, "MARIA APARECIDA ROSA" AS nome_mae_fac, TO_TIMESTAMP("24/03/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAX JOSE GARCIA" AS nome_completo_faccionado, "TEREZINHA BALIEIRO GARCIA" AS nome_mae_fac, TO_TIMESTAMP("09/07/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAX MARCOS BARBOSA" AS nome_completo_faccionado, "MARIA DAS GRACAS ROSARIO" AS nome_mae_fac, TO_TIMESTAMP("13/07/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAX SOARES SILVA" AS nome_completo_faccionado, "ANTONIA APARECIDA SOARES DUARTE" AS nome_mae_fac, TO_TIMESTAMP("14/11/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAXUESLE RODRIGUES ANDRADE" AS nome_completo_faccionado, "TEREZINHA RODRIGUES ANDRADE" AS nome_mae_fac, TO_TIMESTAMP("20/11/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAXWELL COSTA RIBEIRO" AS nome_completo_faccionado, "MATILDE COSMA COSTA RIBEIRO" AS nome_mae_fac, TO_TIMESTAMP("22/01/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAYARA DE SOUZA SANTOS" AS nome_completo_faccionado, "DEUZENIR ALVES DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("03/07/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAYCON AUGUSTO BOARETTO" AS nome_completo_faccionado, "IRENE BRAGA PIMENTA" AS nome_mae_fac, TO_TIMESTAMP("07/08/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAYCON DOUGLAS SILVA" AS nome_completo_faccionado, "SIRLENE MARIA SILVA" AS nome_mae_fac, TO_TIMESTAMP("26/02/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAYCON HENRIQUE FERREIRA" AS nome_completo_faccionado, "LENIR BATISTA FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("23/09/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAYCON SIQUEIRA PORTO" AS nome_completo_faccionado, "CLAUDECI DE FATIMA SIQUEIRA" AS nome_mae_fac, TO_TIMESTAMP("10/12/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAYCON WELLINGTON IZAIAS DE SOUZA" AS nome_completo_faccionado, "MARIA DA PENHA IZAIAS" AS nome_mae_fac, TO_TIMESTAMP("23/11/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MICAEL DAVID ANDRADE" AS nome_completo_faccionado, "ROSANI APARECIDA CARVALHO ANDRADE" AS nome_mae_fac, TO_TIMESTAMP("09/12/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MICHAEL ANTUNES DE ARAUJO" AS nome_completo_faccionado, "AVANI ANTUNES DE ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("06/11/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MICHAEL FELIPE ROSA" AS nome_completo_faccionado, "ROSILENE ROSA" AS nome_mae_fac, TO_TIMESTAMP("03/11/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MICHAEL GUIMARAES SILVA" AS nome_completo_faccionado, "ANA PAULA GUIMARAES" AS nome_mae_fac, TO_TIMESTAMP("30/12/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MICHAEL RODRIGO DUARTE" AS nome_completo_faccionado, "ZULMIRA APARECIDA DE PAULA DUARTE" AS nome_mae_fac, TO_TIMESTAMP("04/06/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MICHAEL SALGADO XAVIER" AS nome_completo_faccionado, "MARIA DO CARMO VENANCIO POLARI" AS nome_mae_fac, TO_TIMESTAMP("29/05/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MICHEL DOUGLAS RIBEIRO DOS SANTOS" AS nome_completo_faccionado, "MARIA DE LOURDES RIBEIRO SANTOS" AS nome_mae_fac, TO_TIMESTAMP("02/05/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MICHEL VIANA DOS SANTOS" AS nome_completo_faccionado, "MARIA DAS GRACAS VIANA" AS nome_mae_fac, TO_TIMESTAMP("06/05/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MICHELLE MATTOS FERREIRA" AS nome_completo_faccionado, "ROSANGELA MATTOS FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("27/06/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MILER FRANCISCO SILVA COSTA" AS nome_completo_faccionado, "JANE DOS REIS SILVA COSTA" AS nome_mae_fac, TO_TIMESTAMP("25/10/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MILLER CESAR DA CRUZ FERREIRA" AS nome_completo_faccionado, "VERA LUCIA DA CRUZ" AS nome_mae_fac, TO_TIMESTAMP("21/06/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MILLER RODRIGUES DE CASTRO DOS SANTOS" AS nome_completo_faccionado, "MARTA APARECIDA DE CASTRO" AS nome_mae_fac, TO_TIMESTAMP("25/12/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MILTON JUNIO BARBOSA" AS nome_completo_faccionado, "VALERIA AUXILIADORA BARBOSA" AS nome_mae_fac, TO_TIMESTAMP("08/07/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MIRAIDISON JOSE NOGUEIRA" AS nome_completo_faccionado, "MARIA APARECIDA DIAS DE MENEZES NOGUEIRA" AS nome_mae_fac, TO_TIMESTAMP("03/11/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MOISES HENRIQUE DE ALMEIDA" AS nome_completo_faccionado, "LAIDE MARIA DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("12/02/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MOZART JORDANE OZELANE NEVES" AS nome_completo_faccionado, "NILVA DE FATIMA OZELANE" AS nome_mae_fac, TO_TIMESTAMP("07/02/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MOZER ROSSATO CARVALHO" AS nome_completo_faccionado, "SELMA ROSSATO CARVALHO" AS nome_mae_fac, TO_TIMESTAMP("04/03/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MURYLLO KHAYTTHAN DE SOUZA GALANTE" AS nome_completo_faccionado, "MARA CRISTINA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("13/11/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "NATAL APARECIDO RODRIGUES" AS nome_completo_faccionado, "MARIA CECILIA RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("20/12/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "NATANAEL ONOFRE BARBOSA" AS nome_completo_faccionado, "MARIA DE FATIMA BARBOSA" AS nome_mae_fac, TO_TIMESTAMP("28/02/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "NATASHA FERNANDA DOS SANTOS PEIXOTO" AS nome_completo_faccionado, "ANDREIA MARCIA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("25/09/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "NATHAN BORGES NUNES" AS nome_completo_faccionado, "LILIAN DONIZETE BORGES" AS nome_mae_fac, TO_TIMESTAMP("16/04/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "NAYANE QUEIROZ OLIVEIRA" AS nome_completo_faccionado, "ELIANA QUEIROZ BARRETO" AS nome_mae_fac, TO_TIMESTAMP("14/06/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "NAYANE TEIXEIRA LIMA" AS nome_completo_faccionado, "MARIA ELIZABETE TEIXEIRA LIMA" AS nome_mae_fac, TO_TIMESTAMP("09/11/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "NAYARA APARECIDA AGUIAR PRIMO DE SOUZA" AS nome_completo_faccionado, "ADRIANA AGUIAR PRIMO" AS nome_mae_fac, TO_TIMESTAMP("08/04/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "NEIL CLEVERSON CONRADO ORMAY" AS nome_completo_faccionado, "CLELIA CONRADO ORMAY" AS nome_mae_fac, TO_TIMESTAMP("15/07/1970", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "NILSON BARBOSA MOREIRA" AS nome_completo_faccionado, "RITA RODRIGUES DE SOUZA MOREIRA" AS nome_mae_fac, TO_TIMESTAMP("14/06/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "NILTON CEZAR LIMA TORRES" AS nome_completo_faccionado, "ZILAH RODRIGUES DE LIMA TORRES" AS nome_mae_fac, TO_TIMESTAMP("25/12/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "NIRLEI RIBEIRO MARIA" AS nome_completo_faccionado, "IRACEMA CAETANO RIBEIRO MARIA" AS nome_mae_fac, TO_TIMESTAMP("20/01/1973", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "NIVALDO FELIPE DE JESUS" AS nome_completo_faccionado, "MARIA AUXILIADORA DE JESUS GOMES" AS nome_mae_fac, TO_TIMESTAMP("15/05/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "NIVIA CUNHA PACETTI" AS nome_completo_faccionado, "IOLANDA APARECIDA CUNHA PACETTI" AS nome_mae_fac, TO_TIMESTAMP("16/01/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "NORMANA GOMES COSTA" AS nome_completo_faccionado, "ANA MARIA GOMES COSTA" AS nome_mae_fac, TO_TIMESTAMP("15/09/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ODAIR APARECIDO DE QUEIROZ" AS nome_completo_faccionado, "ELENICE ROSA DE QUEIROZ" AS nome_mae_fac, TO_TIMESTAMP("27/08/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ODAIR DE JESUS PEREIRA" AS nome_completo_faccionado, "ANA LUCIA PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("22/10/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ODAIR JOSE GONCALVES" AS nome_completo_faccionado, "MARIA DOS ANJOS GONCALVES" AS nome_mae_fac, TO_TIMESTAMP("03/01/1972", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "OLDAIR PEREIRA GERMANO" AS nome_completo_faccionado, "SONIA APARECIDA GERMANO" AS nome_mae_fac, TO_TIMESTAMP("15/07/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "OLERIANO SIQUEIRA LUQUEZ" AS nome_completo_faccionado, "CLEUZA MARIA SIQUEIRA LUQUEZ" AS nome_mae_fac, TO_TIMESTAMP("12/04/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ORLANDO SOARES DOS SANTOS" AS nome_completo_faccionado, "LIODINA SOARES DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("23/09/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "OSCAR FERNANDO DA SILVA SOARES" AS nome_completo_faccionado, "MARIA DE FATIMA ARAUJO SOARES" AS nome_mae_fac, TO_TIMESTAMP("29/11/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "OSMANIR JOSE PEIXOTO" AS nome_completo_faccionado, "MALVINA PINTO DA TRINDADE" AS nome_mae_fac, TO_TIMESTAMP("06/05/1962", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "OSMAR LEITE DOS SANTOS" AS nome_completo_faccionado, "MARIA ROZENY LEITE DOS SANTOS " AS nome_mae_fac, TO_TIMESTAMP("10/09/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "OSVALDO BARBOSA JUNIOR" AS nome_completo_faccionado, "MARIA DE FATIMA COSTA BARBOSA" AS nome_mae_fac, TO_TIMESTAMP("23/07/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "OSVALDO ESTEVAM PINTO" AS nome_completo_faccionado, "ODETE THEOPHILO PINTO" AS nome_mae_fac, TO_TIMESTAMP("09/12/1964", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "OSVALDO SOARES MARCOLINO" AS nome_completo_faccionado, "MANOELINA SOARES" AS nome_mae_fac, TO_TIMESTAMP("26/05/1964", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "OSWALDO LEONARDO PEREIRA JUNIOR" AS nome_completo_faccionado, "ELIANA RODRIGUES CORREIA" AS nome_mae_fac, TO_TIMESTAMP("26/02/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "OTAVIO ADRIANO GABRIEL" AS nome_completo_faccionado, "MARIA HELENA GABRIEL" AS nome_mae_fac, TO_TIMESTAMP("10/02/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "OZEIAS TEIXEIRA DE ARAUJO" AS nome_completo_faccionado, "MARIA ANTONIA CRUZ ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("25/06/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PABLINE ERIKA DINIZ DE OLIVEIRA" AS nome_completo_faccionado, "ELVIRA DINIZ DA SILVA OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("15/11/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PABLO AMARO PEREIRA" AS nome_completo_faccionado, "IVANILDA DOS REIS AMARO" AS nome_mae_fac, TO_TIMESTAMP("31/10/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PABLO APARECIDO VIEIRA ALVES" AS nome_completo_faccionado, "ROSE MEIRE APARECIDA VIEIRA ALVES" AS nome_mae_fac, TO_TIMESTAMP("12/11/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PABLO HENRIQUE ANDRADE" AS nome_completo_faccionado, "MILENE SILVA ANDRADE" AS nome_mae_fac, TO_TIMESTAMP("13/06/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PABLO HENRIQUE DE BRITO ORICIO" AS nome_completo_faccionado, "CLAUDIA ALVES DE BRITO" AS nome_mae_fac, TO_TIMESTAMP("24/01/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PABLO HENRIQUE PEREIRA DE SOUZA" AS nome_completo_faccionado, "GIOVANA APARECIDA SILVESTRE" AS nome_mae_fac, TO_TIMESTAMP("18/11/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PABLO LIANO LINO DA COSTA" AS nome_completo_faccionado, "DIVANI LINO DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("10/12/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PABLO SANTOS DE ANDRADE VIANA" AS nome_completo_faccionado, "MARIA DA JUDA PEREIRA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("13/05/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PALOMA CAMILA DA SILVEIRA" AS nome_completo_faccionado, "DORACI CAMILO DA SILVEIRA" AS nome_mae_fac, TO_TIMESTAMP("01/12/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PATRICK JULIANO LIMA SOUTO" AS nome_completo_faccionado, "SONIA MARIA LIMA" AS nome_mae_fac, TO_TIMESTAMP("25/05/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PATRICK MONTEIRO SILVA" AS nome_completo_faccionado, "SILVANIA GOMES MONTEIRO" AS nome_mae_fac, TO_TIMESTAMP("04/09/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO CECILIO JUNIOR" AS nome_completo_faccionado, "HELENIR MARIA OLIVEIRA CECILIO" AS nome_mae_fac, TO_TIMESTAMP("06/07/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO CESAR ANTUNES" AS nome_completo_faccionado, "MARIA LUIZA ANTUNES" AS nome_mae_fac, TO_TIMESTAMP("04/09/1972", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO CESAR LIMA BARAO" AS nome_completo_faccionado, "ANA MARIA DA SILVA LIMA" AS nome_mae_fac, TO_TIMESTAMP("01/11/1973", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO CESAR TEIXEIRA LELIS" AS nome_completo_faccionado, "NILDA MARIA TEIXEIRA" AS nome_mae_fac, TO_TIMESTAMP("15/07/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO CESAR XAVIER DANTAS" AS nome_completo_faccionado, "HELENA ESMERINDA DANTAS" AS nome_mae_fac, TO_TIMESTAMP("30/11/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO CRISTIANO DE OLIVEIRA" AS nome_completo_faccionado, "RAYMUNDA OLGA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("16/07/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO EDUARDO FERREIRA DOS SANTOS" AS nome_completo_faccionado, "MARIA LUCIA CAFE DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("11/01/1971", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO GABRIEL NASCIMENTO LIMA" AS nome_completo_faccionado, "IVANIA MARIA NASCIMENTO LIMA" AS nome_mae_fac, TO_TIMESTAMP("24/09/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO HENRIQUE DA COSTA MAIA" AS nome_completo_faccionado, "TATIANA ALVES DA COSTA" AS nome_mae_fac, TO_TIMESTAMP("16/01/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO HENRIQUE DE CASTRO" AS nome_completo_faccionado, "MARIA APARECIDA RODRIGUES CASTRO" AS nome_mae_fac, TO_TIMESTAMP("03/04/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO LUIZ NUNES" AS nome_completo_faccionado, "SUZANA DOS SANTOS OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("19/11/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO MARCELO BARBOSA DA SILVA" AS nome_completo_faccionado, "CICERA MARIA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("30/06/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO REIS DE SANTANA" AS nome_completo_faccionado, "RAILDES ESTANISLAU" AS nome_mae_fac, TO_TIMESTAMP("22/07/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO RICARDO AFONSO BARBOSA DE LIMA" AS nome_completo_faccionado, "ANA MARIA AFONSO BARBOSA" AS nome_mae_fac, TO_TIMESTAMP("12/09/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO RICARDO COSTA DE CARVALHO" AS nome_completo_faccionado, "LUCI FATIMA COSTA DE CARVALHO" AS nome_mae_fac, TO_TIMESTAMP("05/05/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO RICARDO MELO" AS nome_completo_faccionado, "ZELIA APARECIDA LEIVINO DE MELO" AS nome_mae_fac, TO_TIMESTAMP("24/02/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO ROBERTO DA SILVA JUNIOR" AS nome_completo_faccionado, "ANGELA MARIA MACIEL" AS nome_mae_fac, TO_TIMESTAMP("19/12/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO ROBERTO TOME JUNIOR" AS nome_completo_faccionado, "ANGELA MARIA PEREIRA TOME" AS nome_mae_fac, TO_TIMESTAMP("17/12/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO ROBINSON CARVALHO DA SILVA" AS nome_completo_faccionado, "CELIA APARECIDA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("28/11/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO SERGIO BATISTA GONCALVES" AS nome_completo_faccionado, "ANA CANDIDA BATISTA GONCALVES" AS nome_mae_fac, TO_TIMESTAMP("27/08/1970", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO SERGIO FONSECA ROCHA" AS nome_completo_faccionado, "MARIA FONSECA ROCHA" AS nome_mae_fac, TO_TIMESTAMP("09/10/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO SERGIO PEREIRA DE AGUIAR SILVA" AS nome_completo_faccionado, "MARILENE PEREIRA DE AGUIAR SILVA" AS nome_mae_fac, TO_TIMESTAMP("12/02/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO SERGIO PORFIRIO SILVA" AS nome_completo_faccionado, "CLEIDE MARA PORFIRIO SILVA" AS nome_mae_fac, TO_TIMESTAMP("10/02/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO SERGIO SANTOS " AS nome_completo_faccionado, "EDNA MARIA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("23/04/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PEDRO EVARISTO NUNES NETO" AS nome_completo_faccionado, "IRIS NUNES PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("22/09/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PEDRO HALLYSSON FERNANDES" AS nome_completo_faccionado, "SANDRA FERNANDES SILVA" AS nome_mae_fac, TO_TIMESTAMP("10/09/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PEDRO HENRIQUE DA SILVA" AS nome_completo_faccionado, "JACQUELINE APARECIDA SEVERINO" AS nome_mae_fac, TO_TIMESTAMP("02/03/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PEDRO HENRIQUE PARDIN BOZA" AS nome_completo_faccionado, "MARIA APARECIDA PARDIN BOZA" AS nome_mae_fac, TO_TIMESTAMP("19/06/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PEDRO HENRIQUE PEREIRA GOMES" AS nome_completo_faccionado, "ALAIDE PEREIRA GOMES" AS nome_mae_fac, TO_TIMESTAMP("11/02/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PEDRO HENRIQUE RIBEIRO DE AVILA" AS nome_completo_faccionado, "VERONICA APARECIDA RIBEIRO DE AVILA" AS nome_mae_fac, TO_TIMESTAMP("06/12/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PEDRO LUCAS FERNANDES SILVA" AS nome_completo_faccionado, "ELIANA APARECIDA SILVA" AS nome_mae_fac, TO_TIMESTAMP("29/06/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PEDRO PAULO ALVES" AS nome_completo_faccionado, "MARIA DA PENHA ALVES" AS nome_mae_fac, TO_TIMESTAMP("05/06/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PEDRO SELFAS DOS SANTOS NETO" AS nome_completo_faccionado, "MARIA ILZA ALVES DA COSTA" AS nome_mae_fac, TO_TIMESTAMP("01/11/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PEDRO WILTON DA SILVA" AS nome_completo_faccionado, "JOANA ADELIA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("09/11/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PETERSON ADRIANO DE OLIVEIRA" AS nome_completo_faccionado, "DEBORA DOS REIS OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("29/01/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PETERSON PEREIRA BERGAMINI MONTEIRO" AS nome_completo_faccionado, "APARECIDA MARCIA COELHO" AS nome_mae_fac, TO_TIMESTAMP("21/02/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PETTER LUIS DE CARVALHO" AS nome_completo_faccionado, "ROSEMEIRE RODRIGUES DE CARVALHO" AS nome_mae_fac, TO_TIMESTAMP("11/08/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PIONE RUDSON GONCALVES" AS nome_completo_faccionado, "SELMA MARIA GONCALVES" AS nome_mae_fac, TO_TIMESTAMP("11/07/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PLINIO GUTEMBERG OLIVEIRA FERNANDES" AS nome_completo_faccionado, "ESTELITA OLIVEIRA FERNANDES" AS nome_mae_fac, TO_TIMESTAMP("19/10/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PRISCILA VIEIRA DA SILVA" AS nome_completo_faccionado, "IZABELA SUZE RAMOS" AS nome_mae_fac, TO_TIMESTAMP("02/06/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PRISCILLA GARCIA COUTINHO" AS nome_completo_faccionado, "MARCIA CHRISTINA SOUZA GARCIA COUTINHO" AS nome_mae_fac, TO_TIMESTAMP("11/03/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL ALMEIDA SILVEIRA" AS nome_completo_faccionado, "LUCE MARY CARNEIRO SILVEIRA" AS nome_mae_fac, TO_TIMESTAMP("23/11/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL APARECIDO GONCALVES RAFAEL" AS nome_completo_faccionado, "ISABEL CRISTINA GONCALVES" AS nome_mae_fac, TO_TIMESTAMP("30/08/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL BICALHO MACIEL" AS nome_completo_faccionado, "EMERENCIANA AUGUSTA BICALHO MACIEL" AS nome_mae_fac, TO_TIMESTAMP("11/04/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL BORSATTI COMPAGNONI" AS nome_completo_faccionado, "VERA ELISA BORSATTI" AS nome_mae_fac, TO_TIMESTAMP("10/03/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL BRUNO DA SILVA" AS nome_completo_faccionado, "LUZIA DO CARMO SILVA" AS nome_mae_fac, TO_TIMESTAMP("07/08/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL CAMARGO CORREIA DA SILVA" AS nome_completo_faccionado, "LOURDES DONIZETTI CAMARGO" AS nome_mae_fac, TO_TIMESTAMP("26/05/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL CARRION" AS nome_completo_faccionado, "CREUZA MARIA OLIVEIRA CARRION" AS nome_mae_fac, TO_TIMESTAMP("29/09/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL CESAR DE ALMEIDA ALVES" AS nome_completo_faccionado, "ELANIA APARECIDA DE ALMEIDA " AS nome_mae_fac, TO_TIMESTAMP("26/03/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL COSME DE CASTRO ALVES" AS nome_completo_faccionado, "MARIA STELA DE CASTRO ALVES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("19/06/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL DA SILVA" AS nome_completo_faccionado, "MARIA TEREZINHA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("28/01/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL DE CARVALHO BRAZ" AS nome_completo_faccionado, "ROSANGELA APARECIDA DE CARVALHO BRAZ" AS nome_mae_fac, TO_TIMESTAMP("12/02/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL DE OLIVEIRA BORGES" AS nome_completo_faccionado, "JOANA DARC DE OLIVEIRA BORGES" AS nome_mae_fac, TO_TIMESTAMP("09/04/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL DE OLIVEIRA RIBEIRO SANTOS" AS nome_completo_faccionado, "FRANCISCA VALERIA DE OLIVEIRA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("10/03/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL DOUGLAS APARECIDO DOS SANTOS" AS nome_completo_faccionado, "MARIA APARECIDA PEREIRA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("16/03/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL EMILIO FELICIANO CORREA" AS nome_completo_faccionado, "LETICIA FELICIANO" AS nome_mae_fac, TO_TIMESTAMP("28/02/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL HENRIQUE DE LIMA" AS nome_completo_faccionado, "CLEUZELI DE LIMA" AS nome_mae_fac, TO_TIMESTAMP("10/06/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL JORCELINO DA SILVA" AS nome_completo_faccionado, "MARIA SIABA DE JESUS SILVA" AS nome_mae_fac, TO_TIMESTAMP("19/04/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL PINHEIRO NEVES" AS nome_completo_faccionado, "DULCE MARIA PINHEIRO NEVES" AS nome_mae_fac, TO_TIMESTAMP("29/07/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL SANCHEZ BATISTA" AS nome_completo_faccionado, "TERESA CRISTINA DO CARMO SANCHEZ" AS nome_mae_fac, TO_TIMESTAMP("05/05/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL VIEIRA DE CARVALHO" AS nome_completo_faccionado, "MARIA LUIZA DA SILVA FRANCELINO" AS nome_mae_fac, TO_TIMESTAMP("13/09/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAELA DE OLIVEIRA PEREIRA" AS nome_completo_faccionado, "EVELI RODRIGUES PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("31/01/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAIMUNDA PEREIRA DA SILVA" AS nome_completo_faccionado, "MARIA NEVES PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("01/11/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAIMUNDO FRANCISCO CARDOSO FILHO" AS nome_completo_faccionado, "LUZINETH DA SILVA CARDOSO" AS nome_mae_fac, TO_TIMESTAMP("27/06/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAMON HENRIQUE GARCIA RIVERO LLANOS" AS nome_completo_faccionado, "MARIA CELIA GARCIA" AS nome_mae_fac, TO_TIMESTAMP("02/05/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAPHAEL FELIPE NEVES" AS nome_completo_faccionado, "MARIA APARECIDA" AS nome_mae_fac, TO_TIMESTAMP("21/06/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAPHAEL FREITAS MACHADO" AS nome_completo_faccionado, "AMELIA FERNANDES DE FREITAS" AS nome_mae_fac, TO_TIMESTAMP("22/10/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAUF DE SOUZA GABRIEL" AS nome_completo_faccionado, "SUELI LUCIANA DE SOUZA GABRIEL" AS nome_mae_fac, TO_TIMESTAMP("08/01/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAUL DOS SANTOS LIMA" AS nome_completo_faccionado, "AIDE DOS SANTOS LIMA" AS nome_mae_fac, TO_TIMESTAMP("28/09/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAUL SOARES GOMES" AS nome_completo_faccionado, "PALMIRA MANDES GOMES" AS nome_mae_fac, TO_TIMESTAMP("17/02/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAULEXANDRO AUGUSTO VIEIRA ROSA" AS nome_completo_faccionado, "ELISABETE APARECIDA VIEIRA" AS nome_mae_fac, TO_TIMESTAMP("08/04/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAWANELLY RODRIGUES DOS REIS SILVA" AS nome_completo_faccionado, "MARIA AUXILIADORA RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("21/05/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "REGINALDO AFONSO RODRIGUES" AS nome_completo_faccionado, "CLEUSA MARIA AFONSO RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("05/05/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "REGINALDO ALVES DA SILVA" AS nome_completo_faccionado, "MARIA DA CONCEICAO SILVA" AS nome_mae_fac, TO_TIMESTAMP("19/08/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "REGINALDO DE PAULA VIEIRA" AS nome_completo_faccionado, "MARIA JOCELENE DA ROCHA" AS nome_mae_fac, TO_TIMESTAMP("05/10/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "REGINALDO NASCIMENTO BORGES" AS nome_completo_faccionado, "JOANA FRANCISCO DO NASCIMENTO" AS nome_mae_fac, TO_TIMESTAMP("16/06/1967", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "REINALDO COIMBRA LEITE" AS nome_completo_faccionado, "PEDRELINA SOARES LEITE" AS nome_mae_fac, TO_TIMESTAMP("05/06/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "REINALDO RODRIGUES DE MENDONÇA" AS nome_completo_faccionado, "MARIA JOCELENE DA ROCHA" AS nome_mae_fac, TO_TIMESTAMP("05/10/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RELLISON JACKSON DE BARROS" AS nome_completo_faccionado, "LUCIA HELENA VALERIO" AS nome_mae_fac, TO_TIMESTAMP("05/12/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RENAN ALMEIDA DE FATIMA" AS nome_completo_faccionado, "KATIA ALMEIDA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("09/04/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RENATO COELHO FLORIANO" AS nome_completo_faccionado, "MARIA REGINA COELHO FLORIANO" AS nome_mae_fac, TO_TIMESTAMP("10/04/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RENATO DE ARAUJO LEAL" AS nome_completo_faccionado, "MARIA APARECIDA DE ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("11/01/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RENATO DE CASSIO MEIRA" AS nome_completo_faccionado, "GERALDA PEREIRA MEIRA" AS nome_mae_fac, TO_TIMESTAMP("11/06/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RENATO DOS SANTOS PEREIRA" AS nome_completo_faccionado, "GENI NEVES DOS SANTOS PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("30/03/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RENATO FAZOLI GONCALVES" AS nome_completo_faccionado, "MARCIA FAZOLI DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("18/11/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RENATO JOSE DA SILVA" AS nome_completo_faccionado, "MARIA AUXILIADORA DO NASCIMENTO SILVA" AS nome_mae_fac, TO_TIMESTAMP("20/10/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RENATO JUNIO VIEIRA MATIAS" AS nome_completo_faccionado, "MARIA JOSE VIEIRA MATIAS" AS nome_mae_fac, TO_TIMESTAMP("29/12/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RENATO LEMOS DE OLIVEIRA" AS nome_completo_faccionado, "MARINA DA SILVA LEMOS COSTA" AS nome_mae_fac, TO_TIMESTAMP("12/03/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RENATO PEREIRA DE SOUZA" AS nome_completo_faccionado, "RAILDA PEREIRA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("29/01/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RENATO VIDIGAL " AS nome_completo_faccionado, "MARIA ILDA VIDIGAL" AS nome_mae_fac, TO_TIMESTAMP("11/04/1971", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RENIVALDO PAULO DE OLIVEIRA CANDIDO" AS nome_completo_faccionado, "ROSELEI MARIA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("22/11/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RIAN FERREIRA DOS SANTOS" AS nome_completo_faccionado, "MARIA ISABEL DE SOUZA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("02/06/2001", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RICARDO ABILIO" AS nome_completo_faccionado, "SONIA MARIA ABILIO" AS nome_mae_fac, TO_TIMESTAMP("05/10/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RICARDO ALEXANDRE GONCALVES" AS nome_completo_faccionado, "MARIA APARECIDA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("04/01/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RICARDO ALVES DE OLIVEIRA" AS nome_completo_faccionado, "MARIA DO CARMO OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("30/10/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RICARDO DA SILVA CEZARIO" AS nome_completo_faccionado, "CELINA DA SILVA CEZARIO" AS nome_mae_fac, TO_TIMESTAMP("11/10/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RICARDO DOS SANTOS" AS nome_completo_faccionado, "ELIZABETE DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("17/06/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RICARDO GREB" AS nome_completo_faccionado, "MARIA APARECIDA MARIANO GREB" AS nome_mae_fac, TO_TIMESTAMP("04/04/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RICARDO IVO DA SILVA" AS nome_completo_faccionado, "LUIZA APARECIDA DE JESUS ALBINO SILVA" AS nome_mae_fac, TO_TIMESTAMP("17/09/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RICARDO JOSE DOS SANTOS MOURA" AS nome_completo_faccionado, "MARIA DE LOURDES SANTOS MOURA" AS nome_mae_fac, TO_TIMESTAMP("20/04/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RICARDO LUIZ MATOS PEDRO" AS nome_completo_faccionado, "ELIANA MARIA MATOS PEDRO" AS nome_mae_fac, TO_TIMESTAMP("31/07/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RICARDO PEREIRA RAMOS FERNANDES" AS nome_completo_faccionado, "ILZA HELENA APARECIDA FERNANDES " AS nome_mae_fac, TO_TIMESTAMP("24/01/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RICARDO RIBEIRO SANTOS" AS nome_completo_faccionado, "EUNICE RIBEIRO SANTOS" AS nome_mae_fac, TO_TIMESTAMP("14/11/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RICARDO ROLIM RAPHAEL" AS nome_completo_faccionado, "ANA CRISTINA ROLIM FARIA RAPHAEL" AS nome_mae_fac, TO_TIMESTAMP("13/08/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RICARDO SOUSA DOS SANTOS" AS nome_completo_faccionado, "MARLI SOUSA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("12/10/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RICARDO VIEIRA DA SILVA" AS nome_completo_faccionado, "MARIA APARECIDA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("22/01/1966", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RICHARD MOREIRA DA SILVA" AS nome_completo_faccionado, "LICE MARIA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("20/10/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RICK COSTA" AS nome_completo_faccionado, "NILZA APARECIDA COSTA SILVA" AS nome_mae_fac, TO_TIMESTAMP("29/05/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RILDO TEIXEIRA DE OLIVEIRA" AS nome_completo_faccionado, "MARIA DE LOURDES MAGALHAES OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("08/01/1964", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROANITO DE PAULA SOARES" AS nome_completo_faccionado, "DINA MARIA SOARES" AS nome_mae_fac, TO_TIMESTAMP("27/06/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROARY SILVA MOURA" AS nome_completo_faccionado, "ROSIMARY SILVA BERNARDES DE MOURA" AS nome_mae_fac, TO_TIMESTAMP("07/11/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROBERT DE BRITTO SALES" AS nome_completo_faccionado, "GELSOMINA DE BRITTO COSTA" AS nome_mae_fac, TO_TIMESTAMP("15/03/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROBERT MARTINS" AS nome_completo_faccionado, "MARIA JOSE MARTINS" AS nome_mae_fac, TO_TIMESTAMP("25/11/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROBERT MAXIMO" AS nome_completo_faccionado, "SONIA LUISA MAXIMO" AS nome_mae_fac, TO_TIMESTAMP("08/01/1971", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROBERT WILLIAM SILVA" AS nome_completo_faccionado, "CRENILDA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("18/05/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROBERTA APARECIDA DE SOUSA RIBEIRO" AS nome_completo_faccionado, "CLEIDE DE SOUSA MORAIS" AS nome_mae_fac, TO_TIMESTAMP("11/03/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROBERTO CARLOS BRANDAO" AS nome_completo_faccionado, "ALMERITA MARIA DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("23/08/1971", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROBERTO PALHARES TEIXEIRA" AS nome_completo_faccionado, "CREUSA PALHARES TEIXEIRA" AS nome_mae_fac, TO_TIMESTAMP("14/07/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROBERTO SCHAEFER FILHO" AS nome_completo_faccionado, "ADRIANA CRISTINA DA COSTA SCHAEFER" AS nome_mae_fac, TO_TIMESTAMP("09/06/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROBERTSON OLIVEIRA DOS SANTOS" AS nome_completo_faccionado, "ELJANE VIRGINIA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("26/02/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROBINSON THIAGO DOS SANTOS" AS nome_completo_faccionado, "ELAINE CRISTINA SILVA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("21/10/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROBSON BARBOSA SILVA JUNIOR" AS nome_completo_faccionado, "ZORAIDE DE JESUS PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("14/08/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROBSON CARVALHO DOS SANTOS" AS nome_completo_faccionado, "MARIETA SODRE DE CARVALHO" AS nome_mae_fac, TO_TIMESTAMP("15/12/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROBSON FREITAS DA SILVA" AS nome_completo_faccionado, "MARCIA APARECIDA DE FREITAS FERREIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("01/06/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROBSON GABRIEL MENDES" AS nome_completo_faccionado, "SILVIA MARIA GABRIEL MENDES" AS nome_mae_fac, TO_TIMESTAMP("27/12/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROBSON GREGORIO DE ALMEIDA" AS nome_completo_faccionado, "VICENTINA BARTOLOMEU DE ALMEIDA" AS nome_mae_fac, TO_TIMESTAMP("12/03/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROBSON PAULO MARTINS" AS nome_completo_faccionado, "MARIA GORETE FERREIRA MARTINS" AS nome_mae_fac, TO_TIMESTAMP("01/12/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROBSON SILVA PEREIRA" AS nome_completo_faccionado, "REGINA DAS GRACAS BATISTA PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("29/12/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODNEI CARLOS SORIA" AS nome_completo_faccionado, "MARIA APARECIDA SORIA" AS nome_mae_fac, TO_TIMESTAMP("19/01/1970", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODOLFO ALVES RODRIGUES" AS nome_completo_faccionado, "LUZIA REGINA ALVES RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("15/02/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODOLFO ASSIS GIANVECHIO" AS nome_completo_faccionado, "TEREZINHA ASSIS GIANVECHIO" AS nome_mae_fac, TO_TIMESTAMP("13/07/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODRIGO ADELINO" AS nome_completo_faccionado, "ROZEMARIA ADELINO" AS nome_mae_fac, TO_TIMESTAMP("26/06/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODRIGO ALAN DE JESUS" AS nome_completo_faccionado, "ANA CLAUDIA ANGELO" AS nome_mae_fac, TO_TIMESTAMP("20/05/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODRIGO APARECIDO ALVES" AS nome_completo_faccionado, "SILVIA APARECIDA ALVES" AS nome_mae_fac, TO_TIMESTAMP("27/06/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODRIGO AVELINO FIGUEIREDO" AS nome_completo_faccionado, "MARIA AVELINA DOS SANTOS FIGUEIREDO" AS nome_mae_fac, TO_TIMESTAMP("05/09/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODRIGO DANIEL FAVARO" AS nome_completo_faccionado, "MARIA APARECIDA PEDREIRA FAVARO" AS nome_mae_fac, TO_TIMESTAMP("12/11/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODRIGO DE ARAUJO" AS nome_completo_faccionado, "ANA REGINA DE SALES ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("24/10/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODRIGO DE OLIVEIRA GOMES" AS nome_completo_faccionado, "MARGARIDA MARIA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("22/08/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODRIGO FERNANDO DE ARAUJO" AS nome_completo_faccionado, "JOANA DARC OLIVEIRA ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("09/03/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODRIGO JUNIOR GONCALVES NOGUEIRA" AS nome_completo_faccionado, "PENHA APARECIDA GONCALVES NOGUEIRA" AS nome_mae_fac, TO_TIMESTAMP("20/05/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODRIGO LUIZ DOS SANTOS" AS nome_completo_faccionado, "ARACY DE SOUZA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("29/01/1972", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODRIGO MOREIRA DA PAIXAO" AS nome_completo_faccionado, "DIONEA APARECIDA MOREIRA DA PAIXAO" AS nome_mae_fac, TO_TIMESTAMP("07/04/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODRIGO RAMALLETE MAIO" AS nome_completo_faccionado, "ELIZETE RAMALHETE MAIO" AS nome_mae_fac, TO_TIMESTAMP("29/12/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODRIGO SANTOS DE JESUS " AS nome_completo_faccionado, "MARIA LUCIA PAIXAO SANTOS" AS nome_mae_fac, TO_TIMESTAMP("01/09/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODRIGO SOUSA DOS SANTOS SOARES" AS nome_completo_faccionado, "GENI SOUSA FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("24/05/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODRIGO VIEIRA MAZONI" AS nome_completo_faccionado, "MARIA STELLA VIEIRA MAZONI" AS nome_mae_fac, TO_TIMESTAMP("21/12/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROGER PEREIRA MOIZINHO" AS nome_completo_faccionado, "SEVERINA MARIA PEREIRA MOIZINHO" AS nome_mae_fac, TO_TIMESTAMP("29/12/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROGERIO ANDRADE SOUTO" AS nome_completo_faccionado, "MARIA APARECIDA SOUTO" AS nome_mae_fac, TO_TIMESTAMP("01/05/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROGERIO BARRETO DA SILVA" AS nome_completo_faccionado, "RUTE DA SILVA PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("26/11/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROGERIO BATISTA LEITE" AS nome_completo_faccionado, "ROSA MARIA LEITE" AS nome_mae_fac, TO_TIMESTAMP("04/05/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROGERIO DA SILVA VIEIRA" AS nome_completo_faccionado, "MARIA DA SILVA VIEIRA" AS nome_mae_fac, TO_TIMESTAMP("29/10/1955", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROGERIO DE ANDRADE" AS nome_completo_faccionado, "MARIA GERUZA DE ANDRADE" AS nome_mae_fac, TO_TIMESTAMP("21/02/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROGERIO DE MELO RODRIGUES" AS nome_completo_faccionado, "MARIA DAS GRACAS DE MELO GOUVEA" AS nome_mae_fac, TO_TIMESTAMP("12/06/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROGERIO EURIPEDES RODRIGUES BORGES" AS nome_completo_faccionado, "ELIZABETH DAS GRACAS BORGES" AS nome_mae_fac, TO_TIMESTAMP("10/06/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROGERIO FERNANDES DA SILVA" AS nome_completo_faccionado, "ANA FERNANDES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("28/08/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROGERIO FERREREZ ROCHA" AS nome_completo_faccionado, "JUNIA FERREREZ DO VALLE ROCHA" AS nome_mae_fac, TO_TIMESTAMP("04/06/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROGERIO SILVA VIEIRA" AS nome_completo_faccionado, "ROSELY VIANA SILVA" AS nome_mae_fac, TO_TIMESTAMP("09/09/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROGERIO ZIVIANI" AS nome_completo_faccionado, "ROSANGELA SOARES ZIVIANI" AS nome_mae_fac, TO_TIMESTAMP("05/09/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROMARIO DE SOUZA ARAUJO " AS nome_completo_faccionado, "EDINALVA GONCALVES DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("07/10/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROMILSON CANDIDO MUNIZ" AS nome_completo_faccionado, "SUELY CANDIDA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("25/05/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROMILSON SOARES CAMPOS" AS nome_completo_faccionado, "ERMINIA SOARES CAMPOS" AS nome_mae_fac, TO_TIMESTAMP("19/08/1967", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROMULO DOS SANTOS DOMINGUES" AS nome_completo_faccionado, "MARIA DE LOURDES EVANGELISTA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("21/12/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROMULO RODRIGUES" AS nome_completo_faccionado, "IOLANDA FERREIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("30/04/1964", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RONALDO ADRIANO PINHEIRO" AS nome_completo_faccionado, "MARIA APARECIDA PINHEIRO" AS nome_mae_fac, TO_TIMESTAMP("27/06/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RONALDO SIMAO DO NASCIMENTO" AS nome_completo_faccionado, "ADEUCINA MARIA DO NASCIMENTO SIMAO" AS nome_mae_fac, TO_TIMESTAMP("21/04/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RONALTY IRAN ROSA LESSA" AS nome_completo_faccionado, "HELENA ROSA DE AQUINO" AS nome_mae_fac, TO_TIMESTAMP("21/07/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RONAN GOMES PEREIRA DE ALCANTARA" AS nome_completo_faccionado, "ALVINA PEREIRA DE ALCANTARA" AS nome_mae_fac, TO_TIMESTAMP("27/07/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RONER DONIZETE PEREIRA" AS nome_completo_faccionado, "LUZIA CAETANO PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("15/11/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RONIN SOUTO PACHECO" AS nome_completo_faccionado, "ELZA MONTEIRO PACHECO" AS nome_mae_fac, TO_TIMESTAMP("05/06/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RONNY CARLOS DE SOUSA MARCAL" AS nome_completo_faccionado, "MARILDA MARIANO DE SOUSA" AS nome_mae_fac, TO_TIMESTAMP("28/07/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROSANGELA PEIXOTO DE SOUZA" AS nome_completo_faccionado, "MARIA DA CONCEICAO SOUZA" AS nome_mae_fac, TO_TIMESTAMP("21/04/1961", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RUAN HENRIQUE SILVA DE GUSMAO" AS nome_completo_faccionado, "MARIA APARECIDA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("10/05/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RUBENS WESLEY RODRIGUES" AS nome_completo_faccionado, "CIRLENE VIEIRA" AS nome_mae_fac, TO_TIMESTAMP("07/04/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SABIANO APARECIDO DA COSTA" AS nome_completo_faccionado, "DIVINA APPARECIDA COSTA" AS nome_mae_fac, TO_TIMESTAMP("10/09/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SALVADOR APARECIDO MARTINS" AS nome_completo_faccionado, "VICTA APARECIDA MARTINS" AS nome_mae_fac, TO_TIMESTAMP("28/12/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SAMUEL APARECIDO VIRGINIO" AS nome_completo_faccionado, "MARIA APARECIDA COSTA VIRGINIO" AS nome_mae_fac, TO_TIMESTAMP("03/07/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SAMUEL FRANCISCO SEVERINO DE SOUZA" AS nome_completo_faccionado, "ANDREA JOSE SEVERINO" AS nome_mae_fac, TO_TIMESTAMP("27/07/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SAMUEL JULIO DOS SANTOS" AS nome_completo_faccionado, "LUZIA CELIA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("02/07/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SANDRA OTENIO DOS SANTOS" AS nome_completo_faccionado, "LUZIA OTENIO DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("26/03/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SANMAUR CUSTODIO DA SILVA" AS nome_completo_faccionado, "SANDRA LUIZA SEGATTO SILVA" AS nome_mae_fac, TO_TIMESTAMP("14/03/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SCHUMACHER CAVALCANTE FEITOSA" AS nome_completo_faccionado, "ROSIENE CAVALCANTE DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("19/01/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SEBASTIAO DIEGO GARCIA FERREIRA" AS nome_completo_faccionado, "MARLENE GARCIA DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("02/04/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SEBASTIAO MARCIANO" AS nome_completo_faccionado, "MARIA CONCEBIDA FERNANDES MARCIANO" AS nome_mae_fac, TO_TIMESTAMP("30/04/1973", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SEBASTIAO RODRIGUES DOS SANTOS" AS nome_completo_faccionado, "MARIA RODRIGUES DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("20/06/1964", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SEBASTIAO VITOR" AS nome_completo_faccionado, "LUZIA ANTONIA " AS nome_mae_fac, TO_TIMESTAMP("08/11/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SERGIO ANTONIO PEDROSO" AS nome_completo_faccionado, "BENEDITA CLEUSA PEDROSO" AS nome_mae_fac, TO_TIMESTAMP("01/12/1972", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SERGIO FRANCISCO DA SILVA" AS nome_completo_faccionado, "MARIA DE LOURDES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("01/10/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SERGIO HENRIQUE CANASSA" AS nome_completo_faccionado, "SILVANA DE FATIMA TEIXEIRA CANASSA" AS nome_mae_fac, TO_TIMESTAMP("10/08/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SERGIO HENRIQUE DE LIMA OLIVEIRA" AS nome_completo_faccionado, "SILVANIA DE SOUZA LIMA OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("08/08/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SERGIO HENRIQUE SEMOLINI" AS nome_completo_faccionado, "ANA SOARES SEMOLINI" AS nome_mae_fac, TO_TIMESTAMP("14/09/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SERGIO LUIZ DE FRANCA GALVAO" AS nome_completo_faccionado, "RAIMUNDA FERREIRA GALVAO" AS nome_mae_fac, TO_TIMESTAMP("06/08/1969", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SERGIO RICARDO MARTILIO DE SOUZA" AS nome_completo_faccionado, "SHEILA MARIA MARTILIO DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("24/02/1963", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SHIRLOMAR RODRIGUES" AS nome_completo_faccionado, "NILZA DOLORES DE FREITAS" AS nome_mae_fac, TO_TIMESTAMP("06/08/1971", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SIDNEI RODRIGUES MOREIRA" AS nome_completo_faccionado, "LAURENTINA RODRIGUES MOREIRA" AS nome_mae_fac, TO_TIMESTAMP("23/05/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SIDNEY APARECIDO DA SILVA " AS nome_completo_faccionado, "CARMEM LUCIA PEREIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("30/03/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SIDNEY EMIDIO DA SILVA" AS nome_completo_faccionado, "IVANILDA EMIDIO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("28/01/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SILAS ANASTACIO GOMES" AS nome_completo_faccionado, "MARIA DAS DORES GOMES" AS nome_mae_fac, TO_TIMESTAMP("02/07/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SILAS CANDIDO DE MORAIS" AS nome_completo_faccionado, "MARIA LUZIA SILVA MORAIS" AS nome_mae_fac, TO_TIMESTAMP("16/04/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SILAS PEREIRA DA SILVA" AS nome_completo_faccionado, "APARECIDA DO CARMO CHIMENES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("30/01/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SILVIO CESAR LOPES" AS nome_completo_faccionado, "ANGELA MARIA DE JESUS LOPES" AS nome_mae_fac, TO_TIMESTAMP("08/05/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SILVIO FAZZION NETO JUNIOR" AS nome_completo_faccionado, "LUCIANA ANGELICA DE DEUS" AS nome_mae_fac, TO_TIMESTAMP("04/08/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SILVIO ROBERTO PONTES DA SILVA" AS nome_completo_faccionado, "ELVIRA PONTES" AS nome_mae_fac, TO_TIMESTAMP("19/12/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SIMONE MACARIO DOS SANTOS" AS nome_completo_faccionado, "CIPRIANA MACARIO DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("13/07/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SINDER SILVA DE ALMEIDA" AS nome_completo_faccionado, "MARIA APARECIDA DE JESUS DE ALMEIDA" AS nome_mae_fac, TO_TIMESTAMP("22/05/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SINDERLEI NOBREGA DE LIMA" AS nome_completo_faccionado, "NEIDE MARISA DE LIMA" AS nome_mae_fac, TO_TIMESTAMP("03/06/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SONIA RODRIGUES LEMOS" AS nome_completo_faccionado, "NAIR CANDIDA LEMOS" AS nome_mae_fac, TO_TIMESTAMP("14/04/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "STENIO ALEXANDRE SOUZA" AS nome_completo_faccionado, "MARIA APARECIDA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("31/05/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TADEU JOSE ROCHA SANTOS" AS nome_completo_faccionado, "REJANE ROCHA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("28/06/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TAINAN FARIA DE LIMA" AS nome_completo_faccionado, "MARLUCIA DE FARIA LIMA" AS nome_mae_fac, TO_TIMESTAMP("15/09/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TAMIRES DE LOURDES CARVALHO" AS nome_completo_faccionado, "MARTA MARIA DA COSTA SILVA" AS nome_mae_fac, TO_TIMESTAMP("19/07/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TAMIRIS ARTUANI PETRIM" AS nome_completo_faccionado, "FATIMA APARECIDA PRESSATO PETRIM" AS nome_mae_fac, TO_TIMESTAMP("20/05/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TARCISIO ERICLES IZAIAS DA SILVA" AS nome_completo_faccionado, "LUCIMARA VIEIRA IZAIAS" AS nome_mae_fac, TO_TIMESTAMP("19/08/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TARCISIO SILVEIRA CARDOSO" AS nome_completo_faccionado, "SUELY LOURDES CARDOSO" AS nome_mae_fac, TO_TIMESTAMP("25/10/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TARLEI BORGES DE SOUZA" AS nome_completo_faccionado, "IVALDA MARIA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("02/01/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TATIANE OLIVEIRA GERMANO SILVA" AS nome_completo_faccionado, "MARIA HELENA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("03/05/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TAYLOR FERNANDO DE OLIVEIRA" AS nome_completo_faccionado, "CELIA LUCIA DE OLIVEIRA ROSA" AS nome_mae_fac, TO_TIMESTAMP("27/06/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TELCIO DA SILVA CLEMENTE" AS nome_completo_faccionado, "TELMA APARECIDA DA SILVA CLEMENTE" AS nome_mae_fac, TO_TIMESTAMP("03/12/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THALES DE ARAUJO" AS nome_completo_faccionado, "MAISA ALVES ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("26/11/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THALES FERREIRA RODRIGUES" AS nome_completo_faccionado, "IVONE FERREIRA RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("09/08/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THALES HENRIQUE ALVES DA SILVA" AS nome_completo_faccionado, "RITA DE CASSIA ALVES FERREIRA SILVA" AS nome_mae_fac, TO_TIMESTAMP("23/02/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THALES ROBERTO CAETANO DOS SANTOS" AS nome_completo_faccionado, "CESARINA BENEDITA CAETANO DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("31/08/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THALIA VIVIANE SILVA CARVALHO" AS nome_completo_faccionado, "RENATA MOREIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("09/04/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THALLES HENRIQUE DE FREITAS" AS nome_completo_faccionado, "ROSANGELA APARECIDA DE FREITAS" AS nome_mae_fac, TO_TIMESTAMP("16/01/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THIAGO ALVES DA COSTA " AS nome_completo_faccionado, "ANA MARIA ALVES DA COSTA" AS nome_mae_fac, TO_TIMESTAMP("23/06/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THIAGO APARECIDO RIBEIRO" AS nome_completo_faccionado, "LUZIA AMARIO RIBEIRO" AS nome_mae_fac, TO_TIMESTAMP("06/10/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THIAGO AVERALDO BORGES" AS nome_completo_faccionado, "GIOVANNA APARECIDA DE SOUSA" AS nome_mae_fac, TO_TIMESTAMP("06/02/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THIAGO BALBINO BEZERRA" AS nome_completo_faccionado, "MARIA CLAUDIA BALBINO" AS nome_mae_fac, TO_TIMESTAMP("05/10/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THIAGO CARVALHO BARBOSA" AS nome_completo_faccionado, "NILMA CARVALHO BARBOSA" AS nome_mae_fac, TO_TIMESTAMP("29/06/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THIAGO CORDEIRO COELHO" AS nome_completo_faccionado, "WALKIRIA APARECIDA CORDEIRO COELHO" AS nome_mae_fac, TO_TIMESTAMP("25/08/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THIAGO DA SILVA MORAIS" AS nome_completo_faccionado, "JAQUELINE VIEIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("03/07/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THIAGO LIMA DE ARAUJO" AS nome_completo_faccionado, "ADRIANA DO CARMO LIMA DE ARAUJO " AS nome_mae_fac, TO_TIMESTAMP("23/08/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THIAGO MARTINS DE OLIVEIRA" AS nome_completo_faccionado, "HELIENE WANIA SENA MARTINS" AS nome_mae_fac, TO_TIMESTAMP("29/08/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THIAGO OLIVEIRA SILVA" AS nome_completo_faccionado, "JOANA DARC DE PAULA SILVA" AS nome_mae_fac, TO_TIMESTAMP("04/05/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THIAGO PEIXOTO DA SILVA FERREIRA" AS nome_completo_faccionado, "EDNA PEIXOTO DE SOUZA FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("16/06/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THIAGO PEREIRA CAIXETA" AS nome_completo_faccionado, "MARIA APARECIDA PEREIRA CAIXETA" AS nome_mae_fac, TO_TIMESTAMP("15/02/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THIALES FERREIRA TAVARES" AS nome_completo_faccionado, "TEREZINHA DE FATIMA FERREIRA TAVARES" AS nome_mae_fac, TO_TIMESTAMP("09/01/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THOMAS GARCIA DE SOUZA TOBIAS" AS nome_completo_faccionado, "SILVANA GARCIA DE SOUZA TOBIAS" AS nome_mae_fac, TO_TIMESTAMP("04/12/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THURIARLEY SOARES DA SILVA" AS nome_completo_faccionado, "EDNA MARIA SOARES DE AS" AS nome_mae_fac, TO_TIMESTAMP("23/10/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TIAGO ALVES FERREIRA" AS nome_completo_faccionado, "MARIA DE LOURDES ALVES FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("07/07/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TIAGO AZEVEDO" AS nome_completo_faccionado, "ODETE FATIMA DE CASTRO AZEVEDO" AS nome_mae_fac, TO_TIMESTAMP("30/01/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TIAGO COSTA SANTOS" AS nome_completo_faccionado, "DIVANIR GONCALVES COSTA" AS nome_mae_fac, TO_TIMESTAMP("23/07/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TIAGO EUSTAQUIO BATISTA" AS nome_completo_faccionado, "MARIA DA CONCEICAO DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("15/10/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TIAGO HENRIQUE DO CARMO" AS nome_completo_faccionado, "LINDA MAURA DO CARMO" AS nome_mae_fac, TO_TIMESTAMP("18/08/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TIAGO LUIZ BENTO BOLETTA" AS nome_completo_faccionado, "APARECIDA DE CASSIA BENTO BOLETTA" AS nome_mae_fac, TO_TIMESTAMP("13/12/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TIAGO NASCIMENTO ALVES" AS nome_completo_faccionado, "APARECIDA DOS REIS NASCIMENTO ALVES" AS nome_mae_fac, TO_TIMESTAMP("13/04/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TIAGO OLIVEIRA DA SILVA " AS nome_completo_faccionado, "DIVINA MARIA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("02/08/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TIAGO RAMON SILVA" AS nome_completo_faccionado, "FATIMA APARECIDA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("04/02/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TIAGO XAVIER RODRIGUES" AS nome_completo_faccionado, "LILANDE ROSA RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("14/02/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TOMAS FELIPE PAULINO SILVA" AS nome_completo_faccionado, "DARCI APARECIDA CARDOSO" AS nome_mae_fac, TO_TIMESTAMP("29/07/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TOME SOUZA ANDRADE" AS nome_completo_faccionado, "MARIA DE FATIMA SOUZA" AS nome_mae_fac, TO_TIMESTAMP("22/02/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TONI CIRILO DA SILVA" AS nome_completo_faccionado, "GERCINA APARECIDA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("26/04/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TULIO AFONSO DOS SANTOS" AS nome_completo_faccionado, "MARIA APARECIDA DE CARVALHO" AS nome_mae_fac, TO_TIMESTAMP("26/11/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TUNIS ROGERIO NAPOLITANA ZACHARIAS" AS nome_completo_faccionado, "ROSA JACINTA NAPOLITANA" AS nome_mae_fac, TO_TIMESTAMP("07/06/1971", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "UARLEI MUNIZ" AS nome_completo_faccionado, "MARIA DE FATIMA PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("27/08/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "UEIDSON ROBERTO SILVA" AS nome_completo_faccionado, "JORDELINA FRANCISCA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("21/01/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "UEVERTON LOZAN SILVA" AS nome_completo_faccionado, "MADALENA LOZAN" AS nome_mae_fac, TO_TIMESTAMP("04/06/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "UILLIAN FONTES SANTOS" AS nome_completo_faccionado, "MARIA LUCIA FONTES SANTOS" AS nome_mae_fac, TO_TIMESTAMP("03/12/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "UILTON FERREIRA LEITE" AS nome_completo_faccionado, "ANTONIA PEREIRA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("16/12/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ULIELSA MARIA DA SILVA" AS nome_completo_faccionado, "MARIA SANTANA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("22/04/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VAGNER DA SILVA" AS nome_completo_faccionado, "TEREZA RAIMUNDO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("27/10/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VAGNER DE OLIVEIRA NUNES" AS nome_completo_faccionado, "NATALICE DE OLIVEIRA NUNES" AS nome_mae_fac, TO_TIMESTAMP("15/03/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VALDECI MARTINS" AS nome_completo_faccionado, "ISABEL DE JESUS COELHO MARTINS" AS nome_mae_fac, TO_TIMESTAMP("18/11/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VALDEIR DONIZETE DIAS" AS nome_completo_faccionado, "LUZIA PAULINO DIAS" AS nome_mae_fac, TO_TIMESTAMP("14/12/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VALDEIR GONCALVES DUTRA" AS nome_completo_faccionado, "EVA GONCALVES DUTRA" AS nome_mae_fac, TO_TIMESTAMP("15/10/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VALDEMICK JULIO LEAL DA SILVA" AS nome_completo_faccionado, "MARIA DE FATIMA LEAL DA SIVA" AS nome_mae_fac, TO_TIMESTAMP("25/09/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VALDENIR GOMES SCHULTZ " AS nome_completo_faccionado, "ALEIDA GOMES SCHULTZ" AS nome_mae_fac, TO_TIMESTAMP("09/09/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VALDINEI AMARAL DOS SANTOS" AS nome_completo_faccionado, "NICEIA FERREIERA AMARAL" AS nome_mae_fac, TO_TIMESTAMP("22/09/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VALDINEI CARVALHO FERREIRA" AS nome_completo_faccionado, "VANIA DE CARVALHO RIBEIRO" AS nome_mae_fac, TO_TIMESTAMP("04/11/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VALDINEI OLIVEIRA DE SOUZA" AS nome_completo_faccionado, "LINDAURA DOS SANTOS OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("01/12/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VALDIR AFRANIO DE JESUS" AS nome_completo_faccionado, "CECILIA GERMANDINA DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("10/10/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VALDIR JIKSON RODRIGUES DA SILVA" AS nome_completo_faccionado, "ANASTACIA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("03/10/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VALDUIR DE MORAIS BORBA" AS nome_completo_faccionado, "DIVINA DA CONCEICAO MORAIS" AS nome_mae_fac, TO_TIMESTAMP("09/01/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VALMIR FERREIRA" AS nome_completo_faccionado, "INES DE OLIVEIRA FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("02/01/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VALQUIRIA FREITA DA SILVA" AS nome_completo_faccionado, "SUZE COSTA FREITA" AS nome_mae_fac, TO_TIMESTAMP("11/07/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VALTER DOS SANTOS CARVALHO" AS nome_completo_faccionado, "LUCIA DOS SANTOS CARVALHO" AS nome_mae_fac, TO_TIMESTAMP("11/04/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VALTER VILLAS BOAS JUNIOR" AS nome_completo_faccionado, "TEREZA DOMINGOS" AS nome_mae_fac, TO_TIMESTAMP("24/04/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VANDER EUSTAQUIO APARECIDO" AS nome_completo_faccionado, "EDNA ROSA APARECIDA" AS nome_mae_fac, TO_TIMESTAMP("16/01/1973", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VANDERLEI APARECIDO DA SILVA" AS nome_completo_faccionado, "GESSI ARCHANJO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("29/09/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VANDERLEY INACIO COUTINHO" AS nome_completo_faccionado, "MARLENE INACIO" AS nome_mae_fac, TO_TIMESTAMP("15/01/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VANDERSON BELO DA SILVA" AS nome_completo_faccionado, "MARIA JOSE BELO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("06/11/1971", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VANDIR FLORENCIO" AS nome_completo_faccionado, "ANA GONCALVES" AS nome_mae_fac, TO_TIMESTAMP("09/08/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VANER RIBEIRO DE CASTRO" AS nome_completo_faccionado, "MARIA AUXILIADORA DOS SANTOS RIBEIRO" AS nome_mae_fac, TO_TIMESTAMP("05/04/1971", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VANESSA FERNANDES DA SILVA" AS nome_completo_faccionado, "NADIA FERNANDES DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("04/07/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VANIL CLAUDINEI CLEMENTE" AS nome_completo_faccionado, "AGRIMARA SEBASTIANA CLEMENTE" AS nome_mae_fac, TO_TIMESTAMP("13/01/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VELTON PEREIRA SANDER" AS nome_completo_faccionado, "VIRGINIA PEREIRA DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("12/04/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VELTUIR PEREIRA DA SILVA FILHO" AS nome_completo_faccionado, "EMY MARIA DA CRUZ SILVA" AS nome_mae_fac, TO_TIMESTAMP("07/06/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VERDI GERMANO FERREIRA" AS nome_completo_faccionado, "VANILDE BISPO SANTOS" AS nome_mae_fac, TO_TIMESTAMP("22/01/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VERUSKA APARECIDA SANTOS PRATA" AS nome_completo_faccionado, "MEIRELUCE DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("09/07/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VICTOR HUGO DE ABREU SOTERO" AS nome_completo_faccionado, "SANDRA APARECIDA DE ABREU SOTERO" AS nome_mae_fac, TO_TIMESTAMP("22/10/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VICTOR RICARDO OLIVEIRA DE SOUZA" AS nome_completo_faccionado, "LUCIMAR OLIVEIRA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("04/07/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VINICIO GOMES DE SANTANA" AS nome_completo_faccionado, "NILZA MARIA GOMES DE SANTANA" AS nome_mae_fac, TO_TIMESTAMP("30/04/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VINICIUS LEONARDO DA SILVA" AS nome_completo_faccionado, "VILMA LUCIA LEAL SILVA" AS nome_mae_fac, TO_TIMESTAMP("21/03/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VITOR ALVES MACHADO" AS nome_completo_faccionado, "MARIA APARECIDA ALVES MACHADO" AS nome_mae_fac, TO_TIMESTAMP("28/06/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VITOR CANDIDO DE MOURA" AS nome_completo_faccionado, "SILVANA MARIA DE JESUS MOURA" AS nome_mae_fac, TO_TIMESTAMP("28/04/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VITOR HENRIQUE OLIVEIRA" AS nome_completo_faccionado, "ELIANE APARECIDA OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("24/06/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VIVIANE LOPES DA SILVA" AS nome_completo_faccionado, "IRACI MEDEIROS DE FARIAS" AS nome_mae_fac, TO_TIMESTAMP("21/06/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VLADIMIR ROSA BRITO" AS nome_completo_faccionado, "MARIA JOSE ROSA" AS nome_mae_fac, TO_TIMESTAMP("06/09/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WAGNER LOPES" AS nome_completo_faccionado, "APARECIDA LUSTRE LOPES" AS nome_mae_fac, TO_TIMESTAMP("09/09/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WAGNER MENDES" AS nome_completo_faccionado, "ANA DIAS MENDES" AS nome_mae_fac, TO_TIMESTAMP("24/04/1972", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WAGNER PASSOS PEREIRA" AS nome_completo_faccionado, "INACIA DOS SANTOS PASSOS" AS nome_mae_fac, TO_TIMESTAMP("21/07/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WALDEIR CORREIA DE SOUZA" AS nome_completo_faccionado, "EDNEIA SANTOS CORREIA" AS nome_mae_fac, TO_TIMESTAMP("26/07/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WALDERI LUCIO SILVA" AS nome_completo_faccionado, "MARIA TEREZINHA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("08/08/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WALDIR FERNANDES HIPOLITO" AS nome_completo_faccionado, "SORAIA APARECIDA FERNANDES" AS nome_mae_fac, TO_TIMESTAMP("24/11/1999", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WALISSON DA SILVA SANTANA" AS nome_completo_faccionado, "ROSANGELA APARECIDA SANTANA DOMINGOS" AS nome_mae_fac, TO_TIMESTAMP("11/09/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WALLACE EDUARDO ORQUIZA DE OLIVEIRA" AS nome_completo_faccionado, "MARCIA REGINA ORQUIZA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("05/05/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WALLACE JESUS COSTA" AS nome_completo_faccionado, "CELIA APARECIDA SILVA COSTA" AS nome_mae_fac, TO_TIMESTAMP("09/06/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WALNEIR PEREIRA DE CARVALHO JUNIOR" AS nome_completo_faccionado, "CLEUSA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("14/11/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WALTER DOS SANTOS FERREIRA" AS nome_completo_faccionado, "LEOCADIA DOS SANTOS FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("06/08/1951", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WALTER DOS SANTOS GONZALEZ" AS nome_completo_faccionado, "ADELAIDE DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("02/10/1967", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WANDERLEI SANTOS ALVES" AS nome_completo_faccionado, "MARIA DOS SANTOS ALVES" AS nome_mae_fac, TO_TIMESTAMP("01/09/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WANDERNIZ DE OLIVEIRA JUNIOR" AS nome_completo_faccionado, "ELISANGELA FERREIRA QUERINO" AS nome_mae_fac, TO_TIMESTAMP("14/03/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WANDERSON ABREU PEREIRA GUIMARAES" AS nome_completo_faccionado, "ZULEICA ABREU PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("15/02/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WANDERSON ANTONIO DA SILVA" AS nome_completo_faccionado, "ANA CLAUDIA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("06/01/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WANDERSON FERREIRA DA SILVA COSTA" AS nome_completo_faccionado, "SONIA DE FATIMA FERREIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("29/06/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WANDERSON LIMA DE OLIVEIRA " AS nome_completo_faccionado, "DIVINA ROSA DE LIMA OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("20/12/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WANDERSON RODRIGUES ROSA" AS nome_completo_faccionado, "LUCIA DE FATIMA RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("15/08/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WARLEN FERNANDO ALVES DE ASSIS" AS nome_completo_faccionado, "GENI DE ASSIS NASCIMENTO" AS nome_mae_fac, TO_TIMESTAMP("21/10/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WARLEY ANTONIO DE CASTRO" AS nome_completo_faccionado, "DALVA EUSTAQUIO DE CASTRO" AS nome_mae_fac, TO_TIMESTAMP("14/05/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WARLEY DE OLIVEIRA TEIXEIRA" AS nome_completo_faccionado, "MARCIA NATALICIA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("30/10/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WARLEY RODRIGUES" AS nome_completo_faccionado, "LUZENIR RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("08/05/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WARLEY RODRIGUES DOS SANTOS" AS nome_completo_faccionado, "ROSANGELA RODRIGUES VELHO" AS nome_mae_fac, TO_TIMESTAMP("03/07/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WASHINGTON AMERICO DE CASTRO" AS nome_completo_faccionado, "JOSIANA MARIA DA COSTA" AS nome_mae_fac, TO_TIMESTAMP("14/06/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WASHINGTON CRISLEY ALVES SANTOS" AS nome_completo_faccionado, "VANUZA ALVES DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("07/08/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WASHINGTON WILIAN VENANCIO DA SILVA" AS nome_completo_faccionado, "RITA DE CASSIA VENANCIO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("29/01/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WEBERSON RICHARD CORREA SILVA" AS nome_completo_faccionado, "REGINA CELIA CORREA" AS nome_mae_fac, TO_TIMESTAMP("15/08/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WEBERT BRITO DE CASTRO" AS nome_completo_faccionado, "ROSA CARLA DE BRITO CASTRO" AS nome_mae_fac, TO_TIMESTAMP("09/08/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WEDER JOSE DE FREITAS" AS nome_completo_faccionado, "DONIZETE APARECIDA DE FREITAS" AS nome_mae_fac, TO_TIMESTAMP("23/01/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WELDER GARCIA LIMA" AS nome_completo_faccionado, "ELIZABETH GARCIA LIMA" AS nome_mae_fac, TO_TIMESTAMP("31/05/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WELINGTON ANDRE DA SILVA" AS nome_completo_faccionado, "ODEIR ANDRE DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("12/06/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WELINGTON CARVALHO DOS SANTOS JUNIOR" AS nome_completo_faccionado, "CREONICE DIAS DE CARVALHO" AS nome_mae_fac, TO_TIMESTAMP("15/06/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WELINGTON DONIZETH DO CARMO" AS nome_completo_faccionado, "REGIANE MARIA DO CARMO" AS nome_mae_fac, TO_TIMESTAMP("12/08/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WELINGTON FELICIANO LOPES DA SILVA" AS nome_completo_faccionado, "IRENE DIONISIO FELICIANO" AS nome_mae_fac, TO_TIMESTAMP("25/07/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WELLINGTON APARECIDO DA SILVA MARTINS" AS nome_completo_faccionado, "ADRIANA MARIA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("05/12/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WELLINGTON DA SILVA SANTOS" AS nome_completo_faccionado, "MARIA GLAUCIA DA SILVA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("09/06/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WELLINGTON DE JESUS VIEIRA" AS nome_completo_faccionado, "ANGELA MARIA DE JESUS MILITAO" AS nome_mae_fac, TO_TIMESTAMP("02/08/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WELLINGTON FERREIRA DA SILVA" AS nome_completo_faccionado, "MARIA DE FATIMA FERREIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("12/01/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WELLINGTON LUIZ ALVES SILVA" AS nome_completo_faccionado, "MARIA VALDA ALVES SILVA" AS nome_mae_fac, TO_TIMESTAMP("10/04/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WELLINGTON RODRIGUES BASTOS" AS nome_completo_faccionado, "ROSELI RODRIGUES BASTOS" AS nome_mae_fac, TO_TIMESTAMP("10/06/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WELLINGTON RODRIGUES DOS SANTOS" AS nome_completo_faccionado, "CARMELITA RODRIGUES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("31/08/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WELTON FORTUNATO" AS nome_completo_faccionado, "MARGARIDA MARIA DOS SANTOS FORTUNATO" AS nome_mae_fac, TO_TIMESTAMP("29/01/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WENDEL GARCIA LIMA" AS nome_completo_faccionado, "ELIZABETH GARCIA LIMA" AS nome_mae_fac, TO_TIMESTAMP("11/04/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WENDEL HENRIQUE DIAS DE OLIVEIRA" AS nome_completo_faccionado, "ELIANA DIAS DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("27/10/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WENDER REGIS COSTA" AS nome_completo_faccionado, "SIRLEI REGIS DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("20/11/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WENDERSON RODRIGUES SOARES" AS nome_completo_faccionado, "MARIA DE LOURDES BARBOSA SOARES" AS nome_mae_fac, TO_TIMESTAMP("13/08/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WENIS DEIVISON MOREIRA CORREA" AS nome_completo_faccionado, "ALAIDE MOREIRA CORREA" AS nome_mae_fac, TO_TIMESTAMP("31/03/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WENISCLEI TADEU DA SILVA" AS nome_completo_faccionado, "NILZA ALICE RAMOS" AS nome_mae_fac, TO_TIMESTAMP("25/11/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WERICSON RICARDO DOS REIS SILVA" AS nome_completo_faccionado, "ROSA HELENA MARIA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("12/10/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WERLEY ALEX DE JESUS" AS nome_completo_faccionado, "APARECIDA MEDALHA DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("31/07/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESLEY CLAUDIO DA SILVA " AS nome_completo_faccionado, "SEBASTIANA CLAUDIA DO ROSARIO SILVA" AS nome_mae_fac, TO_TIMESTAMP("10/01/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESLEY DE JESUS VITORINO" AS nome_completo_faccionado, "MARIANA DE JESUS VITORINO" AS nome_mae_fac, TO_TIMESTAMP("06/03/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESLEY DOMICIANO RODRIGUES" AS nome_completo_faccionado, "CELESTINA DE LOURDES RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("18/08/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESLEY DOS REIS BRITO" AS nome_completo_faccionado, "GLAUCIA IRENE DOS REIS" AS nome_mae_fac, TO_TIMESTAMP("30/04/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESLEY FREITAS OLIVEIRA" AS nome_completo_faccionado, "EDMA DE FREITAS OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("09/05/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESLEY HENRIQUE FERREIRA SANTOS" AS nome_completo_faccionado, "MARIA SINELIA FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("16/11/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESLEY LUIZ EMERENCIANO" AS nome_completo_faccionado, "ELIS CRISTINA DE OLIVEIRA EMERENCIANO" AS nome_mae_fac, TO_TIMESTAMP("10/10/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESLEY MAGNO DE OLIVEIRA" AS nome_completo_faccionado, "VANIA APARECIDA DE FREITAS OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("21/05/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESLEY MARCELINO CINTRA" AS nome_completo_faccionado, "DULCE APARECIDA SILVA MARCELINO CINTRA" AS nome_mae_fac, TO_TIMESTAMP("21/03/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESLEY MARTINS DA COSTA" AS nome_completo_faccionado, "MARIA DE FATIMA MARTINS" AS nome_mae_fac, TO_TIMESTAMP("03/07/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESLEY RODRIGUES LOPES" AS nome_completo_faccionado, "ARLENE FRANCISCA DIAS LOPES" AS nome_mae_fac, TO_TIMESTAMP("01/09/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESLEY ROSA DA COSTA" AS nome_completo_faccionado, "IRACEMA PAULA ROSA DA COSTA" AS nome_mae_fac, TO_TIMESTAMP("03/01/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESLEY TEIXEIRA DA SILVA" AS nome_completo_faccionado, "VANDERLANE CRISTINA TEIXEIRA" AS nome_mae_fac, TO_TIMESTAMP("06/09/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESLEY YAN DA SILVA" AS nome_completo_faccionado, "EDNA CRISTINA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("11/05/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESLLEY APARECIDO ALVES DE SOUZA" AS nome_completo_faccionado, "MARINALVA ALVES DIAS" AS nome_mae_fac, TO_TIMESTAMP("02/05/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESLLEY CRISTIANO DOS SANTOS" AS nome_completo_faccionado, "MARIA RITA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("11/08/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESLLEY GONCALVES DA SILVA" AS nome_completo_faccionado, "VILMA GONCALVES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("04/05/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESLLEY LOURENCO DE MOURA MATIAS" AS nome_completo_faccionado, "CRISTINA MARIA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("18/11/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESLLEY SILVA ALVES" AS nome_completo_faccionado, "MARIA APARECIDA SILVA" AS nome_mae_fac, TO_TIMESTAMP("02/05/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WEVERTON RODOLFO DE MOURA" AS nome_completo_faccionado, "JULIA CLARET MORATO DE MOURA" AS nome_mae_fac, TO_TIMESTAMP("08/01/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WHAGNER RAMALHO BATISTA" AS nome_completo_faccionado, "KEZIA MARIA MENDES RAMALHO" AS nome_mae_fac, TO_TIMESTAMP("01/01/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WHENDER PERIX DE LUCENA" AS nome_completo_faccionado, "ANA MARIA DA SILVA LUCENA" AS nome_mae_fac, TO_TIMESTAMP("23/10/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WILIAN AMORIM DE OLIVEIRA" AS nome_completo_faccionado, "ANA MARIA RODRIGUES DE MORAES" AS nome_mae_fac, TO_TIMESTAMP("07/09/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WILIAN CESAR DE CARVALHO" AS nome_completo_faccionado, "FRANCISCA IZABEL PINHO DE CARVALHO" AS nome_mae_fac, TO_TIMESTAMP("18/01/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WILIAN EVANGELISTA OSWALDO" AS nome_completo_faccionado, "KATIA EVANGELISTA OSWALDO" AS nome_mae_fac, TO_TIMESTAMP("22/10/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WILLIAM AURELIO VIANA DE MELO" AS nome_completo_faccionado, "IRENE VIANA DE MELO" AS nome_mae_fac, TO_TIMESTAMP("19/01/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WILLIAM CAMARGOS DA SILVA FILHO" AS nome_completo_faccionado, "POLIANA OLIVEIRA SILVA CAMARGOS" AS nome_mae_fac, TO_TIMESTAMP("01/04/1999", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WILLIAM DA SILVA OLIVEIRA" AS nome_completo_faccionado, "ELBA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("24/09/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WILLIAM MARCOS DOS SANTOS" AS nome_completo_faccionado, "MARIA DO ROSARIO DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("13/02/1973", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WILLIAN ALMEIDA ROSA" AS nome_completo_faccionado, "CELI DIAS DE ALMEIDA" AS nome_mae_fac, TO_TIMESTAMP("15/02/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WILLIAN ANANIAS DE SOUSA OLIVEIRA" AS nome_completo_faccionado, "APARECIDA ANANIAS DE SOUSA " AS nome_mae_fac, TO_TIMESTAMP("16/07/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WILLIAN DE SOUZA ALMEIDA" AS nome_completo_faccionado, "ALESSANDRA LUZIA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("14/08/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WILLIAN GUILHERME DE PAULO" AS nome_completo_faccionado, "MARIA APARECIDA PAULO" AS nome_mae_fac, TO_TIMESTAMP("01/02/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WILSON DA COSTA CARVALHO" AS nome_completo_faccionado, "MARGARIDA DA COSTA CARVALHO" AS nome_mae_fac, TO_TIMESTAMP("23/08/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WILSON DA SILVA BAHIA" AS nome_completo_faccionado, "IOLANDA DA SILVA MIGUEL BAHIA" AS nome_mae_fac, TO_TIMESTAMP("14/02/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WILTON MODOLO FERREIRA DA SILVA" AS nome_completo_faccionado, "VANIA MODOLO" AS nome_mae_fac, TO_TIMESTAMP("25/01/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WYLLER FRANZ ZACHAR" AS nome_completo_faccionado, "DIVINA APARECIDA DE LIMA" AS nome_mae_fac, TO_TIMESTAMP("31/05/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "YAGO SOARES DE ALMEIDA" AS nome_completo_faccionado, "MARIA DA PENHA SOARES PINHEIRO" AS nome_mae_fac, TO_TIMESTAMP("29/01/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "YCARO RODRIGUES CAETANO PADUA" AS nome_completo_faccionado, "SOPHIA LAURA RODRIGUES MADEIRA" AS nome_mae_fac, TO_TIMESTAMP("23/01/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "YURI PASSOS DE ANDRADE" AS nome_completo_faccionado, "MARIA LUZIA DA SILVA PASSOS ANDRADE" AS nome_mae_fac, TO_TIMESTAMP("25/06/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "YURI RAMOS DE ALMEIDA" AS nome_completo_faccionado, "ESDRIA MACEDO RAMOS" AS nome_mae_fac, TO_TIMESTAMP("13/09/1999", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EVANDO ALVES SIQUEIRA" AS nome_completo_faccionado, "MARIA HELENA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("14/10/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIONE VICTOR PEREIRA DOS SANTOS" AS nome_completo_faccionado, "MARIA IVETE PEREIRA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("04/09/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLAUDIO COUTO CRUZ" AS nome_completo_faccionado, "TARCILA JORGE COUTO" AS nome_mae_fac, TO_TIMESTAMP("27/11/1965", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CASSIO ROCHA MARTINS" AS nome_completo_faccionado, "MARIA DA PENHA LINO ROCHA" AS nome_mae_fac, TO_TIMESTAMP("17/04/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JUNIOR CESAR PEREZ DO AMARAL" AS nome_completo_faccionado, "SANDRA MARTA PEREZ DO AMARAL" AS nome_mae_fac, TO_TIMESTAMP("02/01/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDRE ANTONIO DA SILVA" AS nome_completo_faccionado, "MARLENE DAS DORES SILVA" AS nome_mae_fac, TO_TIMESTAMP("18/11/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODRIGO REZENDE DA SILVA" AS nome_completo_faccionado, "ROSANGELA DE REZENDE" AS nome_mae_fac, TO_TIMESTAMP("26/02/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SILVANO MACHADO DE JESUS" AS nome_completo_faccionado, "MARIA DAS MERCES MACHADO" AS nome_mae_fac, TO_TIMESTAMP("18/07/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIANO GERALDO PEREIRA" AS nome_completo_faccionado, "ELZA MARIA PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("08/08/1973", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HENRIQUE EURIPEDES THEODORO" AS nome_completo_faccionado, "CELINA THEODORO" AS nome_mae_fac, TO_TIMESTAMP("30/10/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALMIR LOPES FERNANDES" AS nome_completo_faccionado, "ZILDA LOPES FERNANDES" AS nome_mae_fac, TO_TIMESTAMP("10/06/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "IAGO ALVES DOS REIS" AS nome_completo_faccionado, "VANIA ALVES DE OLIVEIRA REIS" AS nome_mae_fac, TO_TIMESTAMP("05/07/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS EDUARDO GONCALVES DE SOUZA" AS nome_completo_faccionado, "MARIA LUCIA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("13/07/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DEONILDO GOMES DA SILVA" AS nome_completo_faccionado, "SONI GOMES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("27/06/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WELLINGTON DOS SANTOS VENANCIO" AS nome_completo_faccionado, "CENILCE DELGADO DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("25/08/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADRIANO DE ANDRADE SIQUEIRA" AS nome_completo_faccionado, "LEDIR CARVALHO DE ANDRADE SIQUEIRA" AS nome_mae_fac, TO_TIMESTAMP("14/09/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO RANGEL PICANCO JUNIOR" AS nome_completo_faccionado, "CLARA MARIA RAMOS CRUZ" AS nome_mae_fac, TO_TIMESTAMP("28/10/1972", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FRANCISCO CHARLES CRESPO LEITE" AS nome_completo_faccionado, "JANETTE JANE PESSANHA CRESPO LEITE" AS nome_mae_fac, TO_TIMESTAMP("06/06/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RONALD DE OLIVEIRA ROSA" AS nome_completo_faccionado, "ANA CRISTINA DE OLIVEIRA ROSA" AS nome_mae_fac, TO_TIMESTAMP("17/08/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "OZIEL JUNIO PEIXOTO DA SILVA" AS nome_completo_faccionado, "MARIA TAVARES PEIXOTO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("01/04/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JONATAS NUNES DE BARROS" AS nome_completo_faccionado, "HELOISA HELENA NUNES SOARES DE BARROS" AS nome_mae_fac, TO_TIMESTAMP("10/04/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "UDERLANDE RODRGUES DO CARMO" AS nome_completo_faccionado, "ZILDA RODRIGUES DO CARMO" AS nome_mae_fac, TO_TIMESTAMP("20/07/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCIO SOARES MENDES" AS nome_completo_faccionado, "REGINA CELIA SOARES MENDES" AS nome_mae_fac, TO_TIMESTAMP("23/10/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "UALACE RIBEIRO DA SILVA" AS nome_completo_faccionado, "MARCIA VALERIA RIBEIRO" AS nome_mae_fac, TO_TIMESTAMP("27/05/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "OZANA AZEVEDO DA SILVA" AS nome_completo_faccionado, "ANGELA MARIA AZEVEDO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("21/09/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXANDRE BERNARDO DO ROSARIO" AS nome_completo_faccionado, "MARIZETE BERNARDO DO ROSARIO" AS nome_mae_fac, TO_TIMESTAMP("20/04/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SILAS AUGUSTO RIBEIRO" AS nome_completo_faccionado, "MARIA RIBEIRO MARINHO" AS nome_mae_fac, TO_TIMESTAMP("19/05/2009", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RICARDO ALEXANDRE PEREIRA DE FREITAS" AS nome_completo_faccionado, "ZILDA PEREIRA DE FREITAS" AS nome_mae_fac, TO_TIMESTAMP("15/02/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MATHEUS DE OIVEIRA BRAGA" AS nome_completo_faccionado, "SEM REGISTRO" AS nome_mae_fac, TO_TIMESTAMP("", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALESSANDRO CARDOSO ORLANDO" AS nome_completo_faccionado, "MARIA APARECIDO ORLANDO" AS nome_mae_fac, TO_TIMESTAMP("12/10/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JAIME DE SOUZA COIMBRA JUNIOR" AS nome_completo_faccionado, "MARIA APARECIDA PINTO COIMBRA" AS nome_mae_fac, TO_TIMESTAMP("14/10/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALMIR FELIZARDO" AS nome_completo_faccionado, "MARIA VIEIRA ROMANELLI" AS nome_mae_fac, TO_TIMESTAMP("11/08/1957", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "NELCY DOS SANTOS BARBOSA JUNIOR" AS nome_completo_faccionado, "MARIA CLEIDE DE FREITAS" AS nome_mae_fac, TO_TIMESTAMP("02/02/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADMILSON CORREA ALVES" AS nome_completo_faccionado, "CATARINA OLIVEIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("18/09/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXANDRE MAGNO DE AQUINO SAMPAIO" AS nome_completo_faccionado, "IRANEIDE SILVA DE AQUINO" AS nome_mae_fac, TO_TIMESTAMP("05/12/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEONARDO ALVES PACIRA" AS nome_completo_faccionado, "MARIA HELENA ALVES VIEIRA" AS nome_mae_fac, TO_TIMESTAMP("27/09/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIEL DIAS DE OLIVEIRA" AS nome_completo_faccionado, "NEIDE APARECIDA DIAS OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("24/01/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DAVIDSON RODRIGO FERREIRA" AS nome_completo_faccionado, "SELMA DE LOURDES FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("01/02/1973", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO APARECIDO PEREIRA" AS nome_completo_faccionado, "TEREZINHA MARIA TEODORA PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("01/03/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODRIGO DA SILVA FERREIRA" AS nome_completo_faccionado, "MARIA LUCIA TRAVESSA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("29/03/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MATARAZO MARTINS GODINHO DE CASTRO" AS nome_completo_faccionado, "FRANCISCA MARTINS GODINHO DE CASTRO" AS nome_mae_fac, TO_TIMESTAMP("27/04/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "YURI HENRIQUE SILVA SANTOS" AS nome_completo_faccionado, "SOLANGE DA SILVA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("21/09/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS ROBERTO CARDOSO DA SILVA" AS nome_completo_faccionado, "EVA DEUZY CARDOSO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("21/08/1971", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GEOVANE SIMAO CUSTODIO" AS nome_completo_faccionado, "ZILMAR FRANCISCA DOS SANTOS CUSTODIO" AS nome_mae_fac, TO_TIMESTAMP("20/09/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JONATH GONCALVES ARAUJO VITELLI" AS nome_completo_faccionado, "MARIA DE LOURDES GONCALVES ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("29/03/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS HENRIQUE SILVA" AS nome_completo_faccionado, "MARIA JOSE DE JESUS SILVA" AS nome_mae_fac, TO_TIMESTAMP("22/11/1971", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VANDERSON DA COSTA ESTEVEZ" AS nome_completo_faccionado, "LIDIA DA COSTA PRIMO" AS nome_mae_fac, TO_TIMESTAMP("10/03/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE VALTER RODRIGUES" AS nome_completo_faccionado, "MARIA AUGUSTA RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("12/08/1963", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THIAGO RIBEIRO VON RANDOW" AS nome_completo_faccionado, "ROSANGELA RIBEIRO VON RANDOW" AS nome_mae_fac, TO_TIMESTAMP("24/12/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SIDNEY SOUZA MARTINS DE OLIVEIRA" AS nome_completo_faccionado, "MARIA JULIA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("28/03/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL CARLOS DA SILVA FERREIRA" AS nome_completo_faccionado, "EDNA DA SILVA FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("03/07/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAURICIO DA SILVA FERREIRA " AS nome_completo_faccionado, "EDNA DA SILVA FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("18/03/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO DE SOUZA" AS nome_completo_faccionado, "JACIRA DE SOUZA MOREIRA" AS nome_mae_fac, TO_TIMESTAMP("01/10/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDRE CARRASCOZA" AS nome_completo_faccionado, "MARILENE DE MORAES CARRASCOZA" AS nome_mae_fac, TO_TIMESTAMP("25/12/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS FABIANO HORTA SANTOS" AS nome_completo_faccionado, "MARIA DE LOURDES HORTA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("27/10/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIRECEU LOPES DA SILVA" AS nome_completo_faccionado, "MARIA VIEIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("28/05/1973", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIO DONNERSILVA MARTINS" AS nome_completo_faccionado, "SIMONE ANTONIA DA SILVA MARTINS" AS nome_mae_fac, TO_TIMESTAMP("01/11/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CINTIA VIEIRA DOS SANTOS" AS nome_completo_faccionado, "MARIA MADALENA VIEIRA GALDINHO" AS nome_mae_fac, TO_TIMESTAMP("25/05/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDERSON NUNES FARIA" AS nome_completo_faccionado, "VALDENISIA NUNES FARIA" AS nome_mae_fac, TO_TIMESTAMP("17/02/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIEL DO NASCIMENTO GARCIA" AS nome_completo_faccionado, "AUREA DO NASCIMENTO GARCIA" AS nome_mae_fac, TO_TIMESTAMP("16/09/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDERSON ALVES DOS SANTOS" AS nome_completo_faccionado, "CELEIDA DOS SANTOS ALVES" AS nome_mae_fac, TO_TIMESTAMP("21/05/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEAN CARLOS DOMINGOS DE ANDRADE" AS nome_completo_faccionado, "ELIANA MARA DE ANDRADE" AS nome_mae_fac, TO_TIMESTAMP("10/11/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIANA DIAS GARCIA" AS nome_completo_faccionado, "ANGELA MARIA DIAS" AS nome_mae_fac, TO_TIMESTAMP("01/03/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO ROBERTO ANDRADE DA PAZ" AS nome_completo_faccionado, "MARTA LUCIA NASCIMENTO DA PAZ" AS nome_mae_fac, TO_TIMESTAMP("13/07/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SIDINEI GALDINO DOS SANTOS" AS nome_completo_faccionado, "MARIA MADALENA VIEIRA GALDINHO" AS nome_mae_fac, TO_TIMESTAMP("29/11/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WEVERSON DE OLIVEIRA MARCAL" AS nome_completo_faccionado, "IVA BATISTA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("13/03/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIOGO SILVA AZAMBUJA" AS nome_completo_faccionado, "JOANA DARC SILVA AZAMBUJA" AS nome_mae_fac, TO_TIMESTAMP("23/10/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXANDRE HENRIQUE PEREIRA" AS nome_completo_faccionado, "SANDRA PEREIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("30/07/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TARCISIO FERRAZ DA SILVA" AS nome_completo_faccionado, "MARIA APARECIDA GOMES FERRAZ" AS nome_mae_fac, TO_TIMESTAMP("19/05/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDILSON SANTOS DA SILVA" AS nome_completo_faccionado, "ANESIA FRANCISCA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("22/05/1973", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WELLINGTON SANTOS ROCHA" AS nome_completo_faccionado, "ZIZENE NASCIMENTO SANTOS" AS nome_mae_fac, TO_TIMESTAMP("15/10/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESLEY DE SOUZA PIRES " AS nome_completo_faccionado, "ENI CRISTINA DE SOUZA PIRES" AS nome_mae_fac, TO_TIMESTAMP("01/01/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SAMUEL ALMEIDA DA SILVA" AS nome_completo_faccionado, "FRANCISCA MARIA ALMEIDA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("05/01/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WILDENE TIAGO OLIVEIRA FRANCA" AS nome_completo_faccionado, "MARCIA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("28/08/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RENY AMARAL CASTRO ALVES" AS nome_completo_faccionado, "VANDENISE AMARAL CASTRO ALVES " AS nome_mae_fac, TO_TIMESTAMP("27/08/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SERGIO RENATO FERREIRA" AS nome_completo_faccionado, "MARIA EDITH FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("17/06/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EMERSON BERNARDES DE OLIVEIRA" AS nome_completo_faccionado, "GLEICE BERNARDES DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("22/05/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXIS FERREIRA" AS nome_completo_faccionado, "SUELY REGINA PINHEIRO" AS nome_mae_fac, TO_TIMESTAMP("16/06/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROBSON LIMA DE JESUS" AS nome_completo_faccionado, "EDINETE LIMA" AS nome_mae_fac, TO_TIMESTAMP("15/12/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROBSON WESLEI LUIZ SATIRO DA SILVA" AS nome_completo_faccionado, "IRACI ALVES DE BRITO" AS nome_mae_fac, TO_TIMESTAMP("20/06/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FELIPE MARCOS FERREIRA" AS nome_completo_faccionado, "MARIA VICENTINA" AS nome_mae_fac, TO_TIMESTAMP("15/10/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PATRICK JOSE DE OLIVEIRA" AS nome_completo_faccionado, "MARIA APARECIDA DE MELO" AS nome_mae_fac, TO_TIMESTAMP("06/09/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EMERSON PINHEIRO TORRES" AS nome_completo_faccionado, "ERIDAN RODRIGUES CARVALHO" AS nome_mae_fac, TO_TIMESTAMP("09/02/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DARA LORRAINE RIBEIRO DA ROCHA" AS nome_completo_faccionado, "MIRIAM RIBEIRO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("01/10/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDMILTON DUTRA DE ANDRADE" AS nome_completo_faccionado, "NILDE RODRIGUES DUTRA" AS nome_mae_fac, TO_TIMESTAMP("22/09/1965", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DAVID AUGUSTO SILVA NASCIMENTO" AS nome_completo_faccionado, "REJAINE APARECIDA DA SILVA DO NASCIMENTO" AS nome_mae_fac, TO_TIMESTAMP("25/01/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GISLEI ANDRADE PEREIRA" AS nome_completo_faccionado, "DULCE APARECIDA DE ANDRADE PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("02/12/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "YURI HENRIQUE ALVES FERREIRA " AS nome_completo_faccionado, "ADELITA ALVES FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("21/12/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCIANO FELIPE DE PADUA MARQUES" AS nome_completo_faccionado, "REGINA ANTONIA DE PADUA" AS nome_mae_fac, TO_TIMESTAMP("27/09/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VICTOR DA SILVA SANTOS" AS nome_completo_faccionado, "IARA DELMIDA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("22/06/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROBSON ROBERTO DE SOUZA" AS nome_completo_faccionado, "IDELMA ALVES DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("29/01/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOMINGOS JONAS DA SILVA" AS nome_completo_faccionado, "JOSEFA JUSSARA DA SILVA OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("01/02/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE ROBERTO ROSA DE PAULA FILHO" AS nome_completo_faccionado, "LUCIENE ROSA" AS nome_mae_fac, TO_TIMESTAMP("26/04/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EMANOEL SANTOS LUIZ" AS nome_completo_faccionado, "CLAUDINEIA SANTOS LUIZ" AS nome_mae_fac, TO_TIMESTAMP("11/04/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VITORIA SILVA DE MELO" AS nome_completo_faccionado, "MARIA APARECIDA CARDOSO SILVA" AS nome_mae_fac, TO_TIMESTAMP("11/01/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCIANO PIRES DE OLIVEIRA" AS nome_completo_faccionado, "BENEDITA DE FREITAS" AS nome_mae_fac, TO_TIMESTAMP("28/09/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FERNANDO FIGUEIREDO DA SILVA" AS nome_completo_faccionado, "ADRIANA DE CARVALHO SILVA" AS nome_mae_fac, TO_TIMESTAMP("09/03/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE CARLOS DE OLIVEIRA JUNIOR" AS nome_completo_faccionado, "SONIA LUCIA SOUZA OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("24/04/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SINARA GONCALVES SANTOS" AS nome_completo_faccionado, "FATIMA EDIMEA DO SOCORRO GONCALVES SANTOS" AS nome_mae_fac, TO_TIMESTAMP("13/02/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLEVERSON AMARO DOS SANTOS" AS nome_completo_faccionado, "JOSEFA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("04/12/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FERNANDO APARECIDO DA SILVA" AS nome_completo_faccionado, "PEDRA BEPE" AS nome_mae_fac, TO_TIMESTAMP("30/06/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JAIR GERMANO BISPO" AS nome_completo_faccionado, "CREUSA CECILIA BISPO" AS nome_mae_fac, TO_TIMESTAMP("25/07/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL INACIO" AS nome_completo_faccionado, "ANDREIA ISABEL PIMENTA" AS nome_mae_fac, TO_TIMESTAMP("03/07/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WAGNER HORTENCIO DA ROCHA" AS nome_completo_faccionado, "EURIPEDA HORTENCIA MATOS ROCHA" AS nome_mae_fac, TO_TIMESTAMP("04/08/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDRE MARCOS DE ARAUJO" AS nome_completo_faccionado, "ROSA MARIA DE ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("27/09/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CESAR D KLAUS PINTO DE LIMA" AS nome_completo_faccionado, "MARIA PINTO DE LIMA" AS nome_mae_fac, TO_TIMESTAMP("24/03/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GABRIEL ROGER DUARTE SILVA" AS nome_completo_faccionado, "CLAUDIA ANDREA DUARTE" AS nome_mae_fac, TO_TIMESTAMP("11/10/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIS FILHO SILVA DE SOUZA" AS nome_completo_faccionado, "MARIA SILVA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("18/03/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCOS DE ALMEIDA FERNANDES" AS nome_completo_faccionado, "ADELIA DE ALMEIDA FERNANDES" AS nome_mae_fac, TO_TIMESTAMP("05/02/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FERNANDO FERREIRA LUIZ" AS nome_completo_faccionado, "LUCIA FERREIRA DA CRUZ" AS nome_mae_fac, TO_TIMESTAMP("24/09/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EUGENIO RAIMUNDO COSTA" AS nome_completo_faccionado, "MARIA AMELIA EUGENIO" AS nome_mae_fac, TO_TIMESTAMP("04/12/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDRE LUIS PEREIRA" AS nome_completo_faccionado, "ANA MARIA FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("13/02/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANTONIO FRANCISCO DE OLIVEIRA" AS nome_completo_faccionado, "THEREZINHA DE JESUS OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("02/01/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THAIS FERNANDES SIMOES DA ROCHA" AS nome_completo_faccionado, "NADIA APARECIDA FERNANDES" AS nome_mae_fac, TO_TIMESTAMP("12/11/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS COSTA JUNIOR" AS nome_completo_faccionado, "ROSEANE FREITAS BATISTA" AS nome_mae_fac, TO_TIMESTAMP("06/11/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIEL MENDES MACHADO" AS nome_completo_faccionado, "MARIA ANALIA MENDES MACHADO" AS nome_mae_fac, TO_TIMESTAMP("05/04/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCO AURELIO DOS SANTOS" AS nome_completo_faccionado, "AFALINDIA LOPS RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("21/12/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TIAGO DUARTE DA SILVA" AS nome_completo_faccionado, "LUCIA HELENA DUARTE DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("16/03/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIEGO BEZERRA DA SILVA MOREIRA" AS nome_completo_faccionado, "MARGARET CLEMENTE DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("16/05/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WILSON CAMILO JUNIOR" AS nome_completo_faccionado, "RITA DE CASSIA FIGUEIREDO CAMILO" AS nome_mae_fac, TO_TIMESTAMP("14/11/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODRIGO BERNARDES SILVERIO" AS nome_completo_faccionado, "ROSELENE BERNARDES SILVERIO" AS nome_mae_fac, TO_TIMESTAMP("22/11/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO TEODORO" AS nome_completo_faccionado, "SONIA MARIA TEODORO" AS nome_mae_fac, TO_TIMESTAMP("10/02/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDGARD LUCIO GOULART" AS nome_completo_faccionado, "ROSEMEIRE LUCIO" AS nome_mae_fac, TO_TIMESTAMP("28/01/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIO CARLOS DA SILVA" AS nome_completo_faccionado, "MARIA JOSE DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("03/01/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DALISIO FLORENTINO GONCALVES" AS nome_completo_faccionado, "LUCIA MARIA FLORENTINO" AS nome_mae_fac, TO_TIMESTAMP("05/11/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "AURENILSON MARCIO DE MELO" AS nome_completo_faccionado, "GESSINA RELVA DE MELO" AS nome_mae_fac, TO_TIMESTAMP("20/09/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIEL PINHEIRO ZAQUEU" AS nome_completo_faccionado, "MARIA ANTONIA PINHEIRO ZAQUEU" AS nome_mae_fac, TO_TIMESTAMP("14/03/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "IGOR FERREIRA" AS nome_completo_faccionado, "IZABEL CRISTINA FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("29/06/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAIKON RUBENS FERREIRA" AS nome_completo_faccionado, "REGINA LOURENCO FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("07/12/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO LIMA SOARES" AS nome_completo_faccionado, "MARIA DE LOURDES LIMA" AS nome_mae_fac, TO_TIMESTAMP("23/12/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TIAGO SANTOS DE ALMEIDA" AS nome_completo_faccionado, "ELIS REGINA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("30/11/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "UELTON ABADIO QUIRINO DOS SANTOS" AS nome_completo_faccionado, "DONARIA QUIRINO DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("09/06/1973", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WEVERSON SANTANA DE SOUZA" AS nome_completo_faccionado, "MARLI DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("05/07/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROBERVAL TALAN" AS nome_completo_faccionado, "MARIA APARECIDA TALAN" AS nome_mae_fac, TO_TIMESTAMP("04/05/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO HENRIQUE BRAGA DE OLIVEIRA" AS nome_completo_faccionado, "VALQUIRIA LINO BRAGA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("09/05/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LAZIMAR RODRIGUES DE PAULO" AS nome_completo_faccionado, "ILDA LUCIA RODRIGUES MATIAS" AS nome_mae_fac, TO_TIMESTAMP("23/04/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WEVERTON BRUNO DE SOUZA" AS nome_completo_faccionado, "IRENITA RODRIGUES DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("25/06/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS HENRIQUE TORRES DE MORAIS" AS nome_completo_faccionado, "MARILEY TORRES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("17/07/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VANDENILSON OLIVEIRA DA CRUZ" AS nome_completo_faccionado, "MARIA DA CONCEICAO MINUZ" AS nome_mae_fac, TO_TIMESTAMP("17/02/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIS FELIPE MENDES SOUZA" AS nome_completo_faccionado, "JULIANA SANTANA SILVA" AS nome_mae_fac, TO_TIMESTAMP("25/12/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIEL RIBEIRO DE MENDONCA" AS nome_completo_faccionado, "MARIA RIBEIRO NETO" AS nome_mae_fac, TO_TIMESTAMP("10/02/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WEMERSON MENDONCA BELCHIOR" AS nome_completo_faccionado, "ROSEMAR MENDONCA PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("17/11/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GENILSON VALERIANO DA SILVA" AS nome_completo_faccionado, "MARINETE DA CONCEICAO" AS nome_mae_fac, TO_TIMESTAMP("12/05/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIS CARLOS SANTOS" AS nome_completo_faccionado, "ADINE DE ALMEIDA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("30/01/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS ANTONIO SILVA LOPES" AS nome_completo_faccionado, "NEUZA VENANCIO SILVA" AS nome_mae_fac, TO_TIMESTAMP("19/08/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABRICIO JOSE DOS ANJOS" AS nome_completo_faccionado, "MARIA APARECIDA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("22/07/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FLAVIO JOSE DOS SANTOS" AS nome_completo_faccionado, "CLEANE NASCIMENTO DAS CHAGAS" AS nome_mae_fac, TO_TIMESTAMP("08/12/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUSTAVO CLEMENTE RABELO" AS nome_completo_faccionado, "ANDREIA CLEMENTE TEIXEIRA RABELO" AS nome_mae_fac, TO_TIMESTAMP("30/10/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ODAIR ALVES TEIXEIRA" AS nome_completo_faccionado, "SOLANGE ALVES TEIXEIRA" AS nome_mae_fac, TO_TIMESTAMP("06/02/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEFERSON TIAGO DOS SANTOS" AS nome_completo_faccionado, "JUSELMA TIAGO MENDES" AS nome_mae_fac, TO_TIMESTAMP("27/12/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIZ FERNANDO BENTO" AS nome_completo_faccionado, "CRISTINA APARECIDA ROQUE" AS nome_mae_fac, TO_TIMESTAMP("03/06/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADEMAR FIRMINO DOS SANTOS FILHO" AS nome_completo_faccionado, "VERILDA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("15/12/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDRE RANGEL" AS nome_completo_faccionado, "IVONE SILVA RANGEL" AS nome_mae_fac, TO_TIMESTAMP("30/10/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANTONIO CAMILO GONCALVES NETO" AS nome_completo_faccionado, "ESMERIA DE LIMA RIBEIRO FERRAZ GONCALVES" AS nome_mae_fac, TO_TIMESTAMP("20/11/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANTONIO GARAVELLO NETO" AS nome_completo_faccionado, "CARMELINDA CASTRILHO GARAVELLO" AS nome_mae_fac, TO_TIMESTAMP("16/11/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ARI MANUEL DA SILVA" AS nome_completo_faccionado, "SARA ROSA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("16/10/1962", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ARIEL MONTEIRO RODRIGUES" AS nome_completo_faccionado, "MARINETE MONTEIRO RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("04/09/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRENO GALDINO DE MOURA" AS nome_completo_faccionado, "ALESSANDRA DE FATIMA GALDINO" AS nome_mae_fac, TO_TIMESTAMP("04/11/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLAUDEMIR RODRIGUES DE OLIVEIRA" AS nome_completo_faccionado, "IRACEMA RODRIGUES DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("09/08/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLAUDIO CAMARGO DA SILVA" AS nome_completo_faccionado, "VALDETE DE SOUZA SILVA" AS nome_mae_fac, TO_TIMESTAMP("01/02/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CREMILSON DE MORAIS DIAS" AS nome_completo_faccionado, "JOANA D'ARC DE MORAIS DIAS" AS nome_mae_fac, TO_TIMESTAMP("05/03/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CREONTE DOS SANTOS NOGUEIRA" AS nome_completo_faccionado, "MARIA NEUSA DOS SANTOS NOGUEIRA" AS nome_mae_fac, TO_TIMESTAMP("07/01/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CRISTIANO APARECIDO NICOLAU" AS nome_completo_faccionado, "MARIA APARECIDA NICOLAU" AS nome_mae_fac, TO_TIMESTAMP("04/09/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIELA PEREIRA SANTOS NAVES" AS nome_completo_faccionado, "MARTA REGINA DOS SANTOS NAVES" AS nome_mae_fac, TO_TIMESTAMP("25/02/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANILO DE JESUS LIMA" AS nome_completo_faccionado, "DJANIRA DE JESUS LIMA" AS nome_mae_fac, TO_TIMESTAMP("26/11/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DEIVITH FERNANDES DA SILVA" AS nome_completo_faccionado, "SIRLEY APARECIDA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("10/01/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDSON LUIZ PEREIRA DA SILVA" AS nome_completo_faccionado, "ANA BORO PEREIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("30/03/1964", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDSON MAICON DE LIMA" AS nome_completo_faccionado, "GENI APARECIDA DE LIMA" AS nome_mae_fac, TO_TIMESTAMP("20/09/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIO DE MELO" AS nome_completo_faccionado, "EUCLEUSA MURARO DE MELO" AS nome_mae_fac, TO_TIMESTAMP("27/02/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIO JUNIO MENDES MARTINS DE SOUZA" AS nome_completo_faccionado, "EDMA ALVES MENDES" AS nome_mae_fac, TO_TIMESTAMP("24/12/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FERNANDO FERNANDES DA SILVA" AS nome_completo_faccionado, "LILIANE FERNANDES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("27/05/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FERNANDO PERES" AS nome_completo_faccionado, "TEREZINHA MARIA DE JESUS PERES" AS nome_mae_fac, TO_TIMESTAMP("10/09/1972", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FRANCISCO RANGEL MARTINS" AS nome_completo_faccionado, "NEIDE MARTINS" AS nome_mae_fac, TO_TIMESTAMP("26/12/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FRANCISMAR APARECIDO DOS SANTOS SILVA" AS nome_completo_faccionado, "LUCIA HELENA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("29/05/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GABRIEL CAPOLLI GONCALVES" AS nome_completo_faccionado, "ELAINE COSTA CAPOLLI" AS nome_mae_fac, TO_TIMESTAMP("06/03/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GABRIEL GONZAGA MELO" AS nome_completo_faccionado, "JANAINE MOREIRA GONZAGA MELO" AS nome_mae_fac, TO_TIMESTAMP("30/12/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GIOVANI SILVA" AS nome_completo_faccionado, "MARIA CELINA DA CONCEICAO SILVA" AS nome_mae_fac, TO_TIMESTAMP("13/03/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUILHERME DIAS DE PADUA" AS nome_completo_faccionado, "ELISABETE DIAS DE PADUA" AS nome_mae_fac, TO_TIMESTAMP("14/06/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIO CESAR DELEIGO" AS nome_completo_faccionado, "CLARINDA DELEIGO" AS nome_mae_fac, TO_TIMESTAMP("07/03/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIO NOGUEIRA" AS nome_completo_faccionado, "MARIA APARECIDA NOGUEIRA" AS nome_mae_fac, TO_TIMESTAMP("25/02/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "KENNEDY LUIZ MEIRELES DA SILVA" AS nome_completo_faccionado, "RAIMUNDA MEIRELES MACHADO" AS nome_mae_fac, TO_TIMESTAMP("30/08/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAIKEL SILVA REIS" AS nome_completo_faccionado, "LUZIA HELENA GOMES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("22/06/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO AUGUSTO GONCALVES DE SENA" AS nome_completo_faccionado, "MARIA JOSE CORREA SENA" AS nome_mae_fac, TO_TIMESTAMP("26/03/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCIO GONTIJO DOS REIS" AS nome_completo_faccionado, "DULCINEIA GONTIJO" AS nome_mae_fac, TO_TIMESTAMP("03/05/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCONE ALEXANDRE DOS REIS" AS nome_completo_faccionado, "MARIA SOCORRO ALEXANDRE DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("03/09/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCOS ANTONIO CELANI FILHO" AS nome_completo_faccionado, "GLAUCIA MARIA JOSE CELANI" AS nome_mae_fac, TO_TIMESTAMP("30/03/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCOS ANTONIO GONCALVES DE OLIVEIRA" AS nome_completo_faccionado, "BENDITA LOPES DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("05/09/1966", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAURICIO EDUARDO SANTOS COSTA" AS nome_completo_faccionado, "DIENE DOS SANTOS SILVA" AS nome_mae_fac, TO_TIMESTAMP("23/10/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "OSVALDO PEDRO DA SILVA JUNIOR" AS nome_completo_faccionado, "MARIA JOSE BRUNO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("11/12/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RENATO DONIZETI LOPES" AS nome_completo_faccionado, "ADAIZA APARECIDA LOPES" AS nome_mae_fac, TO_TIMESTAMP("03/10/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RICHARD MATHEUS DE ALMEIDA OLHOZZI" AS nome_completo_faccionado, "LUCIMARA APARECIDA DE ALMEIDA" AS nome_mae_fac, TO_TIMESTAMP("26/03/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SIDNEY DE FREITAS JUNIOR" AS nome_completo_faccionado, "PAULA DE CASTRO FREITAS" AS nome_mae_fac, TO_TIMESTAMP("22/10/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THALES AUGUSTO SILVA DE LIMA" AS nome_completo_faccionado, "BEATRIZ APARECIDA ARTIAGA DA SILVA DE LIMA" AS nome_mae_fac, TO_TIMESTAMP("02/08/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THALES PEREIRA DA SILVA" AS nome_completo_faccionado, "ZELIA MARIA PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("20/02/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THIAGO AUGUSTO DE LIMA GUIMARAES" AS nome_completo_faccionado, "LASARA DE FATIMA LIMA" AS nome_mae_fac, TO_TIMESTAMP("16/08/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THIAGO HENRIQUE CANDIDO DA SILVA" AS nome_completo_faccionado, "DAMARES CRISTINA CANDIDO" AS nome_mae_fac, TO_TIMESTAMP("02/02/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "UANDER RODRIGO FERREIRA MACHADO" AS nome_completo_faccionado, "MARILENE GIL FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("27/04/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "UIRANDIR ANTONIO RODRIGUES" AS nome_completo_faccionado, "MARIA CONCEICAO RIBEIRO" AS nome_mae_fac, TO_TIMESTAMP("01/05/1968", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WALBER FERRAZ DE SOUZA" AS nome_completo_faccionado, "MIVALDETE FERRAZ DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("24/10/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WELINGTON PIRES ALVES" AS nome_completo_faccionado, "IVONE PIRES ALVES" AS nome_mae_fac, TO_TIMESTAMP("02/04/1968", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS ANTONIO DOS SANTOS SILVA" AS nome_completo_faccionado, "ANTONIA MARIA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("05/03/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOIEL TAVARES DA SILVA DANTAS" AS nome_completo_faccionado, "LILIA BARBOSA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("04/03/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LILIANE DA CONCEICAO BARBOSA SILVA" AS nome_completo_faccionado, "MAGALI APARECIDA DA SILVA " AS nome_mae_fac, TO_TIMESTAMP("07/02/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LOURRAINE CRISTINA MOREIRA " AS nome_completo_faccionado, "ROSINEA GONTIJO MOREIRA" AS nome_mae_fac, TO_TIMESTAMP("11/09/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SUZIANE BERNARDO SILVA" AS nome_completo_faccionado, "ZELIA DE FATIMA SILVA" AS nome_mae_fac, TO_TIMESTAMP("08/12/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLISAN BRUNO DA SILVA" AS nome_completo_faccionado, "ADRIANA NATALIA MARTINS" AS nome_mae_fac, TO_TIMESTAMP("19/09/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEFF FILLYP MIRANDA" AS nome_completo_faccionado, "MARIA LIZETH DOS SANTOS MIRANDA" AS nome_mae_fac, TO_TIMESTAMP("02/08/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAURO HENRIQUE SANTOS FURTADO" AS nome_completo_faccionado, "SUELY SANTOS FURTADO" AS nome_mae_fac, TO_TIMESTAMP("12/02/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL FABIANO DA SILVA" AS nome_completo_faccionado, "TERESA REIS FABIANA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("20/06/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SAMUEL VITOR RIBEIRO ANTONIO" AS nome_completo_faccionado, "DELMINDA DA CRUZ RIBEIRO ANTONIO" AS nome_mae_fac, TO_TIMESTAMP("18/07/1999", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FAGNER PEREIRA FERREIRA " AS nome_completo_faccionado, "SHIRLEY PEREIRA PINTO" AS nome_mae_fac, TO_TIMESTAMP("31/12/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDUARDO ANTONIO DA SILVEIRA BRITO" AS nome_completo_faccionado, "CIRLENE MARIA DA SILVEIRA BRITO" AS nome_mae_fac, TO_TIMESTAMP("09/08/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WEBERT FERREIRA DA SILVA" AS nome_completo_faccionado, "FRANCISCA GOMES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("22/05/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOAO EDUARDO BATISTA FERREIRA" AS nome_completo_faccionado, "LACI BATISTA DE ANDRADE" AS nome_mae_fac, TO_TIMESTAMP("06/07/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WELLINGTON THIAGO SIPPEL DA SILVA" AS nome_completo_faccionado, "BETE SOCORRO NOGUEIRA SIPPEL" AS nome_mae_fac, TO_TIMESTAMP("07/07/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "REGINALDO SANTOS DE OLIVEIRA" AS nome_completo_faccionado, "IRACEMA FERREIRA VITOR OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("19/04/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLAUDIO PINTO MENDES" AS nome_completo_faccionado, "GERALDA PINTO MENDES" AS nome_mae_fac, TO_TIMESTAMP("08/07/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDERSON SALES LOPES" AS nome_completo_faccionado, "IVANIRA LOPES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("31/10/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WILLIAM SANTOS DE OLIVEIRA" AS nome_completo_faccionado, "IRACEMA FERREIRA VITOR OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("24/08/2000", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODRIGO SILVA SANTOS" AS nome_completo_faccionado, "SEM REGISTRO" AS nome_mae_fac, TO_TIMESTAMP("", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "UILLIAN SANTOS GUIMARAES" AS nome_completo_faccionado, "SEM REGISTRO" AS nome_mae_fac, TO_TIMESTAMP("", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "IVAGNO SOUZA CORREIA JUNIOR" AS nome_completo_faccionado, "SEM REGISTRO" AS nome_mae_fac, TO_TIMESTAMP("", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ELVES CONCEICAO SILVA" AS nome_completo_faccionado, "SEM REGISTRO" AS nome_mae_fac, TO_TIMESTAMP("", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RICARDO JORGE LAGE" AS nome_completo_faccionado, "ELIABE JORGE LAGE" AS nome_mae_fac, TO_TIMESTAMP("25/12/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JUAREZ VICENTE MORAIS" AS nome_completo_faccionado, "IRACY MORAIS INVENCAO" AS nome_mae_fac, TO_TIMESTAMP("28/05/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JASIANE SILVA TEIXEIRA" AS nome_completo_faccionado, "PATRICIA CARVALHO SILVA" AS nome_mae_fac, TO_TIMESTAMP("19/09/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VENICIO BACELLAR COSTA" AS nome_completo_faccionado, "MARIA AUXILIADORA BACELLAR COSTA" AS nome_mae_fac, TO_TIMESTAMP("28/01/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RICARDO MARTINS BATISTA SANTOS" AS nome_completo_faccionado, "VANIA MARTINS DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("19/06/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADELSON DOS SANTOS MOREIRA RAMO" AS nome_completo_faccionado, "ELISABETE DOS SANTOS MOREIRA RAMO" AS nome_mae_fac, TO_TIMESTAMP("08/09/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALLAN KEYSON REGIS DE SOUSA" AS nome_completo_faccionado, "ELINEIDE MARIA REGIS DE SOUSA" AS nome_mae_fac, TO_TIMESTAMP("28/06/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL ALMEIDA DE JESUS" AS nome_completo_faccionado, "ESTELITA DA CONCEICAO DE ALMEIDA" AS nome_mae_fac, TO_TIMESTAMP("18/08/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEONARDO FERNANDO DOS SANTOS" AS nome_completo_faccionado, "LUCIENE DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("20/04/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLSON SANTANA SANTOS" AS nome_completo_faccionado, "RITA DE CASSIA SANTANA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("08/09/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRENO FERREIRA DA SILVA" AS nome_completo_faccionado, "MARIA ROSANGELA FERREIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("11/04/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SAMUEL PEREIRA GOMES " AS nome_completo_faccionado, "MARIA ZELIA PEREIRA GOMES" AS nome_mae_fac, TO_TIMESTAMP("17/01/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RUI SANTANA COSTA" AS nome_completo_faccionado, "VALDELICE SANTANA COSTA" AS nome_mae_fac, TO_TIMESTAMP("11/06/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PALOMA ALVES DE LIMA" AS nome_completo_faccionado, "IZABEL ALVES DA CRUZ COELHO" AS nome_mae_fac, TO_TIMESTAMP("04/04/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCIANO CANDIDO DE OLIVEIRA" AS nome_completo_faccionado, "ELENA FRANCISCA DE OLIVEIRA " AS nome_mae_fac, TO_TIMESTAMP("09/01/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WALDIR AUGUSTO CAMARGOS" AS nome_completo_faccionado, "ANA ASSIS VIEIRA CAMARGOS" AS nome_mae_fac, TO_TIMESTAMP("27/11/1968", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIOGO GOMES ZACARIAS " AS nome_completo_faccionado, "MARIA GOMES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("21/11/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THIAGO CAVALCANTE DE LIMA" AS nome_completo_faccionado, "MARIA CAVALCANTE" AS nome_mae_fac, TO_TIMESTAMP("04/05/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEQUES COSTA SOUZA" AS nome_completo_faccionado, "JUELITA COSTA SOUZA" AS nome_mae_fac, TO_TIMESTAMP("16/08/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIO CARLOS PEREIRA ROCHA" AS nome_completo_faccionado, "GICELIA FERREIRA DA SILVA ROCHA" AS nome_mae_fac, TO_TIMESTAMP("18/10/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FRANCILENO DE JESUS NUNES" AS nome_completo_faccionado, "ZILENE LAURENCA DE JESUS NETO" AS nome_mae_fac, TO_TIMESTAMP("24/06/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SANDRO SANTOS QUEIROZ" AS nome_completo_faccionado, "NILZA MARIA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("10/06/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WILLIANS ALVES DE SOUSA FILHO" AS nome_completo_faccionado, "ELENITA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("15/11/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JAQUELINE FERREIRA DE SOUZA" AS nome_completo_faccionado, "NEUZA FRANCISCA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("19/03/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE NATIVO FERREIRA DE ALMEIDA FILHO" AS nome_completo_faccionado, "NEUZA FRANCISCA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("30/10/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FRANCLIN DARLING OLIVEIRA LIMA" AS nome_completo_faccionado, "MARIA AUXILIADORA LIMA BATISTA" AS nome_mae_fac, TO_TIMESTAMP("06/05/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RENAN INACIO FERREIRA" AS nome_completo_faccionado, "CLEONICE BASILIA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("04/09/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEONARDO FERNANDES DOS SANTOS" AS nome_completo_faccionado, "NIVONEIDE FERNANDES RODRIGUES DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("02/05/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JONATAN RIBEIRO BARBOSA" AS nome_completo_faccionado, "MARIA DO CARMO AMARAL NASCIMENTO" AS nome_mae_fac, TO_TIMESTAMP("23/11/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RONIVON XAVIER DA SILVA" AS nome_completo_faccionado, "MARIA IEDA XAVIER SANTANA" AS nome_mae_fac, TO_TIMESTAMP("08/01/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GABRIEL FERREIRA CABRAL" AS nome_completo_faccionado, "MARIA DAS NEVES FERREIRA " AS nome_mae_fac, TO_TIMESTAMP("16/01/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "IVO DA SILVA BRITO" AS nome_completo_faccionado, "MARIA DA GLORIA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("23/05/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL LUCIO BERNARDES DA SILVA" AS nome_completo_faccionado, "MARIA LUCIA APARECIDA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("08/04/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SAVIA GOMES DA SILVA" AS nome_completo_faccionado, "ROMILDA DE PAULA GOMES" AS nome_mae_fac, TO_TIMESTAMP("24/09/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TIAGO DE DEUS PEREIRA" AS nome_completo_faccionado, "CLEONICE DE DEUS PEREIRA " AS nome_mae_fac, TO_TIMESTAMP("17/08/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALLAN SIDNEY CAETANO RAMALHO COSTA" AS nome_completo_faccionado, "ANGELA MARIA CAETANO DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("05/10/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS RAYNER BORGES" AS nome_completo_faccionado, "RITA BORGES DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("12/08/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FLAVIO MENDES LISBOA" AS nome_completo_faccionado, "MARINALVA MENDES RAMOS" AS nome_mae_fac, TO_TIMESTAMP("27/05/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO ROBERTO ALVES DE OLIVEIRA" AS nome_completo_faccionado, "NELCI ALVES DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("02/08/1973", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIS CARLOS SANTOS" AS nome_completo_faccionado, "IRANI APARECIDA PERES" AS nome_mae_fac, TO_TIMESTAMP("23/02/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIO CESAR CARDOSO" AS nome_completo_faccionado, "MARIA ALVES CARDOSO" AS nome_mae_fac, TO_TIMESTAMP("12/08/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ISRAEL SILVA MARTINS" AS nome_completo_faccionado, "MARIA DO SOCORRO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("09/10/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FERNANDO MARCOS DA SILVA RIBEIRO" AS nome_completo_faccionado, "MARILENA PEREIRA DA SILVA RIBEIRO" AS nome_mae_fac, TO_TIMESTAMP("05/12/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEX MACHADO" AS nome_completo_faccionado, "RENATA CRISTINA MACHADO DA CONCEICAO" AS nome_mae_fac, TO_TIMESTAMP("25/05/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "AMARO ANTONIO DA SILVA" AS nome_completo_faccionado, "MARIA CREUZA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("16/10/1969", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXANDRE HENRIQUE CEZARIO FONSECA" AS nome_completo_faccionado, "ROSANGELA DE CASSIA CEZARIO" AS nome_mae_fac, TO_TIMESTAMP("07/05/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ARIVALDO TEIXEIRA LELIS" AS nome_completo_faccionado, "NILDA MARIA TEIXEIRA" AS nome_mae_fac, TO_TIMESTAMP("09/10/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CASSIO HENRIQUE REIS ARAUJO" AS nome_completo_faccionado, "ANGEL NATALIA DOS REIS" AS nome_mae_fac, TO_TIMESTAMP("16/02/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLEBER HUMBERTO PIMENTA DE SOUZA BANHOS" AS nome_completo_faccionado, "LECIA PIMENTA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("22/04/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLEYTON DE OLIVEIRA DA SILVA" AS nome_completo_faccionado, "SILVANA MARIA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("13/09/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIL RIBEIRO ROCHA" AS nome_completo_faccionado, "MARIA COSMINA DA SILVA ROCHA CELESTINA" AS nome_mae_fac, TO_TIMESTAMP("12/02/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS ROMAO BALBINO DIAS" AS nome_completo_faccionado, "CLEIDE EUNICE ROMAO" AS nome_mae_fac, TO_TIMESTAMP("03/10/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDNALDO RENE VARAS FILHO" AS nome_completo_faccionado, "EDNA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("13/03/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EVERTON LUIS DE MOURA" AS nome_completo_faccionado, "REGINA CRISTINA BATISTA" AS nome_mae_fac, TO_TIMESTAMP("25/11/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FRANCIS ARAUJO CAMPOS" AS nome_completo_faccionado, "AURORA MARIA CAMPOS" AS nome_mae_fac, TO_TIMESTAMP("20/02/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GILSON FONSECA DA SILVA" AS nome_completo_faccionado, "ANA MARIA DA FONSECA" AS nome_mae_fac, TO_TIMESTAMP("26/03/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUILHERME EDUARDO MORAES BORGES " AS nome_completo_faccionado, "IDELVIRA MARIA MORAES BORGES " AS nome_mae_fac, TO_TIMESTAMP("29/11/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "IVAN PRADO SILVA" AS nome_completo_faccionado, "ENILDA NOGUEIRA PRADO" AS nome_mae_fac, TO_TIMESTAMP("24/12/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JADER ESTEFANE GONCALVES " AS nome_completo_faccionado, "NILZA DE FATIMA DA SILVA GONCALVES " AS nome_mae_fac, TO_TIMESTAMP("17/02/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOAO BATISTA BARROS" AS nome_completo_faccionado, "MARIA DAS DORES BARROS" AS nome_mae_fac, TO_TIMESTAMP("24/07/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOAO PEDRO DA CUNHA PASSOS" AS nome_completo_faccionado, "RITA BERNADETE DA CUNHA" AS nome_mae_fac, TO_TIMESTAMP("26/06/1999", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOAO RAFAEL DO CARMO LEMES" AS nome_completo_faccionado, "SILVANA APARECIDA DO CARMO LEMES" AS nome_mae_fac, TO_TIMESTAMP("17/04/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOCIMAR SANTOS DE JESUS " AS nome_completo_faccionado, "MARLENE SANTOS DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("27/05/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JONATAS EDUARDO BUENO" AS nome_completo_faccionado, "MARIA MARILDA CANDIDO BUENO" AS nome_mae_fac, TO_TIMESTAMP("19/11/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JONATHAN WESLLEY GOMES DE OLIVEIRA " AS nome_completo_faccionado, "REJANE GOMES DE SOUSA" AS nome_mae_fac, TO_TIMESTAMP("20/11/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JORGE PHILIPPE REIS DO NASCIMENTO" AS nome_completo_faccionado, "TEREZINHA MARIA DOS REIS NASCIMENTO" AS nome_mae_fac, TO_TIMESTAMP("06/07/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE PEREIRA JUNIOR" AS nome_completo_faccionado, "REGINA LEITE PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("30/03/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIO CESAR DA SILVA" AS nome_completo_faccionado, "ENEDINA LUCIA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("28/12/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LINDOMAR DIAS ROSA" AS nome_completo_faccionado, "MARIA LUCIA DIAS" AS nome_mae_fac, TO_TIMESTAMP("08/09/1973", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS CESAR FERREIRA" AS nome_completo_faccionado, "SELMA MARTA ROCHA FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("11/10/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS TERRA DE ANDRADE PEREIRA DOS REIS" AS nome_completo_faccionado, "LUCIANA TERRA DE ANDRADE" AS nome_mae_fac, TO_TIMESTAMP("20/11/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIZ FERNANDO MENDONCA" AS nome_completo_faccionado, "CAETANA MENDONCA" AS nome_mae_fac, TO_TIMESTAMP("10/08/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCEL GENESIS DE ALMEIDA" AS nome_completo_faccionado, "SANDRA APARECIDA RUSSO DE ALMEIDA" AS nome_mae_fac, TO_TIMESTAMP("12/09/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO REZENDE" AS nome_completo_faccionado, "ANTONIA LUZIA REZENDE" AS nome_mae_fac, TO_TIMESTAMP("17/04/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCIO JUNIOR DE SOUZA SILVA" AS nome_completo_faccionado, "SONIA APARECIDA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("01/03/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MATEUS AUGUSTO DE OLIVEIRA" AS nome_completo_faccionado, "MARIA APARECIDA DOS SANTOS DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("23/10/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MICHEL FERNANDES BORGES" AS nome_completo_faccionado, "SILVIA HELENA FLORA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("14/03/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "NATANAEL NARCIZO PEREIRA" AS nome_completo_faccionado, "ESDRA ELI MARIA NARCIZO" AS nome_mae_fac, TO_TIMESTAMP("25/02/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODRIGO DE PAULA VIANA" AS nome_completo_faccionado, "CLARISSE APARECIDA VIANA" AS nome_mae_fac, TO_TIMESTAMP("08/05/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODRIGO DONIZETE DE OLIVEIRA" AS nome_completo_faccionado, "PIEDADE DOS SANTOS OLIVEIRA " AS nome_mae_fac, TO_TIMESTAMP("18/02/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODRIGO SCARABELIN GOULART" AS nome_completo_faccionado, "MARIA DAS GRACAS SCARABELIN GOULART" AS nome_mae_fac, TO_TIMESTAMP("27/05/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROGERIO TEIXEIRA DE SOUZA" AS nome_completo_faccionado, "SONIA MARIA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("30/11/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THIAGO BORGES RODRIGUES" AS nome_completo_faccionado, "ANALI FERREIRA BORGES" AS nome_mae_fac, TO_TIMESTAMP("04/08/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THIAGO MELO GONCALVES DA COSTA" AS nome_completo_faccionado, "MARIA DO CARMO DA SILVA MELO" AS nome_mae_fac, TO_TIMESTAMP("16/08/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VANELITON FERNANDES DA SILVA" AS nome_completo_faccionado, "MARIA NIZETE DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("23/03/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WANDERSON BRUNO DE MORAIS" AS nome_completo_faccionado, "ANA CELIA SANTOS DE MORAIS" AS nome_mae_fac, TO_TIMESTAMP("15/08/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WELLINGTON LUIZ CARDOSO" AS nome_completo_faccionado, "ONEIDA DAMASCENA CARDOSO" AS nome_mae_fac, TO_TIMESTAMP("30/09/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESLEY DE ALMEIDA" AS nome_completo_faccionado, "MARIA APARECIDA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("16/06/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESLEY JULIO GERVASIO" AS nome_completo_faccionado, "LAURA IMACULADA SERAFIM GERVASIO" AS nome_mae_fac, TO_TIMESTAMP("29/02/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WILLIAM MARQUES DA SILVA" AS nome_completo_faccionado, "ROSA MARLENE MARQUES DE CARVALHO" AS nome_mae_fac, TO_TIMESTAMP("07/01/1999", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCIO DURVAL DA SILVA" AS nome_completo_faccionado, "CELINA DURVAL SANTOS" AS nome_mae_fac, TO_TIMESTAMP("18/12/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ARNALDO THEODORO DO SOUTO" AS nome_completo_faccionado, "MARIA GERALDA DIAS DO SOUTO" AS nome_mae_fac, TO_TIMESTAMP("27/02/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADELSO ARAUJO DE CASTRO" AS nome_completo_faccionado, "MARIA ARAUJO DE CASTRO" AS nome_mae_fac, TO_TIMESTAMP("31/07/1949", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEONARDO PENA PEREIRA" AS nome_completo_faccionado, "MARCIA PENA PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("01/02/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROGERIO OLIVEIRA DOS SANTOS" AS nome_completo_faccionado, "LUCIMAR DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("19/12/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VANDEIR TAVARES DA SILVA DE LIMA" AS nome_completo_faccionado, "MARIA JOSE TAVARES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("02/11/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FLAVIA ABADIA DE SOUZA" AS nome_completo_faccionado, "NEUZA MARIA DE FATIMA" AS nome_mae_fac, TO_TIMESTAMP("14/09/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FLAVIO AUGUSTO GARCIA DO CARMO" AS nome_completo_faccionado, "ELISABETE APARECIDA GARCIA DO CARMO" AS nome_mae_fac, TO_TIMESTAMP("10/08/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIO HUMBERTO DOS REIS" AS nome_completo_faccionado, "ANA MARIA DOS REIS" AS nome_mae_fac, TO_TIMESTAMP("19/12/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "REINALDO HUMBERTO DE SOUZA JUNIOR" AS nome_completo_faccionado, "IRACEMA ANTUNES BARRETO" AS nome_mae_fac, TO_TIMESTAMP("12/07/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO SERGIO DA SILVA" AS nome_completo_faccionado, "MARIA ABADIA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("08/06/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADILSON CAETANO MOURA" AS nome_completo_faccionado, "MAURA CAETANO BENTO" AS nome_mae_fac, TO_TIMESTAMP("17/07/1973", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOAO BATISTA DE PAULO JESUS" AS nome_completo_faccionado, "RAIMUNDA INACIA DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("08/03/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "NOELMA RUTIENE DE FREITAS" AS nome_completo_faccionado, "JACI CARLOS DE FREITAS" AS nome_mae_fac, TO_TIMESTAMP("03/08/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL FERREIRA LOURENCO" AS nome_completo_faccionado, "MARTA FERREIRA LOURENCO" AS nome_mae_fac, TO_TIMESTAMP("26/06/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RICARDO SOTERO GONCALVES" AS nome_completo_faccionado, "MARIA IMACULADA SOTERO GONCALVES" AS nome_mae_fac, TO_TIMESTAMP("10/12/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THIERES GALDINO MOTA" AS nome_completo_faccionado, "ABADIA DAS DORES MOTA" AS nome_mae_fac, TO_TIMESTAMP("20/12/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO HENRIQUE ASSAIANTE" AS nome_completo_faccionado, "MARIA BADIA DE OLIVEIRA ASSAIANTE" AS nome_mae_fac, TO_TIMESTAMP("20/10/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS RENATO GOMES" AS nome_completo_faccionado, "FATIMA MARIA APARECIDA GOMES" AS nome_mae_fac, TO_TIMESTAMP("20/12/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "REINALDO MARCOS DE OLIVEIRA" AS nome_completo_faccionado, "MARIA DO CARMO APARECIDA CASTRO OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("20/05/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS CANDIDO BUENO" AS nome_completo_faccionado, "CACILDA APARECIDA DA ROSA" AS nome_mae_fac, TO_TIMESTAMP("21/10/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROGERIO DO CARMO FERREIRA" AS nome_completo_faccionado, "CECILIA DO CARMO FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("02/07/1971", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOEL DE MOURA JUNIOR" AS nome_completo_faccionado, "ZELIA MARIA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("15/06/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GABRIEL HENRIQUE FARIA SILVA" AS nome_completo_faccionado, "LEDA APARECIDA DE FARIA SILVA" AS nome_mae_fac, TO_TIMESTAMP("15/08/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DULCILEI REIS DE ALMEIDA" AS nome_completo_faccionado, "MARLI MATEUS DOS REIS" AS nome_mae_fac, TO_TIMESTAMP("13/07/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIO CESAR MARCELINO BESSA" AS nome_completo_faccionado, "CREUZA HELENA MARCELINO DE BESSA" AS nome_mae_fac, TO_TIMESTAMP("11/12/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TEILON MAYCON DA SILVA JESUS " AS nome_completo_faccionado, "ROSANGELA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("20/09/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GABRIEL DA SILVA ALVES" AS nome_completo_faccionado, "MIRISLENE APARECIDA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("11/08/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS DONIZETE JUSSIANI" AS nome_completo_faccionado, "JESUSMARA PAULA JUSSIANI" AS nome_mae_fac, TO_TIMESTAMP("11/05/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FREDERICO BORGES DE OLIVEIRA" AS nome_completo_faccionado, "CLAIR RICARDO BORGES" AS nome_mae_fac, TO_TIMESTAMP("24/07/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEONARDO NADALINI FUNCHAL " AS nome_completo_faccionado, "MARIA DARQUES NADALINI FUNCHAL" AS nome_mae_fac, TO_TIMESTAMP("30/10/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODOLFO EDUARDO RIBEIRO" AS nome_completo_faccionado, "ELZA MARIA DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("01/02/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JESSICA APARECIDA DOS REIS NEVES" AS nome_completo_faccionado, "LUCIENE AUGUSTA DOS REIS" AS nome_mae_fac, TO_TIMESTAMP("14/06/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "KELLY DE PAULA SOARES" AS nome_completo_faccionado, "DINA MARIA SOARES" AS nome_mae_fac, TO_TIMESTAMP("03/08/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FERNANDO ROBERTO VIETO PENARIOL" AS nome_completo_faccionado, "ELAINE VIETO PENARIOL" AS nome_mae_fac, TO_TIMESTAMP("20/06/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCIANO GONZAGA FONSECA DA SILVA" AS nome_completo_faccionado, "MARILDA MARCELINO GONZAGA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("06/09/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAICON PAULO PIRES" AS nome_completo_faccionado, "CRISTINA PULA PIRES" AS nome_mae_fac, TO_TIMESTAMP("09/07/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JHONATHAN LUZIERIO BARBOSA MELO" AS nome_completo_faccionado, "MARILZA BARBOSA MELO" AS nome_mae_fac, TO_TIMESTAMP("23/06/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIEGO DE PAULA PEREIRA" AS nome_completo_faccionado, "VANDERLI APARECIDA DE PAULA PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("03/03/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JAIR ADILSON DO CARMO" AS nome_completo_faccionado, "MARIA APARECIDA DO CARMO" AS nome_mae_fac, TO_TIMESTAMP("25/03/1955", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "NATANAEL GONTIJO LIMA" AS nome_completo_faccionado, "MARLI GONTIJO LIMA" AS nome_mae_fac, TO_TIMESTAMP("30/06/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANTONIO MARCOS RIBEIRO" AS nome_completo_faccionado, "MARIA GERALDA RIBEIRO" AS nome_mae_fac, TO_TIMESTAMP("08/07/1971", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ERIK URBANO SANTOS MOREIRA" AS nome_completo_faccionado, "MAGDA URBANO SANTOS MOREIRA" AS nome_mae_fac, TO_TIMESTAMP("04/05/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEAN CARLOS SANTOS DE LIMA" AS nome_completo_faccionado, "MARIA APARECIDA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("01/06/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUILHERME HENRIQUE RIBEIRO DE MORAES" AS nome_completo_faccionado, "MARIA APARECIDA DE MORAES" AS nome_mae_fac, TO_TIMESTAMP("05/12/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADILSON BARROS DE CARVALHO" AS nome_completo_faccionado, "EUNICE DE SOUSA BARROS" AS nome_mae_fac, TO_TIMESTAMP("07/03/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WELLINGTON MARCELINO RODRIGUES" AS nome_completo_faccionado, "ADRIANA MARCELINO" AS nome_mae_fac, TO_TIMESTAMP("09/06/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDILSON VIDAL DE OLIVEIRA" AS nome_completo_faccionado, "NEIDE VIDAL DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("26/12/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DAVIDSON AMARAL MORAIS" AS nome_completo_faccionado, "ROMILDA CELESTE AMARAL" AS nome_mae_fac, TO_TIMESTAMP("27/12/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DAVID WILLIAM DE OLIVEIRA MARICONE" AS nome_completo_faccionado, "AGUEDA ALVES DE OLIVEIRA " AS nome_mae_fac, TO_TIMESTAMP("07/08/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PONCIANA DE SOUSA OLIVEIRA" AS nome_completo_faccionado, "EUNICE CAETANO DE SOUSA" AS nome_mae_fac, TO_TIMESTAMP("07/03/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDUARDO FERNANDO MACIEL DE JESUS" AS nome_completo_faccionado, "LUCIENE MACIEL" AS nome_mae_fac, TO_TIMESTAMP("09/03/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDMO ANTONIO DA SILVA" AS nome_completo_faccionado, "CONCEICAO APARECIDA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("24/11/1965", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIELA DA SILVA GOMES" AS nome_completo_faccionado, "MARIA BELA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("22/07/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIO ROBERTO XAVIER " AS nome_completo_faccionado, "SONIA MARIA XAVIER" AS nome_mae_fac, TO_TIMESTAMP("09/09/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEX DA PAZ SILVA" AS nome_completo_faccionado, "GILVANEIDE DA PAZ" AS nome_mae_fac, TO_TIMESTAMP("06/06/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EVELYN DA CRUZ LIMA" AS nome_completo_faccionado, "ZILDA MARIA DA CRUZ" AS nome_mae_fac, TO_TIMESTAMP("20/03/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE DA SILVA DIAS JUNIOR" AS nome_completo_faccionado, "MARIA ABADIA DIAS" AS nome_mae_fac, TO_TIMESTAMP("15/03/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GLEISSON FERNANDO DA SILVA MORAIS" AS nome_completo_faccionado, "MARLI MARIA DA SILVA MORAIS" AS nome_mae_fac, TO_TIMESTAMP("18/08/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAURILIO MAXIMILIANO DE OLIVEIRA ARAUJO" AS nome_completo_faccionado, "DINALVA MARIA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("21/11/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VENERALDO QUIEROZ DO PRADO VIEIRA" AS nome_completo_faccionado, "SANDRA APARECIDA DO PRADO" AS nome_mae_fac, TO_TIMESTAMP("11/03/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAMELA DOS SANTOS LIMA" AS nome_completo_faccionado, "VALQUIRIA GOMES DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("11/03/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JUAN HENRIQUE DE SOUSA RAMOS" AS nome_completo_faccionado, "MIRA REGINA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("27/02/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS NOGUEIRA DE DEUS" AS nome_completo_faccionado, "SANDRA HELENA NOGUEIRA" AS nome_mae_fac, TO_TIMESTAMP("18/12/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "OSVALDO FERREIRA LIMA JUNIOR" AS nome_completo_faccionado, "ISMENIA MARY ROSA LIMA" AS nome_mae_fac, TO_TIMESTAMP("06/06/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEX OLIVEIRA DOS SANTOS" AS nome_completo_faccionado, "ALAIR FIRMINO OLIVEIRA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("30/01/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FERNANDA DE OLIVEIRA ARAUJO" AS nome_completo_faccionado, "DINALVA MARIA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("19/01/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RICHARD EMANUEL ALVES" AS nome_completo_faccionado, "ELIANE DE JESUS DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("27/08/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO LIMA DE MORAES" AS nome_completo_faccionado, "MARLENE VICENTE DE LIMA MORAES" AS nome_mae_fac, TO_TIMESTAMP("02/01/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIEGO MIRANDA DA SILVA" AS nome_completo_faccionado, "VALQUIRIA RODRIGUES RAMOS" AS nome_mae_fac, TO_TIMESTAMP("14/06/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAIMUNDA PAULA DA SILVA" AS nome_completo_faccionado, "RAIMUNDA PAULA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("26/04/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JESSICA DA SILVA ARAUJO" AS nome_completo_faccionado, "HEDILAMAR DE FATIMA SILVA ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("30/09/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDIVANIA FERREIRA DOS SANTOS" AS nome_completo_faccionado, "SOLANGE FERREIRA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("30/09/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SANDRA INES DE SOUZA VIEIRA" AS nome_completo_faccionado, "JOANA DE SOUSA VELOSO" AS nome_mae_fac, TO_TIMESTAMP("27/01/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDSON ESTEVES DE ARAUJO" AS nome_completo_faccionado, "ROSEMEIRE ESTEVES" AS nome_mae_fac, TO_TIMESTAMP("29/10/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARINA APARECIDA SILVA DOS REIS" AS nome_completo_faccionado, "MARIA REGINA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("26/02/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO BRUNO SANTOS GUIMARAES" AS nome_completo_faccionado, "SANDRA APARECIDA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("27/06/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLAUDNEY DA SILVA" AS nome_completo_faccionado, "CANDIDA CAMARGO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("14/12/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDSON DAVID DE URZEDO" AS nome_completo_faccionado, "ZORAIDA DE OLIVEIRA URZEDO" AS nome_mae_fac, TO_TIMESTAMP("29/09/1948", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MIRIAM ALVES TERRA" AS nome_completo_faccionado, "ANESIA DOS ANJOS DA SILVA TERRA" AS nome_mae_fac, TO_TIMESTAMP("09/11/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAIRON CESAR DA CUNHA OLIVEIRA" AS nome_completo_faccionado, "LUCIMAR AZEVEDO DA CUNHA OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("07/04/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RENE CAVALCANTE DE ALMEIDA" AS nome_completo_faccionado, "VERA LUCIA CAVALCANTE DE ALMEIDA" AS nome_mae_fac, TO_TIMESTAMP("16/12/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DULCINEU REIS DE ALMEIDA" AS nome_completo_faccionado, "MARLI MATEUS DOS REIS" AS nome_mae_fac, TO_TIMESTAMP("23/03/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCIANO DA SILVA SANTOS" AS nome_completo_faccionado, "MARIA NAZARE DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("04/02/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CHARLES JOHANN BONFIM DE ALMEIDA" AS nome_completo_faccionado, "COSMINA DAMIANA DE ALMEIDA" AS nome_mae_fac, TO_TIMESTAMP("09/07/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARIA DARQUES NADALINI" AS nome_completo_faccionado, "MARIA APARECIDA NADALINI PIO" AS nome_mae_fac, TO_TIMESTAMP("21/11/1962", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WARLON THIERRI DE SOUSA PINTO" AS nome_completo_faccionado, "LUCIMAR DE SOUZA PINTO" AS nome_mae_fac, TO_TIMESTAMP("23/10/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JONATHAN DA SILVA OLIVEIRA" AS nome_completo_faccionado, "JACINTA DA SILVA OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("11/05/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GEOVANE RIBEIRO CRUZ" AS nome_completo_faccionado, "MARIA DO SOCORRO RIBEIRO" AS nome_mae_fac, TO_TIMESTAMP("18/09/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HENRIQUE DE CARVALHO HONORIO" AS nome_completo_faccionado, "DARCI APARECIDA DE CARVALHO HONORIO" AS nome_mae_fac, TO_TIMESTAMP("16/06/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROSANA RODRIGUES DA SILVA NASCIMENTO" AS nome_completo_faccionado, "MARIA DE FATIMA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("24/11/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOYCE BUENO DO CARMO" AS nome_completo_faccionado, "MARIA SIMONE DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("14/02/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALLAN CHRISTIAN DE JESUS" AS nome_completo_faccionado, "ADRIANA APARECIDA SOUSA DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("15/12/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RACHELLE CADAN" AS nome_completo_faccionado, "MARIA CATARINA DE MAGALHAES CADAN" AS nome_mae_fac, TO_TIMESTAMP("27/06/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLEITON OSVALDO FERREIRA" AS nome_completo_faccionado, "IZABEL MARIA FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("25/09/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADERMAN BORDOTTI DE FARIA COSTA" AS nome_completo_faccionado, "EDWIGES BORDOTTI" AS nome_mae_fac, TO_TIMESTAMP("29/09/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO OLIVEIRA DE CARVALHO" AS nome_completo_faccionado, "IRINEIA FRANCISCA DE CARVALHO" AS nome_mae_fac, TO_TIMESTAMP("21/04/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALAN EDSON MARTINS DE SOUZA" AS nome_completo_faccionado, "ANTONIA JANDIRA MARTINS DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("13/11/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEX SANDRO CESAR VICENTE JUNIOR" AS nome_completo_faccionado, "CRISTIANE RAMALHO DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("27/12/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESLEY LUIZ DA SILVA" AS nome_completo_faccionado, "MARIA DE FATIMA SILVA" AS nome_mae_fac, TO_TIMESTAMP("11/12/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WATILA DANIEL GONCALVES DOS SANTOS" AS nome_completo_faccionado, "ANGELITA GONCALVES RAMOS" AS nome_mae_fac, TO_TIMESTAMP("12/06/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCIO SANTIAGO DE LIMA" AS nome_completo_faccionado, "TEREZEZA SANTIAGO DE LIMA" AS nome_mae_fac, TO_TIMESTAMP("05/11/1972", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALOMPETERSON SILVA LIMA" AS nome_completo_faccionado, "ANGELA MARIA DE LIMA" AS nome_mae_fac, TO_TIMESTAMP("21/11/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WALLISSON COSTA VIEIRA" AS nome_completo_faccionado, "GILMARA SANDRA PEREIRA COSTA" AS nome_mae_fac, TO_TIMESTAMP("28/12/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEONARDO MENDES ALVES" AS nome_completo_faccionado, "NIUZETH MENDES ROSA" AS nome_mae_fac, TO_TIMESTAMP("14/03/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS PABLO MOREIRA" AS nome_completo_faccionado, "LUCINEIA MOREIRA SILVA" AS nome_mae_fac, TO_TIMESTAMP("08/11/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO THIAGO ALEXANDRE" AS nome_completo_faccionado, "MARCIA CRISTINA LOPES" AS nome_mae_fac, TO_TIMESTAMP("30/07/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JARBAS MIRANDA MARTINS" AS nome_completo_faccionado, "LUIZA SILVA MARTINS" AS nome_mae_fac, TO_TIMESTAMP("10/10/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FELIPE PAULO DOS SANTOS" AS nome_completo_faccionado, "SOLANGE PAULO SOARES" AS nome_mae_fac, TO_TIMESTAMP("21/12/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOAO VICTOR MENDES RODRIGUES NASCIMENTO" AS nome_completo_faccionado, "REJANE LOPES MENDES RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("20/05/1999", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FRANCOIS HENRIQUE DE PAULA" AS nome_completo_faccionado, "MARIA FATIMA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("22/07/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TONY POOL JEORGE SANTOS DA SILVA" AS nome_completo_faccionado, "ELIETE OLIVEIRA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("11/01/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEFFERSON LEMES MARTINS RODRIGUES" AS nome_completo_faccionado, "APARECIDA MARIA RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("26/09/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HENRIQUE FERNANDES DA SILVA SOUZA" AS nome_completo_faccionado, "NEULMA VITORIA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("07/02/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEFFERSON DIAS MARINHO" AS nome_completo_faccionado, "DEIZA MARIA ROSA DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("31/05/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS SILVERIO BREVES" AS nome_completo_faccionado, "JOANA DARC SILVERIO BREVES" AS nome_mae_fac, TO_TIMESTAMP("10/02/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MICHAEL RODRIGUES DE BABO" AS nome_completo_faccionado, "ROSIMEIRE RODRIGUES DE BABO" AS nome_mae_fac, TO_TIMESTAMP("18/03/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROGERIO DOS SANTOS TELES" AS nome_completo_faccionado, "MARIA RAIMUNDA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("17/03/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "KEOMA WILLIAN ANDRADE DE LIMA" AS nome_completo_faccionado, "MIRIAN ANDRADE SANTANA" AS nome_mae_fac, TO_TIMESTAMP("28/02/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIEGO CORDEIRO GORNI" AS nome_completo_faccionado, "ANA MARIA DO COUTO CORDEIRO GORNI" AS nome_mae_fac, TO_TIMESTAMP("23/12/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL RIBEIRO DA SILVA OVERNEY" AS nome_completo_faccionado, "SELMA DA SILVA BARBOSA" AS nome_mae_fac, TO_TIMESTAMP("20/05/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADAM EDWIM INACIO" AS nome_completo_faccionado, "DALILA PERONI INACIO" AS nome_mae_fac, TO_TIMESTAMP("17/09/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUSTAVO HENRIQUE ALVES ECORELLAS" AS nome_completo_faccionado, "CINTIA ALVES DA SILVEIRA" AS nome_mae_fac, TO_TIMESTAMP("24/10/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO ARAUJO" AS nome_completo_faccionado, "JAQUELINE ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("20/03/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "KINDEMAN GLEIDSON SILVA LEAO" AS nome_completo_faccionado, "MARIA JOSE MACIEL DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("19/09/1999", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GABRIEL DE OLIVEIRA FERREIRA" AS nome_completo_faccionado, "MARIA APARECIDA DE OLIVEIRA FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("07/02/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDIMILSON MACIEL DA SILVA" AS nome_completo_faccionado, "REGINA MACIEL DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("30/06/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "IAGO DE ABREU ALVES" AS nome_completo_faccionado, "LUCIMAR DE ABREU ALVES" AS nome_mae_fac, TO_TIMESTAMP("23/03/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDERTOM ROSA PEREIRA" AS nome_completo_faccionado, "MARIA DE LOURDES ROSA PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("06/04/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIOGO DE SOUZA PINTO" AS nome_completo_faccionado, "MARIA DO CARMO SOUZA PINTO" AS nome_mae_fac, TO_TIMESTAMP("19/03/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LAZARO GONCALVES DE CASTRO NETO" AS nome_completo_faccionado, "SANDRA DE FATIMA GOMES" AS nome_mae_fac, TO_TIMESTAMP("27/07/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WAYMAIER MENEZES FONSECA VIEIRA" AS nome_completo_faccionado, "VANDA MENEZES FONSECA" AS nome_mae_fac, TO_TIMESTAMP("17/08/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "YAGO ANTONIO DE SOUZA" AS nome_completo_faccionado, "MARIA APARECIDA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("09/03/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO FELIPE OLIVEIRA" AS nome_completo_faccionado, "ZENAIDE APARECIDA OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("20/09/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAELA DE SOUZA SILVA" AS nome_completo_faccionado, "ROSILENE DE FATIMA SOUZA SILVA" AS nome_mae_fac, TO_TIMESTAMP("04/04/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIANA DOS SANTOS NERY" AS nome_completo_faccionado, "MARIA APARECIDA PEREIRA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("05/08/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIZ FELIPE SILVA RUFINO" AS nome_completo_faccionado, "VERA APARECIDA JACINTO" AS nome_mae_fac, TO_TIMESTAMP("22/03/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS PEREIRA DOS SANTOS" AS nome_completo_faccionado, "" AS nome_mae_fac, TO_TIMESTAMP("22/03/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUANNA CRISTINA PAIVA ARAUJO" AS nome_completo_faccionado, "VANDA MARIA PAIVA ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("16/01/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EVERSON TEODORO FONSECA" AS nome_completo_faccionado, "IVONETE TEODORO" AS nome_mae_fac, TO_TIMESTAMP("18/05/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROBERTA CARVALHO FIDELIS DE PAULA" AS nome_completo_faccionado, "VERA LUCIA CARVALHO FIDELIS" AS nome_mae_fac, TO_TIMESTAMP("31/12/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE WALBERTO LOPES" AS nome_completo_faccionado, "ANTONIA ALVES DE BRITO" AS nome_mae_fac, TO_TIMESTAMP("27/10/1968", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WELLINGTON PEREIRA CODIGNOLE" AS nome_completo_faccionado, "APARECIDA DE FATIMA PEREIRA CODIGNOLE" AS nome_mae_fac, TO_TIMESTAMP("05/10/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RUI NEVES DE SOUZA" AS nome_completo_faccionado, "OSCARINA DAS NEVES SOUZA" AS nome_mae_fac, TO_TIMESTAMP("08/05/1953", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEX SANDRO LOPES DE OLIVEIRA" AS nome_completo_faccionado, "TEREZINHA MARIA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("08/10/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CASSIANO JOSE MARTINS" AS nome_completo_faccionado, "TEREZA MARIA MARTINS" AS nome_mae_fac, TO_TIMESTAMP("18/09/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIO PEREIRA DOS SANTOS" AS nome_completo_faccionado, "MARIA APARECIDA PEREIRA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("15/06/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BERNARDO DA SILVA" AS nome_completo_faccionado, "MARIA JOSE DA SILVA LEAL" AS nome_mae_fac, TO_TIMESTAMP("03/06/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALINE MARTINS DA SILVA" AS nome_completo_faccionado, "SELMA FLAUZINA MARTINS DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("17/08/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SELMA FLAUZINA MARTINS" AS nome_completo_faccionado, "" AS nome_mae_fac, TO_TIMESTAMP("30/09/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DALMO VIANA DE ALMEIDA JUNIOR" AS nome_completo_faccionado, "ROSA HELENA GONCALVES DE ALMEIDA" AS nome_mae_fac, TO_TIMESTAMP("19/03/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WENDER WETERMAN ANDRADE" AS nome_completo_faccionado, "RITA DE CASSIA ANDRADE" AS nome_mae_fac, TO_TIMESTAMP("22/05/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BENEDITO GONCALVES PORTO" AS nome_completo_faccionado, "IVANDA GONCALVES MARQUES" AS nome_mae_fac, TO_TIMESTAMP("02/03/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARLON BRENDON COELHO COUTO DA SILVA" AS nome_completo_faccionado, "CARMEN LUCIA MACIEL DO COUTO SILVA" AS nome_mae_fac, TO_TIMESTAMP("05/02/1999", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RONALDO FERNANDES DA SILVA" AS nome_completo_faccionado, "MARCILENE XAVIER DA SILVA E SILVA" AS nome_mae_fac, TO_TIMESTAMP("15/02/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEF APARECIDO SILVA LAPA" AS nome_completo_faccionado, "ELEDIVANE SILVA LIMA" AS nome_mae_fac, TO_TIMESTAMP("21/06/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIZ CLAUDIO DE SOUSA FERREIRA" AS nome_completo_faccionado, "APARECIDA SOUSA LIMA" AS nome_mae_fac, TO_TIMESTAMP("26/09/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WELLINGTON SOARES DA CRUZ" AS nome_completo_faccionado, "EUNICE HELENA SOARES DA CRUZ" AS nome_mae_fac, TO_TIMESTAMP("17/11/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RENATO JOSE SILVA ALMEIDA" AS nome_completo_faccionado, "BERENICE DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("20/01/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEFFERSON TADEU COSTA SOUZA VASQUEZ" AS nome_completo_faccionado, "GERALDA IONE COSTA SOUZA" AS nome_mae_fac, TO_TIMESTAMP("15/02/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLEITON DE PAIVA FIRMINO" AS nome_completo_faccionado, "CLAUDIA HELENA DE PAIVA FIRMINO" AS nome_mae_fac, TO_TIMESTAMP("30/03/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RENATO VELOSO DE BRITO" AS nome_completo_faccionado, "VILMA DE SOUSA VELOSO" AS nome_mae_fac, TO_TIMESTAMP("28/12/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TALISSON DAVID MARCIANO" AS nome_completo_faccionado, "ADRIANA DAVID DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("16/04/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WILLIAM ELTON GOMES" AS nome_completo_faccionado, "HILDA DE OLIVEIRA GOMES" AS nome_mae_fac, TO_TIMESTAMP("09/05/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THIAGO DA SILVA CRAVEIRO" AS nome_completo_faccionado, "MARIA DOS REIS DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("09/04/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ERICSON CHRISTOPHER PAIVA" AS nome_completo_faccionado, "REJANE DE FATIMA PAIVA" AS nome_mae_fac, TO_TIMESTAMP("13/07/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WEMERSON FRANCISCO DE PAULA" AS nome_completo_faccionado, "LUCIVANE FRANCISCO" AS nome_mae_fac, TO_TIMESTAMP("26/12/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO TEIXEIRA DE JESUS DA CONCEICAO" AS nome_completo_faccionado, "MARINA TEIXEIRA DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("18/05/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS ELIAS DOS SANTOS" AS nome_completo_faccionado, "CLAUDIA ELIAS DE PAULA" AS nome_mae_fac, TO_TIMESTAMP("14/02/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FELIPE RIBEIRO RODRIGUES" AS nome_completo_faccionado, "MARIA APARECIDA RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("22/10/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JANDER DO CARMO FIRMINO" AS nome_completo_faccionado, "NEUSA APARECIDA DO CARMO" AS nome_mae_fac, TO_TIMESTAMP("23/04/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO LUCIO DA SILVA PAULO" AS nome_completo_faccionado, "MARTA HELENA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("07/03/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JHONATAN DE SOUSA MELO" AS nome_completo_faccionado, "WALESKA BEZERRA DE SOUSA" AS nome_mae_fac, TO_TIMESTAMP("17/03/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO VICTOR D'AVILLA" AS nome_completo_faccionado, "TEREZA DE FATIMA" AS nome_mae_fac, TO_TIMESTAMP("20/06/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDUARDO LUCIO RIBEIRO" AS nome_completo_faccionado, "ELZA RIBEIRO" AS nome_mae_fac, TO_TIMESTAMP("14/08/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO DOS REIS BUGALHO" AS nome_completo_faccionado, "MARIA NILZA FERREIRA BUGALHO" AS nome_mae_fac, TO_TIMESTAMP("24/08/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MATEUS BIONOR DE CAMPOS RIBEIRO" AS nome_completo_faccionado, "SHEILA VANDERLEIA DE CAMPOS" AS nome_mae_fac, TO_TIMESTAMP("22/06/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAYLON LUCAS DA SILVA" AS nome_completo_faccionado, "ANDREIA DOLFINA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("01/04/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL LUIZ PASSOS" AS nome_completo_faccionado, "MARIA LUIZA DE SA " AS nome_mae_fac, TO_TIMESTAMP("11/03/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SILVANO GOMES CARDOSO" AS nome_completo_faccionado, "ELIZABETH CALDEIRA MIRANDA" AS nome_mae_fac, TO_TIMESTAMP("21/08/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TADEU ADRIANO DE SOUZA" AS nome_completo_faccionado, "VICENTINA MARINA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("27/11/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THIAGO ELIEL NUNES" AS nome_completo_faccionado, "CRISTINA APARECIDA DE VILAS BOAS" AS nome_mae_fac, TO_TIMESTAMP("25/11/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TIAGO HENRIQUE FERREIRA" AS nome_completo_faccionado, "GISLEA APARECIDA FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("14/11/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WALCRAIR RIBEIRO DA SILVA" AS nome_completo_faccionado, "MARIA DE LOURDES SILVA" AS nome_mae_fac, TO_TIMESTAMP("23/05/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "OSNEY DE JESUS SENA" AS nome_completo_faccionado, "MARIA NADI DE JESUS SENA" AS nome_mae_fac, TO_TIMESTAMP("25/07/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "IVAN GOMES SILVA FILHO" AS nome_completo_faccionado, "SEM DADOS" AS nome_mae_fac, TO_TIMESTAMP("", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESLEY LUIS NASCIMENTO DA SILVA" AS nome_completo_faccionado, "SEM DADOS" AS nome_mae_fac, TO_TIMESTAMP("", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VITOR RANGEL DE JESUS" AS nome_completo_faccionado, "SEM DADOS" AS nome_mae_fac, TO_TIMESTAMP("", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDUARDO MARTINS ROCHA" AS nome_completo_faccionado, "SEM DADOS" AS nome_mae_fac, TO_TIMESTAMP("", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JACKSON ALCANTARA SENA" AS nome_completo_faccionado, "SEM DADOS" AS nome_mae_fac, TO_TIMESTAMP("", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MICAEL PEREIRA NOVAES" AS nome_completo_faccionado, "SEM DADOS" AS nome_mae_fac, TO_TIMESTAMP("", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUILHERME SOUZA" AS nome_completo_faccionado, "SEM DADOS" AS nome_mae_fac, TO_TIMESTAMP("", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIOGO BARRETO GUERA NETO" AS nome_completo_faccionado, "SEM DADOS" AS nome_mae_fac, TO_TIMESTAMP("", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SANDRO ARAUJO ROMAO" AS nome_completo_faccionado, "VILMA ARAUJO ROMAO" AS nome_mae_fac, TO_TIMESTAMP("09/05/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GABRIEL VITOR EUZEBIO" AS nome_completo_faccionado, "ROSA MARIA EUZEBIO" AS nome_mae_fac, TO_TIMESTAMP("09/04/1999", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIZ FELIPE SILVA" AS nome_completo_faccionado, "LUCIANA DE PASSOS SILVA" AS nome_mae_fac, TO_TIMESTAMP("11/09/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PEDRO HENRIQUE DE FREITAS RIBEIRO" AS nome_completo_faccionado, "ANA PAULA RODRIGUES RIBEIRO" AS nome_mae_fac, TO_TIMESTAMP("03/08/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RONY RODRIGUES PINHEIRO" AS nome_completo_faccionado, "MEIRE LUCIA PINHEIRO RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("26/05/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THIAGO OLIVER BICALHO" AS nome_completo_faccionado, "JANER APARECIDA OLIVER BICALHO" AS nome_mae_fac, TO_TIMESTAMP("10/09/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JETER ALVES DE OLIVEIRA" AS nome_completo_faccionado, "EDNA MARIA JANGADA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("07/02/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCOS ROGERIO BORIM" AS nome_completo_faccionado, "MARIA LUCIA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("17/04/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "IEZA FELIZARDO MARTO" AS nome_completo_faccionado, "LUZIA APARECIDA MARTO" AS nome_mae_fac, TO_TIMESTAMP("26/11/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO MOLINA" AS nome_completo_faccionado, "ILZA DA COSTA MOLINA" AS nome_mae_fac, TO_TIMESTAMP("18/08/1970", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODRIGO DOS SANTOS" AS nome_completo_faccionado, "" AS nome_mae_fac, TO_TIMESTAMP("", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEX ALVES DA SILVA" AS nome_completo_faccionado, "" AS nome_mae_fac, TO_TIMESTAMP("", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GABRIEL PEREIRA PIRES" AS nome_completo_faccionado, "SOLANGE PEREIRA PIRES" AS nome_mae_fac, TO_TIMESTAMP("04/02/2000", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WARLISON REIS SOUSA" AS nome_completo_faccionado, "MARIA DAS GRAÇAS REIS" AS nome_mae_fac, TO_TIMESTAMP("09/11/2001", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WELLINGTON DA SILVA BRAGA" AS nome_completo_faccionado, "NEUZA HELENA DE OLIVEIRA BRAGA" AS nome_mae_fac, TO_TIMESTAMP("06/08/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUILHERME RIBEIRO RODRIGUES" AS nome_completo_faccionado, "MARIA ALZIRA SANTOS RIBEIRO" AS nome_mae_fac, TO_TIMESTAMP("22/11/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO NUNES DOS SANTOS" AS nome_completo_faccionado, "ILZA APARECIDA RODRIGUES SANTOS" AS nome_mae_fac, TO_TIMESTAMP("19/02/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EUDAN HERMANE SILVA CARDOSO" AS nome_completo_faccionado, "VANIA FLORENTINO CARDOSO" AS nome_mae_fac, TO_TIMESTAMP("22/10/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOAO PAULO SILVA FERREIRA" AS nome_completo_faccionado, "MARIA BARBARA SILVA FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("23/07/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOHN LENO DE MOURA SILVERIO" AS nome_completo_faccionado, "CORINA DE MOURA SILVERIO" AS nome_mae_fac, TO_TIMESTAMP("11/12/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSUE DOS SANTOS NEIVA" AS nome_completo_faccionado, "JOANA D'ARC LUIZA DOS SANTOS NEIVA" AS nome_mae_fac, TO_TIMESTAMP("17/09/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIO CESAR RODRIGUES DE SOUZA" AS nome_completo_faccionado, "MARIA VALDETE RODRIGUES DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("04/09/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS DE OLIVEIRA LUIZ MIRANDA DE LELIS" AS nome_completo_faccionado, "VANUZA DE OLIVEIRA LUZ" AS nome_mae_fac, TO_TIMESTAMP("16/05/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THIAGO JONATHAN DA CONCEIÇÃO SILVA" AS nome_completo_faccionado, "MARILDA DA CONCEIÇÃO SILVA" AS nome_mae_fac, TO_TIMESTAMP("30/08/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO ROBERTO DA SILVA TAVEIRA" AS nome_completo_faccionado, "MARIA EURINETE DA CONCEIÇAO SILVA" AS nome_mae_fac, TO_TIMESTAMP("25/11/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RONALDO SILVA ROCHA" AS nome_completo_faccionado, "ROSANGELA SILVA ROCHA" AS nome_mae_fac, TO_TIMESTAMP("09/04/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MANOEL FRANCISCO ANDRADE DOS SANTOS" AS nome_completo_faccionado, "MARIA DA CONCEIÇAO ANDRADE" AS nome_mae_fac, TO_TIMESTAMP("06/08/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VALDEIR BEZERRA DOS SANTOS" AS nome_completo_faccionado, "MARIA JOSE BEZERRA DAS NEVES" AS nome_mae_fac, TO_TIMESTAMP("18/07/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VALDINEI DE PAIVA OLIVEIRA JUNIOR" AS nome_completo_faccionado, "ELISABETE DE OLIVEIRA GUIMARAES" AS nome_mae_fac, TO_TIMESTAMP("24/03/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "REINALDO TEIXEIRA DIAS JUNIOR" AS nome_completo_faccionado, "APARECIDA BATISTA VAZ" AS nome_mae_fac, TO_TIMESTAMP("07/03/1999", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JONATHAN RAFAEL SILVA SANTANA" AS nome_completo_faccionado, "GEORGIA INACIA DA SILVA DUARTE" AS nome_mae_fac, TO_TIMESTAMP("31/03/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "OTAVIO GARCIA DE OLIVEIRA ELIAS" AS nome_completo_faccionado, "ERINALVA GARCIA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("20/05/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCO TULIO FERREIRA" AS nome_completo_faccionado, "MARLENE MARIA DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("20/03/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIS FERNANDO SORGUINI DOS SANTOS" AS nome_completo_faccionado, "MARGARETE SORGUINI" AS nome_mae_fac, TO_TIMESTAMP("10/11/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ERIK LEONARDO OLIVEIRA SILVA" AS nome_completo_faccionado, "MARIA FATIMA DE OLIVEIRA E SILVA" AS nome_mae_fac, TO_TIMESTAMP("30/09/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THAYLOR CANDIDO CARDOSO BORGES" AS nome_completo_faccionado, "EVELIN LOANDA CANDIDA SABINO" AS nome_mae_fac, TO_TIMESTAMP("08/11/2001", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JONATHAN CAMPOS MARÇAL" AS nome_completo_faccionado, "MARTA APARECIDA CAMPOS" AS nome_mae_fac, TO_TIMESTAMP("13/01/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RONDINEI BARBOSA" AS nome_completo_faccionado, "LIDUVINA MARIA BARBOSA" AS nome_mae_fac, TO_TIMESTAMP("04/10/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SAMUEL SOUSA DA SILVA" AS nome_completo_faccionado, "MARIA DA CONCEIÇAO SOUSA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("26/12/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESLLEY BIANCHI MENDONÇA" AS nome_completo_faccionado, "MARIA BERNADETE BIANCHI DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("29/03/1999", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GLAYSSON MIRANDA FARIA" AS nome_completo_faccionado, "VERA LUCIA MIRANDA" AS nome_mae_fac, TO_TIMESTAMP("11/12/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODRIGO EMILIANO DE OLIVEIRA" AS nome_completo_faccionado, "MARIA NATIVIDADE DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("12/09/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ERICK LUIS SILVA CORREA" AS nome_completo_faccionado, "IRACI LOPES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("17/01/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO LEANDRO DE OLIVEIRA" AS nome_completo_faccionado, "MARIA DA PENHA LEANDRO DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("16/06/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELLO RICHARD DE OLIVEIRA" AS nome_completo_faccionado, "GISLAINE FATIMA DOS SANTOS OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("27/11/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCOS ROBERTO DE ALMEIDA" AS nome_completo_faccionado, "" AS nome_mae_fac, TO_TIMESTAMP("", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIEL DE LIMA MARTINS" AS nome_completo_faccionado, "SIMARA LUISA DE LIMA" AS nome_mae_fac, TO_TIMESTAMP("03/07/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "REINALDO DOS REIS DE PAULA" AS nome_completo_faccionado, "MARIA EVA DE PAULA" AS nome_mae_fac, TO_TIMESTAMP("26/01/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIEGO BARROS DE OLIVEIRA" AS nome_completo_faccionado, "JURACY BARROS DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("03/03/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ARTHUR LIMA SIMOES" AS nome_completo_faccionado, "SONIA MARIA SIMOES" AS nome_mae_fac, TO_TIMESTAMP("13/02/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FERNANDO GOMES PATRICIO CONTARIN" AS nome_completo_faccionado, "EDNEIA GOMES PATRICIO CONTARIN" AS nome_mae_fac, TO_TIMESTAMP("29/03/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JANAILMA APARECIDA DIAS DE OLIVEIRA" AS nome_completo_faccionado, "ELIANE DOS SANTOS DIAS" AS nome_mae_fac, TO_TIMESTAMP("12/04/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WILLIAN SIMOES" AS nome_completo_faccionado, "MARIA MARLI SIMOES" AS nome_mae_fac, TO_TIMESTAMP("22/01/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIEL ANTONIO MARCILIO" AS nome_completo_faccionado, "SANDRA BEATRIZ MARCILIO" AS nome_mae_fac, TO_TIMESTAMP("28/11/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "KLEBER AUGUSTO RIBEIRO PEREIRA" AS nome_completo_faccionado, "ANA TERESA RIBEIRO" AS nome_mae_fac, TO_TIMESTAMP("06/04/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALMIR ABRAO ARANA CUNHA NETO" AS nome_completo_faccionado, "ALINE ARANA BASILIO" AS nome_mae_fac, TO_TIMESTAMP("10/05/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANTONIO JORGE BARBOSA" AS nome_completo_faccionado, "IRENE BARBOSA" AS nome_mae_fac, TO_TIMESTAMP("06/10/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIS GUILHERME MORAES" AS nome_completo_faccionado, "MARILZA APARECIDA DE PAIVA" AS nome_mae_fac, TO_TIMESTAMP("07/01/2000", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THALES AUGUSTO DE LIMA FERMINO" AS nome_completo_faccionado, "SHELIA VENANCIO DE LIMA" AS nome_mae_fac, TO_TIMESTAMP("12/10/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROMARIO EVANGELISTA DOS SANTOS" AS nome_completo_faccionado, "ABILIA MARIA ROSA" AS nome_mae_fac, TO_TIMESTAMP("16/11/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GERALDO RUAS DE ABREU JUNIOR" AS nome_completo_faccionado, "MONICA MEDEIROS MAGALHAES" AS nome_mae_fac, TO_TIMESTAMP("14/02/1999", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO FERREIRA DE OLIVEIRA" AS nome_completo_faccionado, "TEREZINHA FERREIRA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("26/02/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ELVIS ROSA SILVA" AS nome_completo_faccionado, "LUCIA HELENA ROSA" AS nome_mae_fac, TO_TIMESTAMP("14/10/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXSANDER SILVA DE LIMA" AS nome_completo_faccionado, "ALESSANDRA LIMA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("06/06/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THIAGO FERNANDES DA CRUZ" AS nome_completo_faccionado, "CRISTINA FERNANDES DA CRUZ" AS nome_mae_fac, TO_TIMESTAMP("18/11/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SEBASTIAO GILBERTO ARAUJO NETO" AS nome_completo_faccionado, "VANIA MARIA DE FREITAS" AS nome_mae_fac, TO_TIMESTAMP("11/09/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODRIGO MOTA CAFRUNE" AS nome_completo_faccionado, "MARIZE MOTA" AS nome_mae_fac, TO_TIMESTAMP("21/05/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROSECLER TORRES SOUZA" AS nome_completo_faccionado, "FRANCISCA DE OLIVEIRA TORRES SOUZA" AS nome_mae_fac, TO_TIMESTAMP("08/01/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARIA NOELLE MARTINS MARCELINI" AS nome_completo_faccionado, "SELMA FLAUZINA MARTINS DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("24/02/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "KAUAN LOPES DA CRUZ" AS nome_completo_faccionado, "LILIAN LOPES FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("24/12/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THESKELEN CAETANO SILVA" AS nome_completo_faccionado, "JULIANA CARLA SILVA" AS nome_mae_fac, TO_TIMESTAMP("11/02/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GILBERTO BATISTA ARAUJO" AS nome_completo_faccionado, "MAURA MARIA ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("13/09/1974", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO DA SILVA FRANCISCO" AS nome_completo_faccionado, "ENI DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("14/01/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GLENAN MESSIAS DE ALMEIDA PEREIRA" AS nome_completo_faccionado, "IZABEL CRISTINA LOUZADA PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("02/01/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCIO BERNARDO DOS SANTOS" AS nome_completo_faccionado, "CATARINA DA LUZ DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("07/07/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALAN PATRIK BARROS DA SILVA" AS nome_completo_faccionado, "LUCI OLIVEIRA BARROS" AS nome_mae_fac, TO_TIMESTAMP("04/09/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JURANDIR SOARES DE MOURA JUNIOR" AS nome_completo_faccionado, "MARIA DA PENHA RODRIGUES MOURA" AS nome_mae_fac, TO_TIMESTAMP("29/05/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WEVERTON DA SILVA ANTONIO" AS nome_completo_faccionado, "CLENICE DA SILVA ANTONIO" AS nome_mae_fac, TO_TIMESTAMP("17/09/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GUSTAVO HENRIQUE TEODORO RAMOS" AS nome_completo_faccionado, "MARIA ISABEL TEODORO" AS nome_mae_fac, TO_TIMESTAMP("24/03/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PATRICK DOS SANTOS DE OLIVEIRA ROSA" AS nome_completo_faccionado, "ELIANE DOS SANTOS DE OLIVEIRA ROSA" AS nome_mae_fac, TO_TIMESTAMP("12/09/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "AXEL PHILLIPE CASTRO E SOUZA" AS nome_completo_faccionado, "PAULA DE CASTRO" AS nome_mae_fac, TO_TIMESTAMP("12/11/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEX VICENTE DE OLIVEIRA FILHO" AS nome_completo_faccionado, "EDILEIA RIBEIRO DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("31/12/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PEDRO HENRIQUE DOS SANTOS" AS nome_completo_faccionado, "LUCIANA PEREIRA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("10/08/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WALCLENES SOUZA LEMES" AS nome_completo_faccionado, "MAURA LUCIA DE SOUSA" AS nome_mae_fac, TO_TIMESTAMP("07/01/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE RODRIGO SANTOS DA SILVA" AS nome_completo_faccionado, "MARIA SALETE SANTOS DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("19/04/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CHRISTOPHER RODRIGUES SANTANA" AS nome_completo_faccionado, "LUCIENE RODRIGUES CHAGAS" AS nome_mae_fac, TO_TIMESTAMP("23/11/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLAUDINEI DE OLIVEIRA RESENDE" AS nome_completo_faccionado, "MARIA APARECIDA DE OLIVEIRA RESENDE" AS nome_mae_fac, TO_TIMESTAMP("15/09/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROBERT DE ALBUQUERQUE" AS nome_completo_faccionado, "HELENICE DE ALBUQUERQUE" AS nome_mae_fac, TO_TIMESTAMP("28/04/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUAN FELIPE MACIEL DE OLIVEIRA" AS nome_completo_faccionado, "JOSELINA GOMES DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("11/01/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TARCISIO APARECIDO CORREA" AS nome_completo_faccionado, "MARIA HELENA DE MELO" AS nome_mae_fac, TO_TIMESTAMP("06/12/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIANO FERREIRA DIAS" AS nome_completo_faccionado, "DALVA FERREIRA DIAS" AS nome_mae_fac, TO_TIMESTAMP("26/07/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MOISE DOS SANTOS SILVA" AS nome_completo_faccionado, "MARIA DE LOURDES DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("10/01/1999", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SEBASTIAO ROSA FERREIRA DA SILVA" AS nome_completo_faccionado, "LAURINDA GOMES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("09/04/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JANIO PIRES DA CRUZ" AS nome_completo_faccionado, "MARGARIDA MARIA DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("03/10/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LAERTE DE PAULA CRUZ NETO" AS nome_completo_faccionado, "MARLENE LOPES DE OLIVEIRA CRUZ" AS nome_mae_fac, TO_TIMESTAMP("30/11/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAPHAEL CARDOSO PIRES" AS nome_completo_faccionado, "RENATA KENYA CARDOSO PIRES" AS nome_mae_fac, TO_TIMESTAMP("04/01/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "YAGO FELIPE DOS SANTOS NOLASCO" AS nome_completo_faccionado, "ELIANE DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("20/09/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MATHEUS SILVA DOS SANTOS" AS nome_completo_faccionado, "ADENIZA SILVA FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("15/08/1999", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAURICIO ARAUJO DOS SANTOS" AS nome_completo_faccionado, "MARIA DE LOURDES ARAUJO DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("15/08/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAYCON AYRES VIEIRA COSTA" AS nome_completo_faccionado, "MARLENE AYRES VIEIRA COSTA" AS nome_mae_fac, TO_TIMESTAMP("07/03/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ODAILSON GOMES DOS SANTOS" AS nome_completo_faccionado, "ELIANA APRECIDA GOMES SANTOS" AS nome_mae_fac, TO_TIMESTAMP("25/11/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL ABREU DANTAS FARIAS" AS nome_completo_faccionado, "RAILENE COSTA DE ABREU DANTAS" AS nome_mae_fac, TO_TIMESTAMP("07/03/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODRIGO ALVES JARDIM" AS nome_completo_faccionado, "CLEUSA ALVES TEREZA JARDIM" AS nome_mae_fac, TO_TIMESTAMP("24/04/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RUBER ANTONIO SANTOS" AS nome_completo_faccionado, "VALCI AFONSO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("15/07/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESLEY ALVES DA SILVA" AS nome_completo_faccionado, "MARCIA HELENA ALVES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("25/02/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PEDRO HENRIQUE DINIZ" AS nome_completo_faccionado, "MARIANA PAULA DINIZ" AS nome_mae_fac, TO_TIMESTAMP("25/03/1999", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DECIO LUIZ MOREIRA" AS nome_completo_faccionado, "VILMA FERREIRA DE ANDRADE MOREIRA" AS nome_mae_fac, TO_TIMESTAMP("26/11/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "REGINALDO BALBINO SOUZA" AS nome_completo_faccionado, "CUSTODIA BALBINA DOS REIS" AS nome_mae_fac, TO_TIMESTAMP("03/10/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "YAGO DOS REIS LACERDA" AS nome_completo_faccionado, "GILDA DOS REIS" AS nome_mae_fac, TO_TIMESTAMP("10/09/1999", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS HENRIQUE DE CARVALHO" AS nome_completo_faccionado, "APARECIDA SILVINO DE CARVALHO" AS nome_mae_fac, TO_TIMESTAMP("22/03/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GEDERSON BATISTA DOS SANTOS" AS nome_completo_faccionado, "IRENY DOS REIS DA SILVA SANTOS" AS nome_mae_fac, TO_TIMESTAMP("02/07/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RAFAEL GABRIEL FRANCISCO DOS SANTOS" AS nome_completo_faccionado, "SILVIA FRANCISCO" AS nome_mae_fac, TO_TIMESTAMP("10/05/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXSSANDRO DOS SANTOS OLIVEIRA" AS nome_completo_faccionado, "ZENAIDE APARECIDA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("01/03/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDNO APARECIDO DA SILVA" AS nome_completo_faccionado, "MARIA DIVINA DA SILVA ONOFRE" AS nome_mae_fac, TO_TIMESTAMP("06/09/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIZ MARCELO SILVA REIS" AS nome_completo_faccionado, "SOLANGE APARECIDA SILVA DOS REIS" AS nome_mae_fac, TO_TIMESTAMP("17/01/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO PEREIRA DA SILVA" AS nome_completo_faccionado, "MARLENE ALVES PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("05/09/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO HENRIQUE NAVI RIBEIRO" AS nome_completo_faccionado, "IVETE NAVI" AS nome_mae_fac, TO_TIMESTAMP("04/08/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JONAS CAMPANHA DA SILVA" AS nome_completo_faccionado, "ANTONIA PATRICIO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("03/03/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIZ HENRIQUE DE OLIVEIRA" AS nome_completo_faccionado, "ROSINEI APARECIDA TRINDADE" AS nome_mae_fac, TO_TIMESTAMP("03/01/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SHAWAN CRISTIANO LAZARO DAS CHAGAS" AS nome_completo_faccionado, "EVA MARIA LAZARO DAS CHAGAS" AS nome_mae_fac, TO_TIMESTAMP("01/05/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAICON PAULO DOS SANTOS" AS nome_completo_faccionado, "MARIA JOSE DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("20/05/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DENIS GOUVEA LINO" AS nome_completo_faccionado, "MARLY DE CASSIA GOUVEA LINO" AS nome_mae_fac, TO_TIMESTAMP("14/04/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCIEL ANANIAS FLAUSINO RIBEIRO" AS nome_completo_faccionado, "ROZANGELA CARVALHO FLAUZINO RIBEIRO" AS nome_mae_fac, TO_TIMESTAMP("06/06/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MILLER MICHAEL DA SILVA" AS nome_completo_faccionado, "JOANA DARC PIMENTA SILVA" AS nome_mae_fac, TO_TIMESTAMP("10/05/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MOISES DA SILVA COELHO BARBOSA" AS nome_completo_faccionado, "MARIA LUCIA COELHO BARBOSA" AS nome_mae_fac, TO_TIMESTAMP("06/12/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOAO PAULO COELHO LOPES" AS nome_completo_faccionado, "CLAUDIA BEATRIZ COELHO LOPES" AS nome_mae_fac, TO_TIMESTAMP("15/09/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GILMAR CUSTODIO DA SILVA" AS nome_completo_faccionado, "HELENA MARIA CUSTODIO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("15/08/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIO DE SOUSA DIAS" AS nome_completo_faccionado, "TEREZA NERES DE SOUSA DIAS" AS nome_mae_fac, TO_TIMESTAMP("19/02/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESKLEY RODRIGUES MENDES" AS nome_completo_faccionado, "ABADIA DAS GRACAS RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("05/01/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GABRIELA ROSA JAGER" AS nome_completo_faccionado, "MARLUZ ROSA DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("27/02/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAXIMILIANO RIBEIRO DA SILVA" AS nome_completo_faccionado, "ANA CLEIDE RIBEIRO DO NASCIMENTO" AS nome_mae_fac, TO_TIMESTAMP("31/12/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WILKER SANTIAGO MANOEL" AS nome_completo_faccionado, "ELEUSA IMERIS MANOEL" AS nome_mae_fac, TO_TIMESTAMP("21/06/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PEDRO DE JESUS JUNQUEIRA" AS nome_completo_faccionado, "MARCY MAZETTO DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("28/04/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO CRISTIANO VASCONCELOS" AS nome_completo_faccionado, "ELIZABETE CRISTINA VASCONCELOS" AS nome_mae_fac, TO_TIMESTAMP("06/09/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ELIAS OLIVEIRA DA SILVA" AS nome_completo_faccionado, "MARIA DA GLORIA OLIVEIRA ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("26/10/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO BARBOSA DE SOUSA" AS nome_completo_faccionado, "GILDA MARIA BARBOSA MACHADO" AS nome_mae_fac, TO_TIMESTAMP("28/11/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DENIS MICHAEL DA SILVA" AS nome_completo_faccionado, "MARIA APARECIDA ALMEIDA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("06/02/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDISON GOULART PRIMO JUNIOR" AS nome_completo_faccionado, "MARLENE CORREA GOULART" AS nome_mae_fac, TO_TIMESTAMP("11/09/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EMERSON ANDREA BENOFFI GAMBAROVA ALMEIDA" AS nome_completo_faccionado, "" AS nome_mae_fac, TO_TIMESTAMP("11/05/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "IGOR DA SILVA COSTA" AS nome_completo_faccionado, "CASSIANA DA SILVA FONSECA" AS nome_mae_fac, TO_TIMESTAMP("07/04/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JONATAN DEMIR DE SOUZA" AS nome_completo_faccionado, "NOEME BATISTA SOUZA" AS nome_mae_fac, TO_TIMESTAMP("29/10/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAICK DE OLIVEIRA" AS nome_completo_faccionado, "MARCIA REGINA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("13/08/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS RODRIGUES DE SOUZA" AS nome_completo_faccionado, "CLEONE RODRIGUES DOS SANTOS SOUZA" AS nome_mae_fac, TO_TIMESTAMP("05/11/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DAVID COSTA COUTO" AS nome_completo_faccionado, "CARMEM COSTA COUTO" AS nome_mae_fac, TO_TIMESTAMP("01/03/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WARLEN CARDOSO DOS SANTOS" AS nome_completo_faccionado, "PATRICIA DEA LIMA NOTA" AS nome_mae_fac, TO_TIMESTAMP("12/05/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAYCON LUCAS DOS SANTOS" AS nome_completo_faccionado, "ERIKA FABIANA GOMES" AS nome_mae_fac, TO_TIMESTAMP("26/07/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FILIPE SOUSA BATISTA" AS nome_completo_faccionado, "KEILA SILVA SOUSA" AS nome_mae_fac, TO_TIMESTAMP("07/07/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RANDER ALVES SANTANNA" AS nome_completo_faccionado, "ELZA ALVES ROCHA SANTANNA" AS nome_mae_fac, TO_TIMESTAMP("14/01/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS JOSE MOREIRA SANTANA" AS nome_completo_faccionado, "SILVANA MOREIRA" AS nome_mae_fac, TO_TIMESTAMP("17/03/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JEFFERSON SILVA DOS REIS" AS nome_completo_faccionado, "MARIA INES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("18/06/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO RICARDO FERREIRA RAMOS" AS nome_completo_faccionado, "PAULINA DA SILVA FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("20/09/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOAQUIM JULIANA DE SOUSA" AS nome_completo_faccionado, "JOANA JULIANA DE SOUSA" AS nome_mae_fac, TO_TIMESTAMP("19/06/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO HENRIQUE DE OLIVEIRA CUNHA (POSSIVEL NOME FALSO)" AS nome_completo_faccionado, "ISABEL ANALIA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("13/10/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDER RANIEL POVA" AS nome_completo_faccionado, "ANA PAULA POVA" AS nome_mae_fac, TO_TIMESTAMP("04/07/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUCE PINHEIRO" AS nome_completo_faccionado, "SANDRA MARA PINHEIRO" AS nome_mae_fac, TO_TIMESTAMP("27/11/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "KENNER ROGER SILVA ORICIO" AS nome_completo_faccionado, "LUCIMAR FERREIRA DA CUNHA SILVA" AS nome_mae_fac, TO_TIMESTAMP("09/10/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADRIANO FRANCISCO NASCIMENTO" AS nome_completo_faccionado, "VERA LUCIA RIBEIRO NASCIMENTO" AS nome_mae_fac, TO_TIMESTAMP("07/09/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GILMAR RODRIGUES DOS SANTOS" AS nome_completo_faccionado, "MARIA VICENTINA DE MORAIS QUIRINO SANTOS" AS nome_mae_fac, TO_TIMESTAMP("31/12/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO MAX ALMEIDA DA SILVA" AS nome_completo_faccionado, "IVONETE ALVES DE ALMEIDA" AS nome_mae_fac, TO_TIMESTAMP("22/03/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TANCREDO FERREIRA DE OLIVEIRA" AS nome_completo_faccionado, "GENETE FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("16/10/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ROBSON LEANDRO MENEZES DA SILVA" AS nome_completo_faccionado, "ELISANGELA MENEZES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("08/10/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DAVID APARECIDO MAGALHAES" AS nome_completo_faccionado, "AFONSINA DE FATIMA MAGALHAES" AS nome_mae_fac, TO_TIMESTAMP("12/09/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CELSO ALVES DA SILVA" AS nome_completo_faccionado, "LAUDENI ALVES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("03/01/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANILO COELHO ROCHA" AS nome_completo_faccionado, "VANIA MARIA COELHO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("06/05/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALESSANDRO COUTO MARTINS" AS nome_completo_faccionado, "ROSANA COUTO LACERDA" AS nome_mae_fac, TO_TIMESTAMP("06/10/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VITOR HUGO DA CRUZ CARVALHO" AS nome_completo_faccionado, "ANGELA HELENA DA CRUZ" AS nome_mae_fac, TO_TIMESTAMP("19/03/1999", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ERIK RIBEIRO DE MIRANDA" AS nome_completo_faccionado, "GISLENE RIBEIRO LIMA" AS nome_mae_fac, TO_TIMESTAMP("03/07/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FABIO GOMES CABRERA" AS nome_completo_faccionado, "DJANIRA GOMES CABRERA" AS nome_mae_fac, TO_TIMESTAMP("24/12/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WESLLEY FRANCIS DA SILVA" AS nome_completo_faccionado, "ARMESINA MARIETA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("12/07/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ADEILSON ELIOTERIO DOS SANTOS" AS nome_completo_faccionado, "ERILDA FRANCISCA ELIOTERIO DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("23/10/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "AGNALDO FRANCISCO DA SILVA PEREIRA" AS nome_completo_faccionado, "LIDIA FRANCISCA ALVES PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("24/02/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALBERTO ALVES DE ARAUJO" AS nome_completo_faccionado, "MARIA JOSE SANTOS ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("13/04/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALESSANDRO PEREIRA DE SOUSA" AS nome_completo_faccionado, "MAFALDA PEREIRA GONCALVES" AS nome_mae_fac, TO_TIMESTAMP("22/11/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALESSANDRO SOUZA DOS REIS" AS nome_completo_faccionado, "ELIANE DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("22/05/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEX SANDRO MAGALHAES DOS SANTOS" AS nome_completo_faccionado, "MARLENE MAGALHAES" AS nome_mae_fac, TO_TIMESTAMP("19/01/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXANDRE DIAS" AS nome_completo_faccionado, "IZAURA RAIEL" AS nome_mae_fac, TO_TIMESTAMP("03/05/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXANDRE TEODORO DE SOUZA" AS nome_completo_faccionado, "MAIA LINDANORA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("11/04/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXANDRO GONCALVES DOS SANTOS" AS nome_completo_faccionado, "MARTA APARECIDA BARBOSA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("29/11/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALISSON FERNANDO DA SILVA" AS nome_completo_faccionado, "MARIA LEITE DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("19/07/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDERSON APARECIDO DA SILVA" AS nome_completo_faccionado, "CICERA FERMIANO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("14/10/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDERSON ARTUR PEREIRA" AS nome_completo_faccionado, "FLEURIZA DE SOUZA PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("08/09/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDERSON BUENO MARTINS" AS nome_completo_faccionado, "IARA DA CONCEICAO BUENO MARTINS" AS nome_mae_fac, TO_TIMESTAMP("13/12/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDRE DEMICIANO MESSIAS" AS nome_completo_faccionado, "NADIR DEMICIANO MESSIAS" AS nome_mae_fac, TO_TIMESTAMP("21/08/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDRE EDUARDO VARGAS MAIA" AS nome_completo_faccionado, "ROSILENE DA SILVA VARGAS" AS nome_mae_fac, TO_TIMESTAMP("25/04/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDRE LUIZ SOARES DE OLIVEIRA" AS nome_completo_faccionado, "MARTA AUREIDES SOARES DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("22/09/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANGELO PEREIRA NOGUEIRA" AS nome_completo_faccionado, "LUCEMAR PEREIRA ABREU" AS nome_mae_fac, TO_TIMESTAMP("30/01/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "AUGUSTO MARQUES DE OLIVEIRA" AS nome_completo_faccionado, "SEVERINA MARQUES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("26/06/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS HENRIQUE DA SILVA" AS nome_completo_faccionado, "MARINA AMANCIO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("24/05/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS MACIEL PEREIRA DA SILVA" AS nome_completo_faccionado, "ODETE PEREIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("09/05/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CARLOS MAXIMO DA CRUZ" AS nome_completo_faccionado, "MERCES FERREIRA DA CRUZ" AS nome_mae_fac, TO_TIMESTAMP("25/02/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CASSIO ALEXANDRE RIBEIRO" AS nome_completo_faccionado, "MARLI RIBEIRO" AS nome_mae_fac, TO_TIMESTAMP("25/01/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CELIO AFONSO DA SILVA" AS nome_completo_faccionado, "ROSA MARINHO" AS nome_mae_fac, TO_TIMESTAMP("04/04/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLAUBER PEREIRA DE SOUSA" AS nome_completo_faccionado, "MARIA CLAUDIA RODRIGUES PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("25/12/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLAUDECIR BISPO DOS SANTOS" AS nome_completo_faccionado, "LUCIA LOPES DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("10/02/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLAUDEMIR GUABIRABA" AS nome_completo_faccionado, "OLGA BATISTA" AS nome_mae_fac, TO_TIMESTAMP("04/03/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLAUDINEI VEIGA" AS nome_completo_faccionado, "IVONE XAVIER VEIGA" AS nome_mae_fac, TO_TIMESTAMP("31/07/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CLAUDIO HENRIQUE OLARTECHEA" AS nome_completo_faccionado, "ZELIA CARLOS OLARTECHEA" AS nome_mae_fac, TO_TIMESTAMP("04/01/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CRISTIANO DE OLIVEIRA SOARES" AS nome_completo_faccionado, "VALERIA MARIA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("29/08/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CRISTIANO DE SANTA" AS nome_completo_faccionado, "JANETE CORDEIRO DA MOTTA" AS nome_mae_fac, TO_TIMESTAMP("06/12/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CRISTIANO ORESTE DA SILVA" AS nome_completo_faccionado, "MARIA CRISTINA PEREIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("29/10/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANIEL DEL GREGO FILHO" AS nome_completo_faccionado, "ELIZABETH DE ARAUJO DEL GREGO" AS nome_mae_fac, TO_TIMESTAMP("17/11/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DAYVIDE ROMULO DA SILVA" AS nome_completo_faccionado, "NILSA SANTIAGO DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("06/08/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DENILSON MOREIRA DIAS" AS nome_completo_faccionado, "MARIANA DIAS" AS nome_mae_fac, TO_TIMESTAMP("20/02/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DENIS LIMA PEREIRA DA CRUZ" AS nome_completo_faccionado, "VERA LUCIA NASCIMENTO LIMA" AS nome_mae_fac, TO_TIMESTAMP("28/12/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIOGO MARINHO DA SILVA" AS nome_completo_faccionado, "LINDINALVA DOS SANTOS MARINHO" AS nome_mae_fac, TO_TIMESTAMP("31/07/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DIVILMAR DOS SANTOS ALEIXO" AS nome_completo_faccionado, "MARIA FERREIRA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("29/11/1965", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS NIKE RODRIGUES ORTEGA" AS nome_completo_faccionado, "JOSENILDA SOARES RODRIGUES" AS nome_mae_fac, TO_TIMESTAMP("21/03/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DOUGLAS PEREIRA CASUSA" AS nome_completo_faccionado, "INACIA JUSTINO PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("10/06/1988", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDER ADRIANO BANZATTI" AS nome_completo_faccionado, "GENIVALDA ROCHA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("27/04/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDNALDO BEZERRA DE LIMA" AS nome_completo_faccionado, "FRANCISCA SUENI DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("25/01/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCO PAULO GONCALVES" AS nome_completo_faccionado, "ROSIMERE GONCALVES" AS nome_mae_fac, TO_TIMESTAMP("20/08/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANDREY HENRIQUE PEREIRA AMORIM" AS nome_completo_faccionado, "VANIA PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("22/04/2004", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO ANDRADE RODRIGUES" AS nome_completo_faccionado, "SILVANA ANDRADE DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("20/12/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DANILO SANTOS DE JESUS" AS nome_completo_faccionado, "JOVELITA SANTOS DE JESUS" AS nome_mae_fac, TO_TIMESTAMP("01/01/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "EDMILSON ALVES" AS nome_completo_faccionado, "LOURDES DA CONCEICAO ALVES BUSCHINI" AS nome_mae_fac, TO_TIMESTAMP("17/11/1976", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "CRISTINO DE SOUSA BRIOSO" AS nome_completo_faccionado, "MARIA GERMANA DE SOUSA BRIOSO" AS nome_mae_fac, TO_TIMESTAMP("03/01/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIZ ANTONIO BARBOSA" AS nome_completo_faccionado, "MARIA SIDENI GOMES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("14/08/1965", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FLAVIO FREDERICO FERREIRA" AS nome_completo_faccionado, "MARIA DOS ANJOS FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("19/06/1985", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO HENRIQUE TEIXEIRA" AS nome_completo_faccionado, "MARIA DO SOCORRO TEIXEIRA" AS nome_mae_fac, TO_TIMESTAMP("01/01/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANTONIA CRISTINA SOUSA BRIOSO" AS nome_completo_faccionado, "MARIA GERMANA DE SOUSA BRIOSO" AS nome_mae_fac, TO_TIMESTAMP("12/01/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JULIANE BARBOSA DA SILVA" AS nome_completo_faccionado, "MARIA SIDENI GOMES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("05/03/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VIVIANA BARBOSA DA SILVA" AS nome_completo_faccionado, "MARIA SIDENI GOMES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("11/04/1979", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JUCIENE BARBOSA DA SILVA" AS nome_completo_faccionado, "MARIA SIDENI GOMES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("08/04/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FERNANDA BARBOSA DA SILVA" AS nome_completo_faccionado, "MARIA SIDENI GOMES DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("05/11/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCO AURELIO BEZERRA DOS SANTOS" AS nome_completo_faccionado, "MARIA DO SOCORRO BEZERRA" AS nome_mae_fac, TO_TIMESTAMP("09/04/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WEXLEY MARQUES DE OLIVEIRA" AS nome_completo_faccionado, "JANINHA MARQUES DE FREITAS" AS nome_mae_fac, TO_TIMESTAMP("07/02/2002", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIZ ANTONIO VIEIRA DOS SANTOS" AS nome_completo_faccionado, "ALEXANDRA MAXIMIANO VIEIRA" AS nome_mae_fac, TO_TIMESTAMP("07/08/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WEVERTON ABADIO PEREIRA DE GOIS" AS nome_completo_faccionado, "MARY IVONE PEREIRA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("02/08/2001", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RICARDO DE SOUZA SILVA" AS nome_completo_faccionado, "MARIA AUXILIADORA MOREIRA DE SOUZA" AS nome_mae_fac, TO_TIMESTAMP("27/03/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FERNANDO ANALIO DE ARAUJO" AS nome_completo_faccionado, "MARIA DE ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("29/03/1970", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSIVAM INACIO DA SILVA JUNIOR" AS nome_completo_faccionado, "CIDIANE MOTA DE MACEDO" AS nome_mae_fac, TO_TIMESTAMP("25/09/2001", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "KETELEY APARECIDA DA CUNHA" AS nome_completo_faccionado, "JOSE APARECIDA CUNHA" AS nome_mae_fac, TO_TIMESTAMP("12/03/2003", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JUDAS TADEU DA CUNHA" AS nome_completo_faccionado, "ANA MARIA DA CUNHA" AS nome_mae_fac, TO_TIMESTAMP("20/06/1975", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JHONATAN MOREIRA TIMOTEO" AS nome_completo_faccionado, "SIMONE ROSA MOREIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("01/07/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DAVID BENEDITO DOS SANTOS NETO" AS nome_completo_faccionado, "MARIA JOSE DOS REIS" AS nome_mae_fac, TO_TIMESTAMP("22/09/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "KAIQUE JONATHAN GUIMARAES SILVA" AS nome_completo_faccionado, "SANDRA GUIMARAES" AS nome_mae_fac, TO_TIMESTAMP("17/08/2003", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WELIGNTON RODRIGUES DE OLIVEIRA" AS nome_completo_faccionado, "MARIA BEATRIZ MOREIRA" AS nome_mae_fac, TO_TIMESTAMP("07/01/2004", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WELITA APARECIDA SOUZA DA SILVA" AS nome_completo_faccionado, "OCELIA APARECIDA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("07/02/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIZ PAULO DE ANDRADE SILVA" AS nome_completo_faccionado, "JOANA DARC DE ANDRADE" AS nome_mae_fac, TO_TIMESTAMP("27/08/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE MARQUES DA SILVA" AS nome_completo_faccionado, "JANAINA ALMEIDA AZEVEDO" AS nome_mae_fac, TO_TIMESTAMP("01/07/2000", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "HAMILTON OLIVEIRA DANTAS" AS nome_completo_faccionado, "JOSIENE RIBEIRO DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("08/09/2003", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RODRIGO ALVES DE SOUZA" AS nome_completo_faccionado, "LIDIANE DE SOUSA TERNA" AS nome_mae_fac, TO_TIMESTAMP("08/02/2001", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOHNATAN DIAS DO NASCIMENTO" AS nome_completo_faccionado, "CATARINA DIAS VIEIRA" AS nome_mae_fac, TO_TIMESTAMP("20/08/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "NATALIA BERNARDELLI MARQUES" AS nome_completo_faccionado, "LUZIMAR BERNARDELLI" AS nome_mae_fac, TO_TIMESTAMP("27/12/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BRUNO ALVES DE OLIVEIRA" AS nome_completo_faccionado, "ISABEL ALVESA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("16/12/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANA PAULA APARECIDA DA SILVA" AS nome_completo_faccionado, "MARIA HELENA PEREIRA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("23/07/1998", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "BENEDITO APARECIDO DA SILVA" AS nome_completo_faccionado, "MARIA APARECIDA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("21/05/1982", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "JOSE MILTON DA SILVA" AS nome_completo_faccionado, "ANA TEODORA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("12/02/1970", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS HENRIQUE NOGUEIRA PIO" AS nome_completo_faccionado, "LUCIENE DAS DORES NOGUEIRA" AS nome_mae_fac, TO_TIMESTAMP("21/12/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALINE APARECIDA ALVES" AS nome_completo_faccionado, "HELENA VALDAIR DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("03/05/1991", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXANDRE HENRIQUE DE OLIVEIRA" AS nome_completo_faccionado, "MARIA DE FATIMA DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("20/09/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MAICON FRANCELINO DA SILVA" AS nome_completo_faccionado, "TERESA MARIA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("29/06/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WALISON NELSON DA SILVA" AS nome_completo_faccionado, "BENEDITA ALICE CORREA SILVA" AS nome_mae_fac, TO_TIMESTAMP("04/04/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCELO SANTANA LEITE" AS nome_completo_faccionado, "MARIZETE DE SANTANA LEITE" AS nome_mae_fac, TO_TIMESTAMP("17/01/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ELY ROBERT DE SOUZA SANTIAGO PIMENTEL" AS nome_completo_faccionado, "ROSA MARIA SANTIAGO" AS nome_mae_fac, TO_TIMESTAMP("10/02/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MATHEUS FERREIRA" AS nome_completo_faccionado, "ROSILENE MARIA FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("07/09/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FRANCISCO RAIMUNDO SOARES DE OLIVEIRA" AS nome_completo_faccionado, "FRANCISCA RAIMUNDA SOARES DE OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("20/07/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS DANIEL DE LIMA" AS nome_completo_faccionado, "ELIZANGELA CRISTINA APARECIDA FLORENTINO" AS nome_mae_fac, TO_TIMESTAMP("17/02/2000", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "NIELTON EDUARDO PEREIRA" AS nome_completo_faccionado, "MARIA FERREIRA GONCALVES PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("06/04/1977", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "TIAGO ISAIAS ALVES DOS ANJOS" AS nome_completo_faccionado, "MARIA APARECIDA ALVES" AS nome_mae_fac, TO_TIMESTAMP("23/10/1992", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ERIKIS SILVERIO SAVIO LOPES" AS nome_completo_faccionado, "ADRIANA DE PAULO LOPES" AS nome_mae_fac, TO_TIMESTAMP("30/08/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ITALO GUSTAVO DE REZENDE DOS SANTOS" AS nome_completo_faccionado, "ELZI CHAVES REZENDE" AS nome_mae_fac, TO_TIMESTAMP("10/08/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEANDRO AUGUSTO SILVA LEAL" AS nome_completo_faccionado, "MARIA DE FATIMA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("06/10/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MISAEL FERNANDO DOS SANTOS SILVA" AS nome_completo_faccionado, "CLEIDENIR FLORINDA DOS SANTOS SILVA" AS nome_mae_fac, TO_TIMESTAMP("11/04/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PEDRO HENRIQUE FERREIRA TAVARES" AS nome_completo_faccionado, "ELIANE RAMALHO FERREIRA TAVARES" AS nome_mae_fac, TO_TIMESTAMP("22/03/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "RONYELLE RANGEL FERREIRA DOS SANTOS" AS nome_completo_faccionado, "MARIA DE LOURDES FERREIRA" AS nome_mae_fac, TO_TIMESTAMP("14/07/1994", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THALES FELIPE MARTINS" AS nome_completo_faccionado, "APARECIDA LEONARDA MARTINS" AS nome_mae_fac, TO_TIMESTAMP("22/08/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GABRIEL EDUARDO DE OLIVEIRA SOUZA" AS nome_completo_faccionado, "MARIA DA GLORIA DE OLIVEIRA SOUZA" AS nome_mae_fac, TO_TIMESTAMP("11/01/1995", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THALISSON DE ARAUJO JESUINO" AS nome_completo_faccionado, "SANDRA HELENA DE ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("04/04/1997", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "FELIPE ROMULO GONCALVES" AS nome_completo_faccionado, "JOSILDA GONCALVES" AS nome_mae_fac, TO_TIMESTAMP("04/09/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "THIAGO DA SILVA ARAUJO" AS nome_completo_faccionado, "SILVIA HELENA DA SILVA ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("30/09/1986", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PAULO HENRIQUE ELIAS SIMOES" AS nome_completo_faccionado, "MARIA ANTONIA ELIAS" AS nome_mae_fac, TO_TIMESTAMP("06/08/1993", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "DAVID DOS SANTOS GONCALVES" AS nome_completo_faccionado, "ELIANE CRISTINA DOS SANTOS" AS nome_mae_fac, TO_TIMESTAMP("22/10/1996", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "SANDRO HENRIQUE FARIA" AS nome_completo_faccionado, "SANDRA ELY FARIA" AS nome_mae_fac, TO_TIMESTAMP("14/07/1990", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCIO VINICIUS DA PAIXAO VIEIRA" AS nome_completo_faccionado, "MARIA VERONICA DA PAIXAO VIEIRA" AS nome_mae_fac, TO_TIMESTAMP("05/05/2001", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LEONARDO COSTA ARAÚJO" AS nome_completo_faccionado, "LUCINEA MARIA COSTA ARAUJO" AS nome_mae_fac, TO_TIMESTAMP("22/01/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "PEDRO HENRIQUE AMARAL" AS nome_completo_faccionado, "JOANA DARQUE DO AMARAL" AS nome_mae_fac, TO_TIMESTAMP("18/06/2004", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MATEUS SOUSA DOS SANTOS" AS nome_completo_faccionado, "ELISANGELA CHAVES DE SOUSA" AS nome_mae_fac, TO_TIMESTAMP("16/04/1999", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCOS PAULO VELOSO SANTOS" AS nome_completo_faccionado, "MARIA LEVIMAR VELOSO DOMINGUES" AS nome_mae_fac, TO_TIMESTAMP("15/12/2000", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "WAGNER MOREIRA GUIMARAES" AS nome_completo_faccionado, "ANGELA MARIA MOREIRA GUIMARAES" AS nome_mae_fac, TO_TIMESTAMP("09/03/1989", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "VALTEIR TAVARES DA SILVA LIMA" AS nome_completo_faccionado, "MARIA JOSE TAVARES SILVA" AS nome_mae_fac, TO_TIMESTAMP("20/03/1980", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ALEXANDRE DAMASIO DE OLIVEIRA" AS nome_completo_faccionado, "LUIZA CELIA DAMASIO OLIVEIRA" AS nome_mae_fac, TO_TIMESTAMP("01/03/1984", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUIZ CARLOS SILVA" AS nome_completo_faccionado, "ROMILDA MARIA DE JESUS DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("15/08/1978", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "GEANDERSON DA SILVA ALVES" AS nome_completo_faccionado, "ILMA PAULA DA SILVA" AS nome_mae_fac, TO_TIMESTAMP("11/12/1981", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "ANSELMO DE SOUZA GONCALVES VASCONCELOS" AS nome_completo_faccionado, "LOURDES DE SOUZA GONCALVES" AS nome_mae_fac, TO_TIMESTAMP("04/10/1987", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "MARCOS VINICIUS DOS SANTOS" AS nome_completo_faccionado, "ELISABETE JOSE DOS ANTOS" AS nome_mae_fac, TO_TIMESTAMP("04/12/1983", 'dd/MM/yyyy') AS data_nascimento_fac UNION
SELECT "LUCAS PEREIRA" AS nome_completo_faccionado, "VERA LUCIA DA CRUZ PEREIRA" AS nome_mae_fac, TO_TIMESTAMP("20/03/1981", 'dd/MM/yyyy') AS data_nascimento_fac
),
PRESOS_MV AS (
    SELECT
        UPPER(ENV.nome_completo_envolvido) as NOME_COMPLETO_ENVOLVIDO,
        UPPER(ENV.nome_mae) AS NOME_MAE,
        ENV.nome_pai,
        ENV.numero_documento_id,
        ENV.numero_cpf_cnpj,
        ENV.data_hora_fato,
        CAST(ENV.data_nascimento as date) AS 'data_nascimento'
    FROM
        db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    WHERE
        1 = 1
        AND ENV.data_hora_fato >= '2019-01-01'
        AND ENV.digitador_id_orgao in (0,1)
		AND ENV.id_tipo_prisao_apreensao IN (1,2,3,4,6,7)-- FLAGRANTES(REDS E TCO),MANDADO, RECAPTURA, OUTRAS PRISOES
        AND ENV.numero_ocorrencia IN (
            SELECT
                ENV2.numero_ocorrencia
            FROM
                db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV2
            WHERE
                1 = 1
                AND ENV2.data_hora_fato >= '2019-01-01'
                AND ENV2.digitador_id_orgao in (0,1)
                AND ENV2.natureza_ocorrencia_codigo IN (
                    'B01121',
                    'C01157',
                    'B02001',
                    'B01129'
                )
                AND ENV2.condicao_fisica_descricao = 'FATAL'
                AND ENV2.id_envolvimento IN (25,32,1097,26,27,28,872)					-- CÓDIGOS PARA VÍTIMAS: 25,26,27,28,32,872,1097
        )
),
PRESOS_ROUBO_FURTO AS (
    SELECT
        UPPER(ENV.nome_completo_envolvido) as NOME_COMPLETO_ENVOLVIDO,
        UPPER(ENV.nome_mae) AS NOME_MAE,
        ENV.nome_pai,
        ENV.numero_documento_id,
        ENV.numero_cpf_cnpj,
        ENV.data_hora_fato,
        cast(ENV.data_nascimento as date) as 'data_nascimento'
    FROM
        db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    WHERE
        1 = 1
        AND ENV.data_hora_fato >= '2019-01-01'
        AND env.digitador_id_orgao in (0,1)
        AND (
            ENV.natureza_ocorrencia_codigo IN (
                'C01157', -- ROUBO
                'C01155', -- FURTO
                'C01158'  -- EXTORSÃO
            )
        )
        AND ENV.id_tipo_prisao_apreensao IN (1,2,3,4,6,7)	-- FLAGRANTES(REDS E TCO),MANDADO, RECAPTURA, OUTRAS PRISOES
),
PRESOS_VDOM AS (
    SELECT
        UPPER(ENV.nome_completo_envolvido) as NOME_COMPLETO_ENVOLVIDO,
        UPPER(ENV.nome_mae) AS NOME_MAE,
        ENV.nome_pai,
        ENV.numero_documento_id,
        ENV.numero_cpf_cnpj,
        ENV.data_hora_fato,
        cast(ENV.data_nascimento as date) as 'data_nascimento'
    FROM
        db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
    WHERE
        1 = 1
        AND ENV.data_hora_fato >= '2019-01-01'
        AND ENV.digitador_id_orgao in (0,1)
        AND ENV.id_tipo_prisao_apreensao IN (1,2,3,4,6,7)-- FLAGRANTES(REDS E TCO),MANDADO, RECAPTURA, OUTRAS PRISOES
        AND ENV.numero_ocorrencia IN (
            SELECT
                ENV2.numero_ocorrencia
            FROM
                db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV2
            WHERE
                1 = 1
                AND ENV2.data_hora_fato >= '2019-01-01'
                AND ENV2.codigo_sexo ='F' 
				AND ENV2.id_relacao_vitima_autor IN (22,21,15,6,7,19,18,16,5,20) 
				AND ENV2.id_envolvimento IN (25,32,872)
        )
),
PRESOS_MANDADO AS (
    SELECT
        ENV.numero_ocorrencia,
        UPPER(ENV.nome_completo_envolvido) as NOME_COMPLETO_ENVOLVIDO,
        UPPER(ENV.nome_mae) AS NOME_MAE,
        ENV.nome_pai,
        ENV.numero_documento_id, 
        ENV.numero_cpf_cnpj, 
        cast(ENV.data_nascimento as date) as 'data_nascimento',
        cast(ENV.data_hora_fato as date) as 'data_hora_fato',
         ROW_NUMBER() OVER (PARTITION BY 
                        UPPER(ENV.nome_completo_envolvido), 
                        UPPER(ENV.nome_mae), 
                        CAST(ENV.data_nascimento AS DATE),
                        CAST(ENV.data_hora_fato AS DATE)
                    ORDER BY ENV.data_hora_fato) AS duplicado
,      CASE 
	    WHEN BO.codigo_municipio in (310690,311590,311960,312130,312738,312850,314020,314950,315010,315540,315620,316290) THEN '02 BPM'
		WHEN BO.codigo_municipio in (310240,311750,311810,312010,312100,312160,312260,312540,312550,312760,314250,314370,315330,316020,316050,316480,316590,316650,316710) THEN '03 BPM'
		WHEN BO.codigo_municipio in (312125) THEN '04 BPM'
		WHEN BO.codigo_municipio in (312770,310180,311265,312370,312580,313320,314995,316770,316840,310220,312690,314010,317150,316160,316300) THEN '06 BPM'
		WHEN BO.codigo_municipio in (310020,310700,310740,311560,311980,312320,312470,313530,313720,313880,314050,314240,314350,314640,314890,315200,315370,316040,316660) THEN '07 BPM'
		WHEN BO.codigo_municipio in (310080,310800,311120,311190,311200,311400,311450,311460,312020,313000,313040,313080,313430,313450,313820,313870,314460,314560,314770,314990,315060,315470,315880,315990,316120) THEN '08 BPM'
		WHEN BO.codigo_municipio in (310163,310210,310290,310330,310560,310680,311630,312150,312500,312940,314570,314660,315030,315440,315730,315870,315940,316070,316620) THEN '09 BPM'
		WHEN BO.codigo_municipio in (314480,315390,315480) THEN '1 CIA PM IND'
		WHEN BO.codigo_municipio in (310730,311650,311880,312380,312660,312735,312825,312960,313200,313680,313730,314545,316225,316265) THEN '10 BPM'
		WHEN BO.codigo_municipio in (310370,311020,311170,311670,312400,314830,314880,316380,316850,317130) THEN '10 CIA PM IND'
		WHEN BO.codigo_municipio in (310030,310205,311010,311210,311290,311600,312352,312420,313770,313867,313940,313950,314053,314090,314400,314875,315350,315415,315790,315890,316255,316630,316760,316360) THEN '11 BPM'
		WHEN BO.codigo_municipio in (311250,314110,314930,315360) THEN '11 CIA PM IND'
		WHEN BO.codigo_municipio in (310190,311240,311280,311510,311640,312120,312340,312970,313375,314790,315150,315290,316220,316294,316430,317060) THEN '12 BPM'
		WHEN BO.codigo_municipio in (310860,311115,312965,313005,313535,313865,313868,315057,315213,316110,316240,317000,317090) THEN '13 CIA PM IND'
		WHEN BO.codigo_municipio in (310050,310630,310880,313115,313130,313610,314170,314435,315895) THEN '14 BPM'
		WHEN BO.codigo_municipio in (310340,311950,313400,314630,317160,311700,313330,314140,315217) THEN '70 BPM'
		WHEN BO.codigo_municipio in (310380,311430,313710,313750,313753,314120,314800,315340,315550,316170,316210,316890,317075) THEN '15 BPM'
		WHEN BO.codigo_municipio in (310110,311840,312083,312737,313410,315430,315950,316950) THEN '15 CIA PM IND'
		WHEN BO.codigo_municipio in (311070,311090,311770,313590,313780,314550,316080,316520,316930,314260) THEN '16 CIA PM IND'
		WHEN BO.codigo_municipio in (310230,310600,312180,312270,313620,314470,315570,316100,316340,316556) THEN '17 CIA PM IND'
		WHEN BO.codigo_municipio in (311570,312210,312730,313180,313960,314150,314467,316105,316165,316257) THEN '18 CIA PM IND'
		WHEN BO.codigo_municipio in (310470,311080,311300,311545,312675,312680,313230,313270,313507,313700,313920,314490,314530,314535,314620,314850,315000,315240,316330,316555,316860) THEN '19 BPM'
		WHEN BO.codigo_municipio in (313020,313970,314580,314690,314710,314960,316310) THEN '19 CIA PM IND'
		WHEN BO.codigo_municipio in (310665,312087,312707,313065,314345,314465,314537,314625,315560,315650,315700,315737,316045,316270,316800,317065) THEN '2 CIA PM IND'
		WHEN BO.codigo_municipio in (310140,310830,310970,311360,311720,311780,311790,311900,312440,312450,312920,313060,313490,314340,314440,314600,315250,315960,316200,316230,316440,316580,316740,316905,316980) THEN '20 BPM'
		WHEN BO.codigo_municipio in (310870,312190,312330,312840,312880,312900,314160,315130,315580,315630,316150,316570,316730,316790,316900,316990,317200) THEN '21 BPM'
		WHEN BO.codigo_municipio in (310040,310250,310570,312820,313550,314585,315020,315210,315490,315500,315740,316010,316400,317050) THEN '21 CIA PM IND'
		WHEN BO.codigo_municipio in (311420,311660,312230,316180) THEN '23 BPM'
		WHEN BO.codigo_municipio in (310060,310285,310445,310650,311230,311350,311610,312650,313250,313545,313652,313835,314180,316970,317107) THEN '23 CIA PM IND'
		WHEN BO.codigo_municipio in (310710,311390,311870,312360,312810,313050,315830,316940,317070) THEN '24 BPM'
		WHEN BO.codigo_municipio in (310090,310660,311370,312015,312705,313890,314430,315765,316670,317030) THEN '24 CIA PM IND'
		WHEN BO.codigo_municipio in (310320,310500,310960,310990,311890,312640,312720,313100,313570,314740,315850,316720) THEN '25 BPM'
		WHEN BO.codigo_municipio in (311205,311680,311920,312220,312310,312695,312750,312800,313655,314060,314420,314840,314860,315600,315680,315750,315820,316280,316350,316410,316450,316550,316610,317180,317190) THEN '65 BPM'
		WHEN BO.codigo_municipio in (310540,310770,311380,311535,312590,313170,313280,314750,315720,315800,316190) THEN '26 BPM'
		WHEN BO.codigo_municipio in (310610,311620,313860,313980,314080,314540,314940,315590,315727,315860,315930,316560,316750) THEN '27 BPM'
		WHEN BO.codigo_municipio in (310450,310820,310930,310945,311615,312247,312620,314437,315445,317040,317047,317052) THEN '28 BPM'
		WHEN BO.codigo_municipio in (310260,310530,310840,310950,311030,311100,312240,312990,313150,315180,315920) THEN '29 BPM'
		WHEN BO.codigo_municipio in (311110,311455,313440,313862,317043) THEN '3 CIA PM IND'
		WHEN BO.codigo_municipio in (310825,311783,313210,313520,313695,313930,314225,314270,314915,316245) THEN '30 BPM'
		WHEN BO.codigo_municipio in (310640,311220,311310,311320,311490,311540,311800,311830,312040,312140,312390,313390,313540,313790,314230,314590,315080,315230,315310,315380,315520,315910,316090,316600) THEN '31 BPM'
		WHEN BO.codigo_municipio in (315780) THEN '35 BPM'
		WHEN BO.codigo_municipio in (316295,317120) THEN '36 BPM'
		WHEN BO.codigo_municipio in (313760,311787,315900,313460) THEN '8 CIA PM IND'
		WHEN BO.codigo_municipio in (310400,311150,311820,312950,314500,314920,314980,315300,315690,315770,315970,316810) THEN '37 BPM'
		WHEN BO.codigo_municipio in (310280,310360,310590,310750,311520,311970,312300,313740,313910,314450,315270,315420,315610,315733,316250,316500,316530,316880) THEN '38 BPM'
		WHEN BO.codigo_municipio in (311690,312700,312710,313340,315160,316130,311140,311730,315070) THEN '69 BPM'
		WHEN BO.codigo_municipio in (315460) THEN '40 BPM'
		WHEN BO.codigo_municipio in (310480,310920,311910,312090,312570,313110,313640,314360,315320,316060,316935) THEN '42 BPM'
		WHEN BO.codigo_municipio in (310410,310760,312830,312870,313290,313690,314300,314320,314410,314510,316390,316470,316510,312630,313480) THEN '43 BPM'
		WHEN BO.codigo_municipio in (310170,310520,312245,312560,313470,313580,313600,313650,314055,314315,314675,315510,315660,315710,315810,316030,310100,310270,312235,314870) THEN '44 BPM'
		WHEN BO.codigo_municipio in (310855,312860,313630,314700,317100) THEN '45 BPM'
		WHEN BO.codigo_municipio in (310010,311930,312070,312350,312890,313160,314310,314810,315640,316680) THEN '46 BPM'
		WHEN BO.codigo_municipio in (310310,310550,311330,312200,312490,312530,312595,313800,314210,314390,314587,314670,314820,314900,315645,316140,316920,317140) THEN '47 BPM'
		WHEN BO.codigo_municipio in (310900,312980,314015,316553) THEN '48 BPM'
		WHEN BO.codigo_municipio in (310850,311270,312030,312670,312780,313657,314200,314795 ) THEN '50 BPM'
		WHEN BO.codigo_municipio in (311547,312430,312733,313505,313510,313925,314100,314290,314505,314655,315220,315450,316695,317103,314085) THEN '51 BPM'
		WHEN BO.codigo_municipio in (312170,313190,314000,314610) THEN '52 BPM'
		WHEN BO.codigo_municipio in (310350,310375,311500,312480,312790,313070,316960) THEN '53 BPM'
		WHEN BO.codigo_municipio in (310980,311180,311260,311580,312910,313140,313420,314280,315280,315980) THEN '54 BPM'
		WHEN BO.codigo_municipio in (310940,313560,313810,315120,315760,316420,317080) THEN '55 BPM'
		WHEN BO.codigo_municipio in (310890,311850,312050,312110,312740,313240,313990,314040,314730,314910,315090,315100,316320,316540,317220) THEN '56 BPM'
		WHEN BO.codigo_municipio in (310120,310130,310490,310720,311410,311480,311550,312080,312280,313300,313310,313850,314190,314760,314780,315260,316370,316490,316640,316700,316780,317170) THEN '57 BPM'
		WHEN BO.codigo_municipio in (310300,311940,313500,314030,316870) THEN '58 BPM'
		WHEN BO.codigo_municipio in (310790,311050,311060,311990,312510,313360,316557,316910,310910,314380) THEN '59 BPM'
		WHEN BO.codigo_municipio in (310390,311760,313830,314520,314970,315140) THEN '60 BPM'
		WHEN BO.codigo_municipio in (311000,313660,315670,316830) THEN '61 BPM'
		WHEN BO.codigo_municipio in (310780,311340,311740,312000,312250,312385,313055,313090,313120,315015,315053,315190,315400,315725,315935,316095,316260,316447,316805,317005,317057,317115,310925,312930) THEN '62 BPM'
		WHEN BO.codigo_municipio in (310420,310510,311040,311995,312610,313030,313350,314130,314650,315050,316460,316820) THEN '63 BPM'
		WHEN BO.codigo_municipio in (310160,310200,310430,311130,311160,311440,311470,311710,312520,313900,314720,315170,316690) THEN '64 BPM'
		WHEN BO.codigo_municipio in (312410) THEN '6 CIA PM IND'
		WHEN BO.codigo_municipio in (310070,317110) THEN '67 BPM'
		WHEN BO.codigo_municipio in (310810,312060,312600,313010,313220,313665,314070,315040,315530,316292) THEN '7 CIA PM IND'
		WHEN BO.codigo_municipio in (310440,310460,311530,312290,313260,313840,314220,315410,315840,316443,315110,317210,310150,316000,312460) THEN '68 BPM'
		WHEN BO.codigo_municipio in (313370,313380) THEN '9 CIA PM IND'
		/* MUNICÍPIOS COM MAIS DE 01 UEOP*/
		WHEN BO.codigo_municipio =317020 AND (BO.unidade_area_militar_nome like '32 BPM%' or BO.unidade_area_militar_nome like '%/32 BPM%') and (BO.unidade_area_militar_nome not like '%TM%')THEN '32 BPM'
		WHEN BO.codigo_municipio =317020 AND (BO.unidade_area_militar_nome like '17 BPM%' or BO.unidade_area_militar_nome like '%/17 BPM%') and (BO.unidade_area_militar_nome not like '%TM%')THEN '17 BPM'
		WHEN BO.codigo_municipio =317010 AND (BO.unidade_area_militar_nome like '4 BPM%' or BO.unidade_area_militar_nome like '%/4 BPM%') and (BO.unidade_area_militar_nome not like '%TM%')THEN '04 BPM'
		WHEN BO.codigo_municipio =317010 AND (BO.unidade_area_militar_nome like '67 BPM%' or BO.unidade_area_militar_nome like '%/67 BPM%') and (BO.unidade_area_militar_nome not like '%TM%')THEN '67 BPM'
		WHEN BO.codigo_municipio =314330 AND (BO.unidade_area_militar_nome like '50 BPM%' or BO.unidade_area_militar_nome like '%/50 BPM%') and (BO.unidade_area_militar_nome not like '%TM%')THEN '50 BPM'
		WHEN BO.codigo_municipio =314330 AND (BO.unidade_area_militar_nome like '10 BPM%' or BO.unidade_area_militar_nome like '%/10 BPM%') and (BO.unidade_area_militar_nome not like '%TM%')THEN '10 BPM'
		WHEN BO.codigo_municipio =313670 AND (BO.unidade_area_militar_nome like '27 BPM%' or BO.unidade_area_militar_nome like '%/27 BPM%') and (BO.unidade_area_militar_nome not like '%TM%')THEN '27 BPM'
		WHEN BO.codigo_municipio =313670 AND (BO.unidade_area_militar_nome like '2 BPM%' or BO.unidade_area_militar_nome like '%/2 BPM%') and (BO.unidade_area_militar_nome not like '%TM%')THEN '02 BPM'
		WHEN BO.codigo_municipio =311860 AND (BO.unidade_area_militar_nome like '39 BPM%' or BO.unidade_area_militar_nome like '%/39 BPM%') and (BO.unidade_area_militar_nome not like '%TM%')THEN '39 BPM'
		WHEN BO.codigo_municipio =311860 AND (BO.unidade_area_militar_nome like '18 BPM%' or BO.unidade_area_militar_nome like '%/18 BPM%') and (BO.unidade_area_militar_nome not like '%TM%')THEN '18 BPM'
		WHEN BO.codigo_municipio =310670 AND (BO.unidade_area_militar_nome like '66 BPM%' or BO.unidade_area_militar_nome like '%/66 BPM%') and (BO.unidade_area_militar_nome not like '%TM%')THEN '66 BPM'
		WHEN BO.codigo_municipio =310670 AND (BO.unidade_area_militar_nome like '33 BPM%' or BO.unidade_area_militar_nome like '%/33 BPM%') and (BO.unidade_area_militar_nome not like '%TM%')THEN '33 BPM'
		WHEN BO.codigo_municipio =310620 AND (BO.unidade_area_militar_nome like '1 BPM%' or BO.unidade_area_militar_nome like '%/1 BPM%') and (BO.unidade_area_militar_nome not like '%TM%')THEN '01 BPM'
		WHEN BO.codigo_municipio =310620 AND (BO.unidade_area_militar_nome like '5 BPM%' or BO.unidade_area_militar_nome like '%/5 BPM%') and (BO.unidade_area_militar_nome not like '%TM%') THEN '05 BPM'
		WHEN BO.codigo_municipio =310620 AND (BO.unidade_area_militar_nome like '13 BPM%' or BO.unidade_area_militar_nome like '%/13 BPM%') and (BO.unidade_area_militar_nome not like '%TM%') THEN '13 BPM'
		WHEN BO.codigo_municipio =310620 AND (BO.unidade_area_militar_nome like '16 BPM%' or BO.unidade_area_militar_nome like '%/16 BPM%') and (BO.unidade_area_militar_nome not like '%TM%') THEN '16 BPM'
		WHEN BO.codigo_municipio =310620 AND (BO.unidade_area_militar_nome like '22 BPM%' or BO.unidade_area_militar_nome like '%/22 BPM%' ) and (BO.unidade_area_militar_nome not like '%TM%') THEN '22 BPM'
		WHEN BO.codigo_municipio =310620 AND (BO.unidade_area_militar_nome like '41 BPM%' or BO.unidade_area_militar_nome like '%/41 BPM%') and (BO.unidade_area_militar_nome not like '%TM%')THEN '41 BPM'
		WHEN BO.codigo_municipio =310620 AND (BO.unidade_area_militar_nome like '49 BPM%' or BO.unidade_area_militar_nome like '%/49 BPM%') and (BO.unidade_area_militar_nome not like '%TM%')THEN '49 BPM'
		WHEN BO.codigo_municipio =310620 AND (BO.unidade_area_militar_nome like '34 BPM%' or BO.unidade_area_militar_nome like '%/34 BPM%') and (BO.unidade_area_militar_nome not like '%TM%')THEN '34 BPM'
		ELSE 'OUTROS' 
	END AS UEOP_2024,
	CASE 
		WHEN BO.codigo_municipio IN (310620) THEN '01 RPM'
   		WHEN BO.codigo_municipio IN (310670 , 310810 , 310900 , 311860 , 312060 , 312410 , 312600 , 312980 , 313010 , 313220 , 313665 , 314015 , 314070 , 315040 , 315460 , 315530 , 316292 , 316553) THEN '02 RPM'	
		WHEN BO.codigo_municipio IN (311000 , 311787 , 312170 , 313190 , 313460 , 313660 , 313760 , 314000 , 314480 , 314610 , 315390 , 315480 , 315670 , 315780 , 315900 , 316295 , 316830 , 317120) THEN '03 RPM'
    	WHEN BO.codigo_municipio IN (310150 , 310310 , 310370 , 310440 , 310460 , 310550 , 310610 , 310690 , 310870 , 311020 , 311170 , 311330 , 311530 , 311590 , 311620 , 311670 , 311960 , 312130 , 312190 , 312200 , 312290 , 312330 , 312400 , 312460 , 312490 , 312530 , 312595 , 312738 , 312840 , 312850 , 312880 , 312900 , 313260 , 313670 , 313800 , 313840 , 313860 , 313980 , 314020 , 314080 , 314160 , 314210 , 314220 , 314390 , 314540 , 314587 , 314670 , 314820 , 314830 , 314880 , 314900 , 314940 , 314950 , 315010 , 315110 , 315130 , 315410 , 315540 , 315580 , 315590 , 315620 , 315630 , 315645 , 315727 , 315840 , 315860 , 315930 , 316000 , 316140 , 316150 , 316290 , 316380 , 316443 , 316560 , 316570 , 316730 , 316750 , 316790 , 316850 , 316900 , 316920 , 316990 , 317130 , 317140 , 317200 , 317210) THEN '04 RPM'	
    	WHEN BO.codigo_municipio IN (310070 , 310400 , 311110 , 311140 , 311150 , 311455 , 311690 , 311730 , 311820 , 312125 , 312700 , 312710 , 312950 , 313340 , 313440 , 313862 , 314500 , 314920 , 314980 , 315070 , 315160 , 315300 , 315690 , 315770  , 315970 , 316130 , 316810 , 317010 , 317043 , 317110) THEN '05 RPM'
    	WHEN BO.codigo_municipio IN (310080 , 310710 , 310800 , 311070 , 311090 , 311120 , 311190 , 311200 , 311390 , 311400 , 311450 , 311460 , 311770 , 311870 , 312020 , 312360 , 312810 , 313000 , 313040 , 313050 , 313080 , 313430 , 313450 , 313590 , 313780 , 313820 , 313870 , 314260 , 314460 , 314550 , 314560 , 314770 , 314990 , 315060 , 315470 , 315830 , 315880 , 315990 , 316080 , 316120 , 316520 , 316930 , 316940 , 317070) THEN '06 RPM'
    	WHEN BO.codigo_municipio IN (310020 , 310390 , 310420 , 310510 , 310700 , 310740 , 311040 , 311420 , 311560 , 311660 , 311760 , 311980 , 311995 , 312230 , 312320 , 312470 , 312610 , 313020 , 313030 , 313350 , 313370 , 313380 , 313530 , 313720 , 313830 , 313880 , 313970 , 314050 , 314130 , 314240 , 314350 , 314520 , 314580 , 314640 , 314650 , 314690 , 314710 , 314890 , 314960 , 314970 , 315050 , 315140 , 315200 , 315370 , 316040 , 316180 , 316310 , 316460 , 316660 , 316820) THEN '07 RPM'
    	WHEN BO.codigo_municipio IN (310110 , 310180 , 310220 , 311205 , 311265 , 311570 , 311680 , 311840 , 311920 , 312083 , 312210 , 312220 , 312310 , 312370 , 312580 , 312690 , 312695 , 312730 , 312737 , 312750 , 312770 , 312800 , 313180 , 313320 , 313410 , 313655 , 313960 , 314010 , 314060 , 314150 , 314420 , 314467 , 314840 , 314860 , 314995 , 315430 , 315600 , 315680 , 315750 , 315820 , 315950 , 316105 , 316160 , 316165 , 316257 , 316280 , 316300 , 316350 , 316410 , 316450 , 316550 , 316610 , 316770 , 316840 , 316950 , 317150 , 317180 , 317190) THEN '08 RPM'	
    	WHEN BO.codigo_municipio IN (310350 , 310375 , 310980 , 311180 , 311260 , 311500 , 311580 , 312480 , 312790 , 312910 , 313070 , 313140 , 313420 , 314280 , 315280 , 315980 , 316960 , 317020) THEN '09 RPM'
    	WHEN BO.codigo_municipio IN (310010 , 310380 , 311430 , 311930 , 312070 , 312350 , 312890 , 313160 , 313710 , 313750 , 313753 , 314120 , 314310 , 314800 , 314810 , 315340 , 315550 , 315640 , 316170 , 316210 , 316680 , 316890 , 317075) THEN '10 RPM'
    	WHEN BO.codigo_municipio IN (310665 , 310730 , 310825 , 310850 , 310860 , 311115 , 311270 , 311547 , 311650 , 311783 , 311880 , 312030 , 312087 , 312380 , 312430 , 312660 , 312670 , 312707 , 312733 , 312735 , 312780 , 312825 , 312960 , 312965 , 313005 , 313065 , 313200 , 313210 , 313505 , 313510 , 313520 , 313535 , 313657 , 313680 , 313695 , 313730 , 313865 , 313868 , 313925 , 313930 , 314085 , 314100 , 314200 , 314225 , 314270 , 314290 , 314330 , 314345 , 314465 , 314505 , 314537 , 314545 , 314625 , 314655 , 314795 , 314915 , 315057 , 315213 , 315220 , 315450 , 315560 , 315650 , 315700 , 315737 , 316045 , 316110 , 316225 , 316240 , 316245 , 316265 , 316270 , 316695 , 316800 , 317000 , 317065 , 317090 , 317103) THEN '11 RPM'
    	WHEN BO.codigo_municipio IN (310030 , 310040 , 310050 , 310205 , 310230 , 310250 , 310300 , 310540 , 310570 , 310600 , 310630 , 310770 , 310780 , 310880 , 310925 , 311010 , 311210 , 311290 , 311340 , 311380 , 311535 , 311600 , 311740 , 311940 , 312000 , 312180 , 312250 , 312270 , 312352 , 312385 , 312420 , 312590 , 312820 , 312930 , 313055 , 313090 , 313115 , 313120 , 313130 , 313170 , 313280 , 313500 , 313550 , 313610 , 313620 , 313770 , 313867 , 313940 , 313950 , 314030 , 314053 , 314090 , 314170 , 314400 , 314435 , 314470 , 314585 , 314750 , 314875 , 315015 , 315020 , 315053 , 315190 , 315210 , 315350 , 315400 , 315415 , 315490 , 315500 , 315570 , 315720 , 315725 , 315740 , 315790 , 315800 , 315890 , 315895 , 315935 , 316010 , 316095 , 316100 , 316190 , 316255 , 316260 , 316340 , 316360 , 316400 , 316447 , 316556 , 316630 , 316760 , 316805 , 316870 , 317005 , 317050 , 317057 , 317115) THEN '12 RPM'	
    	WHEN BO.codigo_municipio IN (310163 , 310210 , 310280 , 310290 , 310330 , 310360 , 310560 , 310590 , 310640 , 310680 , 310750 , 311220 , 311310 , 311320 , 311490 , 311520 , 311540 , 311630 , 311800 , 311830 , 311970 , 312040 , 312140 , 312150 , 312300 , 312390 , 312500 , 312940 , 313390 , 313540 , 313740 , 313790 , 313910 , 314230 , 314450 , 314570 , 314590 , 314660 , 315030 , 315080 , 315230 , 315270 , 315310 , 315380 , 315420 , 315440 , 315520 , 315610 , 315730 , 315733 , 315870 , 315910 , 315940 , 316070 , 316090 , 316250 , 316500 , 316530 , 316600 , 316620 , 316880) THEN'13 RPM'	
    	WHEN BO.codigo_municipio IN (310060 , 310240 , 310285 , 310445 , 310480 , 310650 , 310920 , 310940 , 311230 , 311350 , 311610 , 311750 , 311810 , 311910 , 312010 , 312090 , 312100 , 312160 , 312260 , 312540 , 312550 , 312570 , 312650 , 312760 , 313110 , 313250 , 313545 , 313560 , 313640 , 313652 , 313810 , 313835 , 314180 , 314250 , 314360 , 314370 , 315120 , 315320 , 315330 , 315760 , 316020 , 316050 , 316060 , 316420 , 316480 , 316590 , 316650 , 316710 , 316935 , 316970 , 317080 , 317107) THEN '14 RPM'
    	WHEN BO.codigo_municipio IN (310090 , 310100 , 310170 , 310270 , 310340 , 310470 , 310520 , 310660 , 311080 , 311300 , 311370 , 311545 , 311700 , 311950 , 312015 , 312235 , 312245 , 312560 , 312675 , 312680 , 312705 , 313230 , 313270 , 313330 , 313400 , 313470 , 313507 , 313580 , 313600 , 313650 , 313700 , 313890 , 313920 , 314055 , 314140 , 314315 , 314430 , 314490 , 314530 , 314535 , 314620 , 314630 , 314675 , 314850 , 314870 , 315000 , 315217 , 315240 , 315510 , 315660 , 315710 , 315765 , 315810 , 316030 , 316330 , 316555 , 316670 , 316860 , 317030 , 317160) THEN '15 RPM'	
	    WHEN BO.codigo_municipio IN (310450 , 310820 , 310855 , 310930 , 310945 , 311615 , 312247 , 312620 , 312860 , 313630 , 314437 , 314700 , 315445 , 317040 , 317047 , 317052 , 317100) THEN '16 RPM'	
	    WHEN BO.codigo_municipio IN (310120 , 310130 , 310140 , 310490 , 310720 , 310790 , 310830 , 310890 , 310910 , 310970 , 311050 , 311060 , 311360 , 311410 , 311480 , 311550 , 311720 , 311780 , 311790 , 311850 , 311900 , 311990 , 312050 , 312080 , 312110 , 312280 , 312440 , 312450 , 312510 , 312740 , 312920 , 313060 , 313240 , 313300 , 313310 , 313360 , 313490 , 313850 , 313990 , 314040 , 314190 , 314340 , 314380 , 314440 , 314600 , 314730 , 314760 , 314780 , 314910 , 315090 , 315100 , 315250 , 315260 , 315960 , 316200 , 316230 , 316320 , 316370 , 316440 , 316490 , 316540 , 316557 , 316580 , 316640 , 316700 , 316740 , 316780 , 316905 , 316910 , 316980 , 317170 , 317220) THEN'17 RPM'	
	    WHEN BO.codigo_municipio IN (310160 , 310190 , 310200 , 310260 , 310410 , 310430 , 310530 , 310760 , 310840 , 310950 , 311030 , 311100 , 311130 , 311160 , 311240 , 311280 , 311440 , 311470 , 311510 , 311640 , 311710 , 312120 , 312240 , 312340 , 312520 , 312630 , 312830 , 312870 , 312970 , 312990 , 313150 , 313290 , 313375 , 313480 , 313690 , 313900 , 314300 , 314320 , 314410 , 314510 , 314720 , 314790 , 315150 , 315170 , 315180 , 315290 , 315920 , 316220 , 316294 , 316390 , 316430 , 316470 , 316510 , 316690 , 317060) THEN '18 RPM'	
	    WHEN BO.codigo_municipio IN (316720 , 314930 , 314110 , 314740 , 315360 , 310990 , 310500 , 311250 , 313570 , 313100 , 310320 , 312720 , 311890 , 312640 , 310960 , 315850) THEN '19 RPM'	
   	END AS RPM_2024, 
    CAST(bo.codigo_municipio as integer) AS codigo_municipio,
    bo.nome_municipio,
    bo.nome_bairro,
    bo.unidade_area_militar_codigo, 
    bo.unidade_area_militar_nome, 
    bo.unidade_responsavel_registro_codigo, 
    bo.unidade_responsavel_registro_nome
    FROM
        db_bisp_reds_reporting.tb_envolvido_ocorrencia ENV
        INNER JOIN db_bisp_reds_reporting.tb_ocorrencia BO ON BO.numero_ocorrencia = ENV.numero_ocorrencia
    WHERE
        1 = 1
        AND YEAR(BO.data_hora_fato) = :ANO
        AND MONTH (BO.data_hora_fato) >= :MESINICIAL
        AND MONTH (BO.data_hora_fato) <= :MESFINAL
        AND ENV.digitador_id_orgao in (0,1)
        AND (
            ENV.ind_mandado_prisao_atual = 'S'
            OR ENV.ind_mandado_prisao = 'S'
            )
        AND ENV.id_tipo_prisao_apreensao IN (1,2,3,4,6,7)-- FLAGRANTES(REDS E TCO),MANDADO, RECAPTURA, OUTROS
        AND BO.digitador_id_orgao  = 0
        AND BO.nome_tipo_relatorio not in ('RAT','BOS')
        AND BO.ocorrencia_uf = 'MG'
        AND BO.ind_estado in ('F','R')
        AND BO.codigo_municipio IN (310670 , 310810 , 310900 , 311860 , 312060 , 312410 , 312600 , 312980 , 313010 , 313220 , 313665 , 314015 , 314070 , 315040 , 315460 , 315530 , 316292 , 316553)
     --	AND		BO.data_hora_fechamento < '2024-04-05'    -- EXTRAÇÃO APENAS DE REGISTROS FECHADOS ATÉ O DIA ANTERIOR À DATA INFORMADA (ANO-MES-DIA)

---------------------------------------------------------------------------
--	PARA RESGATAR APENAS OS DADOS DOS MUNICÍPIOS SOB SUA RESPONSABILIDADE, 
--	INSERIR UMA LINHA LOGO ACIMA DESSE COMENTÁRIO, COM A SEGUINTE CLAUSULA:
--	AND BO.codigo_municipio IN (123456,456789,987654,......)
--	INSERIR OS DADOS DOS MUNICÍPIOS DESEJADOS
-- NO INÍCIO DO SCRIPT, É POSSÍVEL VERIFICAR ESSES CÓDIGOS, POR RPM E UEOP. 
--------------------------------------------------------------------------
)
SELECT
    DISTINCT
    CASE
        WHEN FAC.nome_completo_faccionado IS NOT NULL THEN 10
        WHEN MV.nome_completo_envolvido IS NOT NULL THEN 3
        WHEN RF.nome_completo_envolvido IS NOT NULL THEN 1
        WHEN VD.nome_completo_envolvido IS NOT NULL THEN 1
        ELSE 0
    END AS PESO, 
    
    CASE
        WHEN FAC.nome_completo_faccionado IS NOT NULL THEN 'FACCIONADO'
        WHEN MV.nome_completo_envolvido IS NOT NULL THEN 'MV_COMUM'
        WHEN RF.nome_completo_envolvido IS NOT NULL THEN 'ROUBO_FURTO'
        WHEN VD.nome_completo_envolvido IS NOT NULL THEN 'VIOLENCIA_DOMESTICA'
        ELSE 'MP_COMUM'
    END AS PESO_DESCRICAO,
    YEAR (M.data_hora_fato) as ANO,
    MONTH (M.data_hora_fato) as mes ,
    M.*
FROM
    PRESOS_MANDADO M
        LEFT JOIN FACCIONADOS FAC ON (
                FAC.nome_completo_faccionado = M.nome_completo_envolvido
                AND FAC.nome_mae_fac = M.nome_mae
                AND FAC.data_nascimento_fac = M.data_nascimento
         )
       LEFT JOIN PRESOS_MV MV ON (
        (           
                MV.nome_completo_envolvido = M.nome_completo_envolvido
                AND MV.nome_mae = M.nome_mae
                AND MV.data_nascimento = M.data_nascimento
        )
        AND M.data_hora_fato > MV.data_hora_fato
    )
    LEFT JOIN PRESOS_ROUBO_FURTO RF ON (
        (  
                RF.nome_completo_envolvido = M.nome_completo_envolvido
                AND RF.nome_mae = M.nome_mae
                AND RF.data_nascimento = M.data_nascimento
         )
        AND M.data_hora_fato > RF.data_hora_fato
    )
    LEFT JOIN PRESOS_VDOM VD ON (
    	(
	               VD.nome_completo_envolvido = M.nome_completo_envolvido
                AND VD.nome_mae = M.nome_mae
                AND VD.data_nascimento = M.data_nascimento
	      )
        AND M.data_hora_fato > VD.data_hora_fato
    )
    HAVING M.duplicado = 1
    ORDER BY M.NUMERO_OCORRENCIA
    ;