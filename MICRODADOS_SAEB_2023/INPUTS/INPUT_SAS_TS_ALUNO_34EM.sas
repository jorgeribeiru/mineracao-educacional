/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
/*                                   			                                       */
/*  Coordenação-Geral de Medidas da Educação Básica (CGMEB)                            */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_ALUNO_34EM                                               */
/*-------------------------------------------------------------------------------------*/
/* DESCRICAO:    PROGRAMA PARA LEITURA DOS RESULTADOS DOS ALUNOS DA                    */
/*                   3ª/4ª SÉRIE DO ENSINO MÉDIO DO SAEB 2023                          */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, é necessário salvar este programa e os arquivos           */
/* TS_ALUNO_34EM.CSV no diretório C:\ do computador.                                   */
/*							                                                           */ 
/* Ao terminar esses procedimentos, execute o programa salvo utilizando                */
/* as variáveis de interesse.                                                          */
/***************************************************************************************/
/*                                  ATENÇÃO                                            */ 
/***************************************************************************************/
/* Este programa abre a base de dados com os rótulos das variáveis de	               */
/* acordo com o dicionário de dados que compõe os microdados. Para abrir               */
/* os dados sem os rótulos, basta importar diretamente no SAS.                         */
/* 							                                                           */                                                            
/***************************************************************************************/

proc format;

value ID_REGIAO
1 = 'Norte'
2 = 'Nordeste'
3 = 'Sudeste'
4 = 'Sul'
5 = 'Centro-Oeste';

value ID_UF
11 = 'RO'
12 = 'AC'
13 = 'AM'
14 = 'RR'
15 = 'PA'
16 = 'AP'
17 = 'TO'
21 = 'MA'
22 = 'PI'
23 = 'CE'
24 = 'RN'
25 = 'PB'
26 = 'PE'
27 = 'AL'
28 = 'SE'
29 = 'BA'
31 = 'MG'
32 = 'ES'
33 = 'RJ'
35 = 'SP'
41 = 'PR'
42 = 'SC'
43 = 'RS'
50 = 'MS'
51 = 'MT'
52 = 'GO'
53 = 'DF';

value ID_AREA
1 = 'Capital'
2 = 'Interior';

value IN_PUBLICA
0 = 'Privada'
1 = 'Pública';

value ID_LOCALIZACAO
1 = 'Urbana'
2 = 'Rural';

value ID_SERIE
12 = '3ª/4ª séries do Ensino Médio Tradicional'
13 = '3ª/4ª séries do Ensino Médio Integrado';

value IN_SITUACAO_CENSO
0 = 'Não consistente'
1 = 'Consistente';

value IN_PREENCHIMENTO_LP
0 = 'Prova não preenchida'
1 = 'Prova preenchida';

value IN_PREENCHIMENTO_MT
0 = 'Prova não preenchida'
1 = 'Prova preenchida';

value IN_PRESENCA_LP
0 = 'Ausente'
1 = 'Presente';

value IN_PRESENCA_MT
0 = 'Ausente'
1 = 'Presente';

value IN_PROFICIENCIA_LP
0 = 'Não'
1 = 'Sim';

value IN_PROFICIENCIA_MT
0 = 'Não'
1 = 'Sim';

value IN_AMOSTRA
0 = 'Não'
1 = 'Sim';

value IN_PREENCHIMENTO_QUESTIONARIO
0 = 'Não preenchido'
1 = 'Preenchido parcial ou totalmente';

value IN_INSE
0 = 'Não'
1 = 'Sim';

value NU_TIPO_NIVEL_INSE
1 = 'Nível I'
2 = 'Nível II'
3 = 'Nível III'
4 = 'Nível IV'
5 = 'Nível V'
6 = 'Nível VI'
7 = 'Nível VII'
8 = 'Nível VIII';

value $TX_RESP_Q01_
* = 'Nulo'
. = 'Branco'
A = 'Masculino'
B = 'Feminino'
C = 'Não quero declarar';

value $TX_RESP_Q02_
* = 'Nulo'
. = 'Branco'
A = '16 anos ou menos'
B = '17 anos'
C = '18 anos'
D = '19 anos'
E = '20 anos'
F = '21 anos ou mais';

value $TX_RESP_Q03_
* = 'Nulo'
. = 'Branco'
A = 'Português'
B = 'Espanhol'
C = 'Língua de Sinais (Libras, Língua de Sinais Argentina, Língua de Sinais Boliviana etc.)'
D = 'Outra língua';

value $TX_RESP_Q04_
* = 'Nulo'
. = 'Branco'
A = 'Branca'
B = 'Preta'
C = 'Parda'
D = 'Amarela'
E = 'Indígena'
F = 'Não quero declarar';

value $TX_RESP_Q05a
* = 'Nulo'
. = 'Branco'
A = 'Não'
B = 'Sim';

value $TX_RESP_Q05b
* = 'Nulo'
. = 'Branco'
A = 'Não'
B = 'Sim';

value $TX_RESP_Q05c
* = 'Nulo'
. = 'Branco'
A = 'Não'
B = 'Sim';

value $TX_RESP_Q06_
* = 'Nulo'
. = 'Branco'
A = '2 pessoas'
B = '3 pessoas'
C = '4 pessoas'
D = '5 pessoas'
E = '6 pessoas ou mais';

value $TX_RESP_Q07a
* = 'Nulo'
. = 'Branco'
A = 'Não'
B = 'Sim';

value $TX_RESP_Q07b
* = 'Nulo'
. = 'Branco'
A = 'Não'
B = 'Sim';

value $TX_RESP_Q07c
* = 'Nulo'
. = 'Branco'
A = 'Não'
B = 'Sim';

value $TX_RESP_Q07d
* = 'Nulo'
. = 'Branco'
A = 'Não'
B = 'Sim';

value $TX_RESP_Q07e
* = 'Nulo'
. = 'Branco'
A = 'Não'
B = 'Sim';

value $TX_RESP_Q08_
* = 'Nulo'
. = 'Branco'
A = 'Não completou o 5º ano do Ensino Fundamental'
B = 'Ensino Fundamental, até o 5º ano'
C = 'Ensino Fundamental completo'
D = 'Ensino Médio completo'
E = 'Ensino Superior completo (faculdade ou graduação)'
F = 'Não sei';

value $TX_RESP_Q09_
* = 'Nulo'
. = 'Branco'
A = 'Não completou o 5º ano do Ensino Fundamental'
B = 'Ensino Fundamental, até o 5º ano'
C = 'Ensino Fundamental completo'
D = 'Ensino Médio completo'
E = 'Ensino Superior completo (faculdade ou graduação)'
F = 'Não sei';

value $TX_RESP_Q10a
* = 'Nulo'
. = 'Branco'
A = 'Nunca ou quase nunca'
B = 'De vez em quando'
C = 'Sempre ou quase sempre';

value $TX_RESP_Q10b
* = 'Nulo'
. = 'Branco'
A = 'Nunca ou quase nunca'
B = 'De vez em quando'
C = 'Sempre ou quase sempre';

value $TX_RESP_Q10c
* = 'Nulo'
. = 'Branco'
A = 'Nunca ou quase nunca'
B = 'De vez em quando'
C = 'Sempre ou quase sempre';

value $TX_RESP_Q10d
* = 'Nulo'
. = 'Branco'
A = 'Nunca ou quase nunca'
B = 'De vez em quando'
C = 'Sempre ou quase sempre';

value $TX_RESP_Q10e
* = 'Nulo'
. = 'Branco'
A = 'Nunca ou quase nunca'
B = 'De vez em quando'
C = 'Sempre ou quase sempre';

value $TX_RESP_Q10f
* = 'Nulo'
. = 'Branco'
A = 'Nunca ou quase nunca'
B = 'De vez em quando'
C = 'Sempre ou quase sempre';

value $TX_RESP_Q11a
* = 'Nulo'
. = 'Branco'
A = 'Não'
B = 'Sim';

value $TX_RESP_Q11b
* = 'Nulo'
. = 'Branco'
A = 'Não'
B = 'Sim';

value $TX_RESP_Q11c
* = 'Nulo'
. = 'Branco'
A = 'Não'
B = 'Sim';

value $TX_RESP_Q12a
* = 'Nulo'
. = 'Branco'
A = 'Nenhum'
B = '1'
C = '2'
D = '3 ou mais';

value $TX_RESP_Q12b
* = 'Nulo'
. = 'Branco'
A = 'Nenhum'
B = '1'
C = '2'
D = '3 ou mais';

value $TX_RESP_Q12c
* = 'Nulo'
. = 'Branco'
A = 'Nenhum'
B = '1'
C = '2'
D = '3 ou mais';

value $TX_RESP_Q12d
* = 'Nulo'
. = 'Branco'
A = 'Nenhum'
B = '1'
C = '2'
D = '3 ou mais';

value $TX_RESP_Q12e
* = 'Nulo'
. = 'Branco'
A = 'Nenhum'
B = '1'
C = '2'
D = '3 ou mais';

value $TX_RESP_Q12f
* = 'Nulo'
. = 'Branco'
A = 'Nenhum'
B = '1'
C = '2'
D = '3 ou mais';

value $TX_RESP_Q12g
* = 'Nulo'
. = 'Branco'
A = 'Nenhum'
B = '1'
C = '2'
D = '3 ou mais';

value $TX_RESP_Q13a
* = 'Nulo'
. = 'Branco'
A = 'Não'
B = 'Sim';

value $TX_RESP_Q13b
* = 'Nulo'
. = 'Branco'
A = 'Não'
B = 'Sim';

value $TX_RESP_Q13c
* = 'Nulo'
. = 'Branco'
A = 'Não'
B = 'Sim';

value $TX_RESP_Q13d
* = 'Nulo'
. = 'Branco'
A = 'Não'
B = 'Sim';

value $TX_RESP_Q13e
* = 'Nulo'
. = 'Branco'
A = 'Não'
B = 'Sim';

value $TX_RESP_Q13f
* = 'Nulo'
. = 'Branco'
A = 'Não'
B = 'Sim';

value $TX_RESP_Q13g
* = 'Nulo'
. = 'Branco'
A = 'Não'
B = 'Sim';

value $TX_RESP_Q13h
* = 'Nulo'
. = 'Branco'
A = 'Não'
B = 'Sim';

value $TX_RESP_Q13i
* = 'Nulo'
. = 'Branco'
A = 'Não'
B = 'Sim';

value $TX_RESP_Q14_
* = 'Nulo'
. = 'Branco'
A = 'Menos de 30 minutos'
B = 'Entre 30 minutos e uma hora'
C = 'Mais de uma hora';

value $TX_RESP_Q15a
* = 'Nulo'
. = 'Branco'
A = 'Não'
B = 'Sim';

value $TX_RESP_Q15b
* = 'Nulo'
. = 'Branco'
A = 'Não'
B = 'Sim';

value $TX_RESP_Q16_
* = 'Nulo'
. = 'Branco'
A = 'À pé'
B = 'De bicicleta'
C = 'De Van (ou Kombi)'
D = 'De ônibus'
E = 'De metrô (ou trem urbano)'
F = 'De carro'
G = 'De barco'
H = 'De motocicleta'
I = 'Outro meio de transporte';

value $TX_RESP_Q17_
* = 'Nulo'
. = 'Branco'
A = '3 anos ou menos'
B = '4 ou 5 anos'
C = '6 ou 7 anos'
D = '8 anos ou mais';

value $TX_RESP_Q18_
* = 'Nulo'
. = 'Branco'
A = 'Somente em escola pública'
B = 'Somente em escola particular'
C = 'Em escola pública e em escola particular';

value $TX_RESP_Q19_
* = 'Nulo'
. = 'Branco'
A = 'Não'
B = 'Sim, uma vez'
C = 'Sim, duas vezes ou mais';

value $TX_RESP_Q20_
* = 'Nulo'
. = 'Branco'
A = 'Nunca'
B = 'Sim, uma vez'
C = 'Sim, duas vezes ou mais';

value $TX_RESP_Q21a
* = 'Nulo'
. = 'Branco'
A = 'Não uso meu tempo para isso'
B = 'Menos de 1 hora'
C = 'Entre 1 e 2 horas'
D = 'Mais de 2 horas';

value $TX_RESP_Q21b
* = 'Nulo'
. = 'Branco'
A = 'Não uso meu tempo para isso'
B = 'Menos de 1 hora'
C = 'Entre 1 e 2 horas'
D = 'Mais de 2 horas';

value $TX_RESP_Q21c
* = 'Nulo'
. = 'Branco'
A = 'Não uso meu tempo para isso'
B = 'Menos de 1 hora'
C = 'Entre 1 e 2 horas'
D = 'Mais de 2 horas';

value $TX_RESP_Q21d
* = 'Nulo'
. = 'Branco'
A = 'Não uso meu tempo para isso'
B = 'Menos de 1 hora'
C = 'Entre 1 e 2 horas'
D = 'Mais de 2 horas';

value $TX_RESP_Q21e
* = 'Nulo'
. = 'Branco'
A = 'Não uso meu tempo para isso'
B = 'Menos de 1 hora'
C = 'Entre 1 e 2 horas'
D = 'Mais de 2 horas';

value $TX_RESP_Q22a
* = 'Nulo'
. = 'Branco'
A = 'Todos eles'
B = 'A maior parte deles'
C = 'Poucos deles'
D = 'Nenhum deles';

value $TX_RESP_Q22b
* = 'Nulo'
. = 'Branco'
A = 'Todos eles'
B = 'A maior parte deles'
C = 'Poucos deles'
D = 'Nenhum deles';

value $TX_RESP_Q22c
* = 'Nulo'
. = 'Branco'
A = 'Todos eles'
B = 'A maior parte deles'
C = 'Poucos deles'
D = 'Nenhum deles';

value $TX_RESP_Q22d
* = 'Nulo'
. = 'Branco'
A = 'Todos eles'
B = 'A maior parte deles'
C = 'Poucos deles'
D = 'Nenhum deles';

value $TX_RESP_Q22e
* = 'Nulo'
. = 'Branco'
A = 'Todos eles'
B = 'A maior parte deles'
C = 'Poucos deles'
D = 'Nenhum deles';

value $TX_RESP_Q22f
* = 'Nulo'
. = 'Branco'
A = 'Todos eles'
B = 'A maior parte deles'
C = 'Poucos deles'
D = 'Nenhum deles';

value $TX_RESP_Q22g
* = 'Nulo'
. = 'Branco'
A = 'Todos eles'
B = 'A maior parte deles'
C = 'Poucos deles'
D = 'Nenhum deles';

value $TX_RESP_Q22h
* = 'Nulo'
. = 'Branco'
A = 'Todos eles'
B = 'A maior parte deles'
C = 'Poucos deles'
D = 'Nenhum deles';

value $TX_RESP_Q23a
* = 'Nulo'
. = 'Branco'
A = 'Concordo totalmente'
B = 'Concordo'
C = 'Discordo'
D = 'Discordo totalmente';

value $TX_RESP_Q23b
* = 'Nulo'
. = 'Branco'
A = 'Concordo totalmente'
B = 'Concordo'
C = 'Discordo'
D = 'Discordo totalmente';

value $TX_RESP_Q23c
* = 'Nulo'
. = 'Branco'
A = 'Concordo totalmente'
B = 'Concordo'
C = 'Discordo'
D = 'Discordo totalmente';

value $TX_RESP_Q23d
* = 'Nulo'
. = 'Branco'
A = 'Concordo totalmente'
B = 'Concordo'
C = 'Discordo'
D = 'Discordo totalmente';

value $TX_RESP_Q23e
* = 'Nulo'
. = 'Branco'
A = 'Concordo totalmente'
B = 'Concordo'
C = 'Discordo'
D = 'Discordo totalmente';

value $TX_RESP_Q23f
* = 'Nulo'
. = 'Branco'
A = 'Concordo totalmente'
B = 'Concordo'
C = 'Discordo'
D = 'Discordo totalmente';

value $TX_RESP_Q23g
* = 'Nulo'
. = 'Branco'
A = 'Concordo totalmente'
B = 'Concordo'
C = 'Discordo'
D = 'Discordo totalmente';

value $TX_RESP_Q23h
* = 'Nulo'
. = 'Branco'
A = 'Concordo totalmente'
B = 'Concordo'
C = 'Discordo'
D = 'Discordo totalmente';

value $TX_RESP_Q23i
* = 'Nulo'
. = 'Branco'
A = 'Concordo totalmente'
B = 'Concordo'
C = 'Discordo'
D = 'Discordo totalmente';

value $TX_RESP_Q24_
* = 'Nulo'
. = 'Branco'
A = 'Somente continuar estudando'
B = 'Somente trabalhar'
C = 'Continuar estudando e trabalhar'
D = 'Ainda não sei';

value $TX_RESP_Q25_
* = 'Nulo'
. = 'Branco'
A = 'Não'
B = 'Sim';


DATA WORK.TS_ALUNO_34EM;
INFILE 'C:\TS_ALUNO_34EM.csv' /* <-- Endereço do arquivo*/

        LRECL=500
		firstobs=2
        DLM=";"
        MISSOVER
        DSD ;
 
INPUT
        ID_SAEB          : ?? BEST4.
        ID_REGIAO        : ?? BEST1.
        ID_UF            : ?? BEST2.
        ID_MUNICIPIO     : ?? BEST7.
        ID_AREA          : ?? BEST1.
        ID_ESCOLA        : ?? BEST8.
        IN_PUBLICA       : ?? BEST1.
        ID_LOCALIZACAO   : ?? BEST1.
        ID_TURMA         : ?? BEST7.
        ID_SERIE         : ?? BEST2.
        ID_ALUNO         : ?? BEST8.
        IN_SITUACAO_CENSO : ?? BEST1.
        IN_PREENCHIMENTO_LP : ?? BEST1.
        IN_PREENCHIMENTO_MT : ?? BEST1.
        IN_PRESENCA_LP   : ?? BEST1.
        IN_PRESENCA_MT   : ?? BEST1.
        ID_CADERNO_LP    : ?? BEST2.
        ID_BLOCO_1_LP    : ?? BEST1.
        ID_BLOCO_2_LP    : ?? BEST1.
        ID_CADERNO_MT    : ?? BEST2.
        ID_BLOCO_1_MT    : ?? BEST1.
        ID_BLOCO_2_MT    : ?? BEST1.
        TX_RESP_BLOCO1_LP : $CHAR13.
        TX_RESP_BLOCO2_LP : $CHAR13.
        TX_RESP_BLOCO1_MT : $CHAR13.
        TX_RESP_BLOCO2_MT : $CHAR13.
        IN_PROFICIENCIA_LP : ?? BEST1.
        IN_PROFICIENCIA_MT : ?? BEST1.
        IN_AMOSTRA       : ?? BEST1.
        ESTRATO          : ?? BEST11.
        PESO_ALUNO_LP    : ?? COMMA19.
        PROFICIENCIA_LP  : ?? COMMA9.
        ERRO_PADRAO_LP   : ?? COMMA8.
        PROFICIENCIA_LP_SAEB : ?? COMMA10.
        ERRO_PADRAO_LP_SAEB : ?? COMMA9.
        PESO_ALUNO_MT    : ?? COMMA19.
        PROFICIENCIA_MT  : ?? COMMA9.
        ERRO_PADRAO_MT   : ?? COMMA8.
        PROFICIENCIA_MT_SAEB : ?? COMMA10.
        ERRO_PADRAO_MT_SAEB : ?? COMMA9.
        IN_PREENCHIMENTO_QUESTIONARIO : ?? BEST1.
        IN_INSE          : ?? BEST1.
        INSE_ALUNO       : ?? COMMA4.
        NU_TIPO_NIVEL_INSE : ?? BEST1.
        PESO_ALUNO_INSE  : ?? COMMA12.
        TX_RESP_Q01      : $CHAR1.
        TX_RESP_Q02      : $CHAR1.
        TX_RESP_Q03      : $CHAR1.
        TX_RESP_Q04      : $CHAR1.
        TX_RESP_Q05a     : $CHAR1.
        TX_RESP_Q05b     : $CHAR1.
        TX_RESP_Q05c     : $CHAR1.
        TX_RESP_Q06      : $CHAR1.
        TX_RESP_Q07a     : $CHAR1.
        TX_RESP_Q07b     : $CHAR1.
        TX_RESP_Q07c     : $CHAR1.
        TX_RESP_Q07d     : $CHAR1.
        TX_RESP_Q07e     : $CHAR1.
        TX_RESP_Q08      : $CHAR1.
        TX_RESP_Q09      : $CHAR1.
        TX_RESP_Q10a     : $CHAR1.
        TX_RESP_Q10b     : $CHAR1.
        TX_RESP_Q10c     : $CHAR1.
        TX_RESP_Q10d     : $CHAR1.
        TX_RESP_Q10e     : $CHAR1.
        TX_RESP_Q10f     : $CHAR1.
        TX_RESP_Q11a     : $CHAR1.
        TX_RESP_Q11b     : $CHAR1.
        TX_RESP_Q11c     : $CHAR1.
        TX_RESP_Q12a     : $CHAR1.
        TX_RESP_Q12b     : $CHAR1.
        TX_RESP_Q12c     : $CHAR1.
        TX_RESP_Q12d     : $CHAR1.
        TX_RESP_Q12e     : $CHAR1.
        TX_RESP_Q12f     : $CHAR1.
        TX_RESP_Q12g     : $CHAR1.
        TX_RESP_Q13a     : $CHAR1.
        TX_RESP_Q13b     : $CHAR1.
        TX_RESP_Q13c     : $CHAR1.
        TX_RESP_Q13d     : $CHAR1.
        TX_RESP_Q13e     : $CHAR1.
        TX_RESP_Q13f     : $CHAR1.
        TX_RESP_Q13g     : $CHAR1.
        TX_RESP_Q13h     : $CHAR1.
        TX_RESP_Q13i     : $CHAR1.
        TX_RESP_Q14      : $CHAR1.
        TX_RESP_Q15a     : $CHAR1.
        TX_RESP_Q15b     : $CHAR1.
        TX_RESP_Q16      : $CHAR1.
        TX_RESP_Q17      : $CHAR1.
        TX_RESP_Q18      : $CHAR1.
        TX_RESP_Q19      : $CHAR1.
        TX_RESP_Q20      : $CHAR1.
        TX_RESP_Q21a     : $CHAR1.
        TX_RESP_Q21b     : $CHAR1.
        TX_RESP_Q21c     : $CHAR1.
        TX_RESP_Q21d     : $CHAR1.
        TX_RESP_Q21e     : $CHAR1.
        TX_RESP_Q22a     : $CHAR1.
        TX_RESP_Q22b     : $CHAR1.
        TX_RESP_Q22c     : $CHAR1.
        TX_RESP_Q22d     : $CHAR1.
        TX_RESP_Q22e     : $CHAR1.
        TX_RESP_Q22f     : $CHAR1.
        TX_RESP_Q22g     : $CHAR1.
        TX_RESP_Q22h     : $CHAR1.
        TX_RESP_Q23a     : $CHAR1.
        TX_RESP_Q23b     : $CHAR1.
        TX_RESP_Q23c     : $CHAR1.
        TX_RESP_Q23d     : $CHAR1.
        TX_RESP_Q23e     : $CHAR1.
        TX_RESP_Q23f     : $CHAR1.
        TX_RESP_Q23g     : $CHAR1.
        TX_RESP_Q23h     : $CHAR1.
        TX_RESP_Q23i     : $CHAR1.
        TX_RESP_Q24      : $CHAR1.
        TX_RESP_Q25      : $CHAR1. ;

ATTRIB ID_REGIAO FORMAT=ID_REGIAO.;
ATTRIB ID_UF FORMAT=ID_UF.;
ATTRIB ID_AREA FORMAT=ID_AREA.;
ATTRIB IN_PUBLICA FORMAT=IN_PUBLICA.;
ATTRIB ID_LOCALIZACAO FORMAT=ID_LOCALIZACAO.;
ATTRIB ID_SERIE FORMAT=ID_SERIE.;
ATTRIB IN_SITUACAO_CENSO FORMAT=IN_SITUACAO_CENSO.;
ATTRIB IN_PREENCHIMENTO_LP FORMAT=IN_PREENCHIMENTO_LP.;
ATTRIB IN_PREENCHIMENTO_MT FORMAT=IN_PREENCHIMENTO_MT.;
ATTRIB IN_PRESENCA_LP FORMAT=IN_PRESENCA_LP.;
ATTRIB IN_PRESENCA_MT FORMAT=IN_PRESENCA_MT.;
ATTRIB IN_PROFICIENCIA_LP FORMAT=IN_PROFICIENCIA_LP.;
ATTRIB IN_PROFICIENCIA_MT FORMAT=IN_PROFICIENCIA_MT.;
ATTRIB IN_AMOSTRA FORMAT=IN_AMOSTRA.;
ATTRIB IN_PREENCHIMENTO_QUESTIONARIO FORMAT=IN_PREENCHIMENTO_QUESTIONARIO.;
ATTRIB IN_INSE FORMAT=IN_INSE.;
ATTRIB NU_TIPO_NIVEL_INSE FORMAT=NU_TIPO_NIVEL_INSE.;
ATTRIB TX_RESP_Q01 FORMAT=TX_RESP_Q01_.;
ATTRIB TX_RESP_Q02 FORMAT=TX_RESP_Q02_.;
ATTRIB TX_RESP_Q03 FORMAT=TX_RESP_Q03_.;
ATTRIB TX_RESP_Q04 FORMAT=TX_RESP_Q04_.;
ATTRIB TX_RESP_Q05a FORMAT=TX_RESP_Q05a.;
ATTRIB TX_RESP_Q05b FORMAT=TX_RESP_Q05b.;
ATTRIB TX_RESP_Q05c FORMAT=TX_RESP_Q05c.;
ATTRIB TX_RESP_Q06 FORMAT=TX_RESP_Q06_.;
ATTRIB TX_RESP_Q07a FORMAT=TX_RESP_Q07a.;
ATTRIB TX_RESP_Q07b FORMAT=TX_RESP_Q07b.;
ATTRIB TX_RESP_Q07c FORMAT=TX_RESP_Q07c.;
ATTRIB TX_RESP_Q07d FORMAT=TX_RESP_Q07d.;
ATTRIB TX_RESP_Q07e FORMAT=TX_RESP_Q07e.;
ATTRIB TX_RESP_Q08 FORMAT=TX_RESP_Q08_.;
ATTRIB TX_RESP_Q09 FORMAT=TX_RESP_Q09_.;
ATTRIB TX_RESP_Q10a FORMAT=TX_RESP_Q10a.;
ATTRIB TX_RESP_Q10b FORMAT=TX_RESP_Q10b.;
ATTRIB TX_RESP_Q10c FORMAT=TX_RESP_Q10c.;
ATTRIB TX_RESP_Q10d FORMAT=TX_RESP_Q10d.;
ATTRIB TX_RESP_Q10e FORMAT=TX_RESP_Q10e.;
ATTRIB TX_RESP_Q10f FORMAT=TX_RESP_Q10f.;
ATTRIB TX_RESP_Q11a FORMAT=TX_RESP_Q11a.;
ATTRIB TX_RESP_Q11b FORMAT=TX_RESP_Q11b.;
ATTRIB TX_RESP_Q11c FORMAT=TX_RESP_Q11c.;
ATTRIB TX_RESP_Q12a FORMAT=TX_RESP_Q12a.;
ATTRIB TX_RESP_Q12b FORMAT=TX_RESP_Q12b.;
ATTRIB TX_RESP_Q12c FORMAT=TX_RESP_Q12c.;
ATTRIB TX_RESP_Q12d FORMAT=TX_RESP_Q12d.;
ATTRIB TX_RESP_Q12e FORMAT=TX_RESP_Q12e.;
ATTRIB TX_RESP_Q12f FORMAT=TX_RESP_Q12f.;
ATTRIB TX_RESP_Q12g FORMAT=TX_RESP_Q12g.;
ATTRIB TX_RESP_Q13a FORMAT=TX_RESP_Q13a.;
ATTRIB TX_RESP_Q13b FORMAT=TX_RESP_Q13b.;
ATTRIB TX_RESP_Q13c FORMAT=TX_RESP_Q13c.;
ATTRIB TX_RESP_Q13d FORMAT=TX_RESP_Q13d.;
ATTRIB TX_RESP_Q13e FORMAT=TX_RESP_Q13e.;
ATTRIB TX_RESP_Q13f FORMAT=TX_RESP_Q13f.;
ATTRIB TX_RESP_Q13g FORMAT=TX_RESP_Q13g.;
ATTRIB TX_RESP_Q13h FORMAT=TX_RESP_Q13h.;
ATTRIB TX_RESP_Q13i FORMAT=TX_RESP_Q13i.;
ATTRIB TX_RESP_Q14 FORMAT=TX_RESP_Q14_.;
ATTRIB TX_RESP_Q15a FORMAT=TX_RESP_Q15a.;
ATTRIB TX_RESP_Q15b FORMAT=TX_RESP_Q15b.;
ATTRIB TX_RESP_Q16 FORMAT=TX_RESP_Q16_.;
ATTRIB TX_RESP_Q17 FORMAT=TX_RESP_Q17_.;
ATTRIB TX_RESP_Q18 FORMAT=TX_RESP_Q18_.;
ATTRIB TX_RESP_Q19 FORMAT=TX_RESP_Q19_.;
ATTRIB TX_RESP_Q20 FORMAT=TX_RESP_Q20_.;
ATTRIB TX_RESP_Q21a FORMAT=TX_RESP_Q21a.;
ATTRIB TX_RESP_Q21b FORMAT=TX_RESP_Q21b.;
ATTRIB TX_RESP_Q21c FORMAT=TX_RESP_Q21c.;
ATTRIB TX_RESP_Q21d FORMAT=TX_RESP_Q21d.;
ATTRIB TX_RESP_Q21e FORMAT=TX_RESP_Q21e.;
ATTRIB TX_RESP_Q22a FORMAT=TX_RESP_Q22a.;
ATTRIB TX_RESP_Q22b FORMAT=TX_RESP_Q22b.;
ATTRIB TX_RESP_Q22c FORMAT=TX_RESP_Q22c.;
ATTRIB TX_RESP_Q22d FORMAT=TX_RESP_Q22d.;
ATTRIB TX_RESP_Q22e FORMAT=TX_RESP_Q22e.;
ATTRIB TX_RESP_Q22f FORMAT=TX_RESP_Q22f.;
ATTRIB TX_RESP_Q22g FORMAT=TX_RESP_Q22g.;
ATTRIB TX_RESP_Q22h FORMAT=TX_RESP_Q22h.;
ATTRIB TX_RESP_Q23a FORMAT=TX_RESP_Q23a.;
ATTRIB TX_RESP_Q23b FORMAT=TX_RESP_Q23b.;
ATTRIB TX_RESP_Q23c FORMAT=TX_RESP_Q23c.;
ATTRIB TX_RESP_Q23d FORMAT=TX_RESP_Q23d.;
ATTRIB TX_RESP_Q23e FORMAT=TX_RESP_Q23e.;
ATTRIB TX_RESP_Q23f FORMAT=TX_RESP_Q23f.;
ATTRIB TX_RESP_Q23g FORMAT=TX_RESP_Q23g.;
ATTRIB TX_RESP_Q23h FORMAT=TX_RESP_Q23h.;
ATTRIB TX_RESP_Q23i FORMAT=TX_RESP_Q23i.;
ATTRIB TX_RESP_Q24 FORMAT=TX_RESP_Q24_.;
ATTRIB TX_RESP_Q25 FORMAT=TX_RESP_Q25_.;


LABEL

ID_SAEB = 'Ano de aplicação do Saeb'
ID_REGIAO = 'Código da Região'
ID_UF = 'Código da Unidade da Federação'
ID_MUNICIPIO = 'Máscaras dos Códigos de Municípios (são códigos fictícios)'
ID_AREA = 'Área'
ID_ESCOLA = 'Máscaras dos Códigos de Escola (são códigos fictícios)'
IN_PUBLICA = 'Indica se a escola é pública ou não'
ID_LOCALIZACAO = 'Localização'
ID_TURMA = 'Código da turma no Saeb'
ID_SERIE = 'Ano Escolar'
ID_ALUNO = 'Código do aluno no Saeb'
IN_SITUACAO_CENSO = 'Indicador de consistência entre os dados da aplicação do Saeb 2023 com o Censo da Educação Básica 2023 finalizado'
IN_PREENCHIMENTO_LP = 'Indicador de preenchimento da prova de Língua Portuguesa'
IN_PREENCHIMENTO_MT = 'Indicador de preenchimento da prova de Matemática'
IN_PRESENCA_LP = 'Indicador de presença na prova de Língua Portuguesa'
IN_PRESENCA_MT = 'Indicador de presença na prova de Matemática'
ID_CADERNO_LP = 'Número do caderno de prova de Língua Portuguesa'
ID_BLOCO_1_LP = 'Identificador do Bloco 1 de Língua Portuguesa'
ID_BLOCO_2_LP = 'Identificador do Bloco 2 de Língua Portuguesa'
ID_CADERNO_MT = 'Número do caderno de prova de Matemática'
ID_BLOCO_1_MT = 'Identificador do Bloco 1 de Matemática'
ID_BLOCO_2_MT = 'Identificador do Bloco 2 de Matemática'
TX_RESP_BLOCO1_LP = 'Resposta do aluno ao Bloco 1 de Língua Portuguesa'
TX_RESP_BLOCO2_LP = 'Resposta do aluno ao Bloco 2 de Língua Portuguesa'
TX_RESP_BLOCO1_MT = 'Resposta do aluno ao Bloco 1 de Matemática'
TX_RESP_BLOCO2_MT = 'Resposta do aluno ao Bloco 2 de Matemática'
IN_PROFICIENCIA_LP = 'Indicador para cálculo da proficiência (no mínimo três itens respondidos no caderno de prova de Língua Portuguesa e Matemática)'
IN_PROFICIENCIA_MT = 'Indicador para cálculo da proficiência (no mínimo três itens respondidos no caderno de prova de Língua Portuguesa e Matemática)'
IN_AMOSTRA = 'Indicador de participação da amostra'
ESTRATO = 'Descrição dos estratos'
PESO_ALUNO_LP = 'Peso do aluno em Língua Portuguesa'
PROFICIENCIA_LP = 'Proficiência do aluno em Língua Portuguesa calculada na escala única do SAEB, com média = 0 e desvio = 1 na população de referência'
ERRO_PADRAO_LP = 'Erro padrão da proficiência em Língua Portuguesa'
PROFICIENCIA_LP_SAEB = 'Proficiência em Língua Portuguesa transformada na escala única do SAEB, com média = 250, desvio = 50 (do SAEB/97)'
ERRO_PADRAO_LP_SAEB = 'Erro padrão da proficiência transformada em Língua Portuguesa'
PESO_ALUNO_MT = 'Peso do aluno em Matemática'
PROFICIENCIA_MT = 'Proficiência do aluno em Matemática calculada na escala única do SAEB, com média = 0 e desvio = 1 na população de referência'
ERRO_PADRAO_MT = 'Erro padrão da proficiência em Matemática'
PROFICIENCIA_MT_SAEB = 'Proficiência do aluno em Matemática transformada na escala única do SAEB, com média = 250, desvio = 50 (do SAEB/97)'
ERRO_PADRAO_MT_SAEB = 'Erro padrão da proficiência transformada em Matemática'
IN_PREENCHIMENTO_QUESTIONARIO = 'Indicador de preenchimento do questionário'
IN_INSE = 'Indicador para cálculo do INSE (São considerados válidos os estudantes que responderam pelo menos 8 itens, dentre os 17 utilizados para o cálculo do indicador)'
INSE_ALUNO = 'Resultado individual do INSE para o aluno'
NU_TIPO_NIVEL_INSE = 'Classificação do Indicador de Nível Socioeconômico em 8 Grupos (para melhor entendimento dos grupos, consultar a nota técnica disponível no portal do Inep)'
PESO_ALUNO_INSE = 'Peso do Aluno para cálculo do INSE 2023'
TX_RESP_Q01 = 'Qual é o seu sexo?'
TX_RESP_Q02 = 'Qual é a sua idade?'
TX_RESP_Q03 = 'Qual língua que seus pais falam com mais frequência em casa?'
TX_RESP_Q04 = 'Qual é a sua cor ou raça?'
TX_RESP_Q05a = 'Você possui deficiência, transtorno do espectro autista ou superdotação? - Deficiência.'
TX_RESP_Q05b = 'Você possui deficiência, transtorno do espectro autista ou superdotação? - Transtorno do espectro autista.'
TX_RESP_Q05c = 'Você possui deficiência, transtorno do espectro autista ou superdotação? - Altas habilidades ou superdotação.'
TX_RESP_Q06 = 'Quantas pessoas moram na sua casa, contando com você?'
TX_RESP_Q07a = 'Normalmente, quem mora na sua casa? - Mãe(s) ou madrasta(s).'
TX_RESP_Q07b = 'Normalmente, quem mora na sua casa? - Pai(s) ou padrasto(s).'
TX_RESP_Q07c = 'Normalmente, quem mora na sua casa? - Avó(s).'
TX_RESP_Q07d = 'Normalmente, quem mora na sua casa? - Avô(s).'
TX_RESP_Q07e = 'Normalmente, quem mora na sua casa? - Outros familiares, irmãos(ãs), tios(as), primos(as) etc.'
TX_RESP_Q08 = 'Qual é a maior escolaridade da sua mãe (ou madrasta ou mulher responsável por você)?'
TX_RESP_Q09 = 'Qual é a maior escolaridade de seu pai (ou padrasto homem responsável por você)?'
TX_RESP_Q10a = 'Com que frequência seus pais ou responsáveis costumam: - Ler em casa.'
TX_RESP_Q10b = 'Com que frequência seus pais ou responsáveis costumam: - Conversar com você sobre o que acontece na escola.'
TX_RESP_Q10c = 'Com que frequência seus pais ou responsáveis costumam: - Incentivar você a estudar.'
TX_RESP_Q10d = 'Com que frequência seus pais ou responsáveis costumam: - Incentivar você a fazer a tarefa de casa.'
TX_RESP_Q10e = 'Com que frequência seus pais ou responsáveis costumam: - Incentivar você a comparecer às aulas.'
TX_RESP_Q10f = 'Com que frequência seus pais ou responsáveis costumam: - Ir às reuniões de pais na escola.'
TX_RESP_Q11a = 'Na rua em que você mora tem: - Asfalto ou calçamento.'
TX_RESP_Q11b = 'Na rua em que você mora tem: - Água tratada.'
TX_RESP_Q11c = 'Na rua em que você mora tem: - Iluminação.'
TX_RESP_Q12a = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Geladeira.'
TX_RESP_Q12b = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Computador (ou notebook).'
TX_RESP_Q12c = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Quartos para dormir.'
TX_RESP_Q12d = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Televisão.'
TX_RESP_Q12e = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Banheiro.'
TX_RESP_Q12f = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Carro.'
TX_RESP_Q12g = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Celular com internet (smartphone).'
TX_RESP_Q13a = 'Na sua casa tem: - Tv por internet (Netflix, GloboPlay, etc.).'
TX_RESP_Q13b = 'Na sua casa tem: - Rede Wi-Fi.'
TX_RESP_Q13c = 'Na sua casa tem: - Um quarto só seu.'
TX_RESP_Q13d = 'Na sua casa tem: - Mesa para estudar.'
TX_RESP_Q13e = 'Na sua casa tem: - Forno de microondas.'
TX_RESP_Q13f = 'Na sua casa tem: - Aspirador de pó.'
TX_RESP_Q13g = 'Na sua casa tem: - Máquina de lavar roupa.'
TX_RESP_Q13h = 'Na sua casa tem: - Freezer (independente ou segunda porta da geladeira).'
TX_RESP_Q13i = 'Na sua casa tem: - Garagem.'
TX_RESP_Q14 = 'Quanto tempo você demora para chegar à sua escola?'
TX_RESP_Q15a = 'Você utiliza para ir à escola: - Transporte gratuito escolar.'
TX_RESP_Q15b = 'Você utiliza para ir à escola: - Passe escolar.'
TX_RESP_Q16 = 'Considerando a maior distância percorrida, normalmente de que forma você chega à sua escola?'
TX_RESP_Q17 = 'Com que idade você entrou na escola?'
TX_RESP_Q18 = 'A partir do primeiro ano do ensino fundamental, em que tipo de escola você estudou?'
TX_RESP_Q19 = 'Você já foi reprovado(a)?'
TX_RESP_Q20 = 'Alguma vez você abandonou a escola deixando de frequentá-la até o final do ano escolar?'
TX_RESP_Q21a = 'Fora da escola em dias de aula, quanto tempo você usa para: - Estudar (lição de casa, trabalhos escolares, etc.).'
TX_RESP_Q21b = 'Fora da escola em dias de aula, quanto tempo você usa para: - Fazer cursos ou atividades extracurriculares (idioma, artes, informática etc.).'
TX_RESP_Q21c = 'Fora da escola em dias de aula, quanto tempo você usa para: - Trabalhar em casa (lavar louça, limpar quintal, cuidar dos irmãos, etc.).'
TX_RESP_Q21d = 'Fora da escola em dias de aula, quanto tempo você usa para: - Trabalhar fora de casa (recebendo ou não um salário).'
TX_RESP_Q21e = 'Fora da escola em dias de aula, quanto tempo você usa para: - Lazer (TV, brincar, internet, música etc.).'
TX_RESP_Q22a = 'Para os próximos itens, indique qual é a proporção de professores(as) da sua turma que abordam os seguintes temas em sala de aula: - No início do ano, eles(as) informaram sobre o que seria ensinado e aprendido?'
TX_RESP_Q22b = 'Para os próximos itens, indique qual é a proporção de professores(as) da sua turma que abordam os seguintes temas em sala de aula: - Antes de iniciar um novo conteúdo, eles(as) perguntam o que vocês sabem sobre o conteúdo?'
TX_RESP_Q22c = 'Para os próximos itens, indique qual é a proporção de professores(as) da sua turma que abordam os seguintes temas em sala de aula: - Eles(as) trazem temas do cotidiano para serem debatidos em sala de aula?'
TX_RESP_Q22d = 'Para os próximos itens, indique qual é a proporção de professores(as) da sua turma que abordam os seguintes temas em sala de aula: - Eles(as) abordam temas sobre desigualdade racial?'
TX_RESP_Q22e = 'Para os próximos itens, indique qual é a proporção de professores(as) da sua turma que abordam os seguintes temas em sala de aula: - Eles(as) abordam temas sobre desigualdade de gênero?'
TX_RESP_Q22f = 'Para os próximos itens, indique qual é a proporção de professores(as) da sua turma que abordam os seguintes temas em sala de aula: - Eles(as) abordam temas como bullying e outras formas de violência?'
TX_RESP_Q22g = 'Para os próximos itens, indique qual é a proporção de professores(as) da sua turma que abordam os seguintes temas em sala de aula: - Eles(as) desenvolvem trabalhos em grupos?'
TX_RESP_Q22h = 'Para os próximos itens, indique qual é a proporção de professores(as) da sua turma que abordam os seguintes temas em sala de aula: - Eles(as) abordam questões relacionadas ao futuro profissional dos(as) estudantes?'
TX_RESP_Q23a = 'Sobre sua escola, indique o quanto você concorda ou discorda das afirmações abaixo: - Eu me interesso sobre o que foi ensinado na escola neste ano.'
TX_RESP_Q23b = 'Sobre sua escola, indique o quanto você concorda ou discorda das afirmações abaixo: - Eu me sinto motivado(a), no dia a dia, a usar o que foi ensinado.'
TX_RESP_Q23c = 'Sobre sua escola, indique o quanto você concorda ou discorda das afirmações abaixo: - Há espaço para diferentes opiniões na minha sala de aula.'
TX_RESP_Q23d = 'Sobre sua escola, indique o quanto você concorda ou discorda das afirmações abaixo: - Eu me sinto seguro(a) quando estou na escola.'
TX_RESP_Q23e = 'Sobre sua escola, indique o quanto você concorda ou discorda das afirmações abaixo: - Eu me sinto à vontade para discordar dos(as) meus(minhas) professores(as).'
TX_RESP_Q23f = 'Sobre sua escola, indique o quanto você concorda ou discorda das afirmações abaixo: - Eu consigo argumentar sobre conteúdos difíceis.'
TX_RESP_Q23g = 'Sobre sua escola, indique o quanto você concorda ou discorda das afirmações abaixo: - Os resultados das avaliações representam o quanto eu aprendi.'
TX_RESP_Q23h = 'Sobre sua escola, indique o quanto você concorda ou discorda das afirmações abaixo: - Meus (Minhas) professores(as) acreditam que eu sou capaz de aprender.'
TX_RESP_Q23i = 'Sobre sua escola, indique o quanto você concorda ou discorda das afirmações abaixo: -Meus (Minhas) professores(as) me motivam a continuar meus estudos.'
TX_RESP_Q24 = 'Quando terminar o Ensino Médio, você pretende:'
TX_RESP_Q25 = 'Você concluiu o Ensino Fundamental na Educação de Jovens e Adultos (EJA), antigo supletivo?'

;run;

quit;