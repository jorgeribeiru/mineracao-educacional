/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
/*                                   			                                       */
/*  Coordenação-Geral de Medidas da Educação Básica (CGMEB)                            */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*              INPUT_SAS_TS_PROFESSOR                                                 */
/*-------------------------------------------------------------------------------------*/
/*  DESCRICAO:  PROGRAMA PARA LEITURA DOS QUESTIONÁRIOS DOS PROFESSORES DO SAEB 2023   */
/*                                                                                     */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, é necessário salvar este programa e o arquivo             */
/* TS_PROFESSOR.CSV no diretório C:\ do computador.	                                   */
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
0='Privada'
1='Pública';

value ID_LOCALIZACAO
1='Urbana'
2='Rural';

value ID_SERIE
2 = '2º Ano do Ensino Fundamental'
5 = '5º Ano do Ensino Fundamental'
9 = '9º Ano do Ensino Fundamental'
12 = '3ª/4ª séries do Ensino Médio Tradicional'
13 = '3ª/4ª séries do Ensino Médio Integrado';

value SQ_QUESTIONARIO
0 = 'Turmas que não participaram da aplicação do questionário eletrônico'
5 = 'Professor único - 2º e 5º ano'
1 = 'Língua /Literatura Portuguesa' 
2 = 'Matemática' 
3 = 'Ciências Humanas' 
4 = 'Ciências Da Natureza';

value IN_PREENCHIMENTO_QUESTIONARIO
0 = 'Não preenchido'
1 = 'Preenchido parcial ou totalmente';

value IN_PREENCHIMENTO_OUTRA_TURMA
0 = 'Não'
1 = 'Sim';

value $TX_Q001_
A = 'Masculino'
B = 'Feminino'
C = 'Não quero declarar';

value $TX_Q003_
A = 'Branca'
B = 'Preta'
C = 'Parda'
D = 'Amarela'
E = 'Indígena'
F = 'Não quero declarar';

value $TX_Q004_
A = 'Não'
B = 'Sim';

value $TX_Q005_
A = 'Não'
B = 'Sim';

value $TX_Q006_
A = 'Não'
B = 'Sim';

value $TX_Q007_
A = 'Não'
B = 'Sim';

value $TX_Q008_
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q009_
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q010_
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q011_
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q012_
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q013_
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q014_
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q015_
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente';

value $TX_Q016_
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente';

value $TX_Q017_
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente';

value $TX_Q018_
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente';

value $TX_Q019_
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente';

value $TX_Q020_
A = 'Ensino Médio - Magistério'
B = 'Graduação'
C = 'Especialização'
D = 'Mestrado'
E = 'Doutorado';

value $TX_Q021_
A = 'Nenhuma'
B = 'Uma'
C = 'Duas'
D = 'Três ou mais';

value $TX_Q022_
A = 'Nenhuma'
B = 'Uma'
C = 'Duas'
D = 'Três ou mais';

value $TX_Q023_
A = 'Nenhuma'
B = 'Uma'
C = 'Duas'
D = 'Três ou mais';

value $TX_Q024_
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q025_
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q026_
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q027_
A = 'Não contribuiu'
B = 'Contribuiu pouco'
C = 'Contribuiu razoavelmente'
D = 'Contribuiu muito';

value $TX_Q028_
A = 'Não contribuiu'
B = 'Contribuiu pouco'
C = 'Contribuiu razoavelmente'
D = 'Contribuiu muito';

value $TX_Q029_
A = 'Não contribuiu'
B = 'Contribuiu pouco'
C = 'Contribuiu razoavelmente'
D = 'Contribuiu muito';

value $TX_Q030_
A = 'Não contribuiu'
B = 'Contribuiu pouco'
C = 'Contribuiu razoavelmente'
D = 'Contribuiu muito';

value $TX_Q031_
A = 'Não contribuiu'
B = 'Contribuiu pouco'
C = 'Contribuiu razoavelmente'
D = 'Contribuiu muito';

value $TX_Q032_
A = 'Não contribuiu'
B = 'Contribuiu pouco'
C = 'Contribuiu razoavelmente'
D = 'Contribuiu muito';

value $TX_Q033_
A = 'Todas as atividades formativas'
B = 'Algumas atividades formativas (ou parte delas)'
C = 'Nenhuma atividade formativa';

value $TX_Q034_
A = 'Não fiz curso de pós-graduação'
B = 'Especialização (mínimo de 360 horas)'
C = 'Mestrado (acadêmico ou profissional)'
D = 'Doutorado';

value $TX_Q035_
A = 'SEM apoio'
B = 'Com apoio parcial'
C = 'Com apoio total';

value $TX_Q036_
A = 'Curso gratuito'
B = 'Curso pago por algum órgão ou instituição (total ou parcialmente)'
C = 'Eu paguei integralmente o curso';

value $TX_Q037_
A = 'Nenhuma necessidade'
B = 'Pouca necessidade'
C = 'Moderada necessidade'
D = 'Muita necessidade';

value $TX_Q038_
A = 'Nenhuma necessidade'
B = 'Pouca necessidade'
C = 'Moderada necessidade'
D = 'Muita necessidade';

value $TX_Q039_
A = 'Nenhuma necessidade'
B = 'Pouca necessidade'
C = 'Moderada necessidade'
D = 'Muita necessidade';

value $TX_Q040_
A = 'Nenhuma necessidade'
B = 'Pouca necessidade'
C = 'Moderada necessidade'
D = 'Muita necessidade';

value $TX_Q041_
A = 'Nenhuma necessidade'
B = 'Pouca necessidade'
C = 'Moderada necessidade'
D = 'Muita necessidade';

value $TX_Q042_
A = 'Nenhuma necessidade'
B = 'Pouca necessidade'
C = 'Moderada necessidade'
D = 'Muita necessidade';

value $TX_Q043_
A = 'Nenhuma necessidade'
B = 'Pouca necessidade'
C = 'Moderada necessidade'
D = 'Muita necessidade';

value $TX_Q044_
A = 'Nenhuma necessidade'
B = 'Pouca necessidade'
C = 'Moderada necessidade'
D = 'Muita necessidade';

value $TX_Q045_
A = 'Nenhuma necessidade'
B = 'Pouca necessidade'
C = 'Moderada necessidade'
D = 'Muita necessidade';

value $TX_Q046_
A = 'Nenhuma necessidade'
B = 'Pouca necessidade'
C = 'Moderada necessidade'
D = 'Muita necessidade';

value $TX_Q047_
A = 'Nenhuma necessidade'
B = 'Pouca necessidade'
C = 'Moderada necessidade'
D = 'Muita necessidade';

value $TX_Q050_
A = 'Não'
B = 'Sim';

value $TX_Q051_
A = 'Apenas nesta'
B = 'Em 2'
C = 'Em 3 ou mais';

value $TX_Q052_
A = 'Concursado/efetivo/estável'
B = 'Contrato temporário'
C = 'Contrato CLT'
D = 'Outra situação trabalhista';

value $TX_Q054_
A = 'Até R$ 1.320,00'
B = 'De R$ 1.320,01 até R$ 2.640,00'
C = 'De R$ 2.640,01 até R$ 3.960,00'
D = 'De R$ 3.960,01 até R$ 5.280,00'
E = 'De R$ 5.280,01 até R$ 6.600,00'
F = 'De R$ 6.600,01 até R$ 7.920,00'
G = 'De R$ 7.920,01 até R$ 9.240,00'
H = 'Acima de R$ 9.240,00';

value $TX_Q056_	
A = 'Não'
B = 'Sim';

value $TX_Q057_	
A = 'Não'
B = 'Sim';

value $TX_Q058_	
A = 'Muito inadequado'
B = 'Inadequado'
C = 'Adequado'
D = 'Muito adequado';

value $TX_Q059_
A = 'Muito inadequado'
B = 'Inadequado'
C = 'Adequado'
D = 'Muito adequado';

value $TX_Q060_	
A = 'Muito inadequado'
B = 'Inadequado'
C = 'Adequado'
D = 'Muito adequado';

value $TX_Q061_	
A = 'Muito inadequado'
B = 'Inadequado'
C = 'Adequado'
D = 'Muito adequado';

value $TX_Q062_	
A = 'Muito inadequado'
B = 'Inadequado'
C = 'Adequado'
D = 'Muito adequado';

value $TX_Q063_	
A = 'Muito inadequado'
B = 'Inadequado'
C = 'Adequado'
D = 'Muito adequado';

value $TX_Q064_	
A = 'Muito inadequado'
B = 'Inadequado'
C = 'Adequado'
D = 'Muito adequado';

value $TX_Q065_	
A = 'Muito inadequado'
B = 'Inadequado'
C = 'Adequado'
D = 'Muito adequado';

value $TX_Q066_	
A = 'Muito inadequado'
B = 'Inadequado'
C = 'Adequado'
D = 'Muito adequado';

value $TX_Q067_	
A = 'Muito inadequado'
B = 'Inadequado'
C = 'Adequado'
D = 'Muito adequado';

value $TX_Q068_	
A = 'Muito inadequado'
B = 'Inadequado'
C = 'Adequado'
D = 'Muito adequado';

value $TX_Q069_	
A = 'Não tem'
B = 'Não uso'
C = 'Muito inadequado'
D = 'Inadequado'
E = 'Adequado'
F = 'Muito adequado';

value $TX_Q070_	
A = 'Não tem'
B = 'Não uso'
C = 'Muito inadequado'
D = 'Inadequado'
E = 'Adequado'
F = 'Muito adequado';

value $TX_Q071_	
A = 'Não tem'
B = 'Não uso'
C = 'Muito inadequado'
D = 'Inadequado'
E = 'Adequado'
F = 'Muito adequado';

value $TX_Q072_	
A = 'Não tem'
B = 'Não uso'
C = 'Muito inadequado'
D = 'Inadequado'
E = 'Adequado'
F = 'Muito adequado';

value $TX_Q073_	
A = 'Não tem'
B = 'Não uso'
C = 'Muito inadequado'
D = 'Inadequado'
E = 'Adequado'
F = 'Muito adequado';

value $TX_Q074_	
A = 'Não tem'
B = 'Não uso'
C = 'Muito inadequado'
D = 'Inadequado'
E = 'Adequado'
F = 'Muito adequado';

value $TX_Q075_	
A = 'Não tem'
B = 'Não uso'
C = 'Muito inadequado'
D = 'Inadequado'
E = 'Adequado'
F = 'Muito adequado';

value $TX_Q076_	
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente';

value $TX_Q077_	
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente';

value $TX_Q078_
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente';

value $TX_Q079_	
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente';

value $TX_Q080_	
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente';

value $TX_Q081_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q082_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q083_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q084_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q085_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q086_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q087_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q088_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q089_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q090_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q091_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q092_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q093_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q094_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q095_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q096_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q097_	
A = 'Não'
B = 'Sim';

value $TX_Q098_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q099_	
A = 'Não'
B = 'Sim';

value $TX_Q100_
A = 'Não'
B = 'Sim';

value $TX_Q101_	
A = 'Não'
B = 'Sim'
C = 'Não sei';

value $TX_Q102_	
A = 'Não'
B = 'Sim'
C = 'Não sei';

value $TX_Q103_	
A = 'Não'
B = 'Sim'
C = 'Não sei';

value $TX_Q104_	
A = 'Não'
B = 'Sim'
C = 'Não sei';

value $TX_Q105_	
A = 'Não'
B = 'Sim'
C = 'Não sei';

value $TX_Q106_	
A = 'Não'
B = 'Sim';

value $TX_Q109_	
A = 'Docente da turma'
B = 'Todo o corpo docente da escola'
C = 'Equipe gestora'
D = 'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.)';

value $TX_Q110_	
A = 'Docente da turma'
B = 'Todo o corpo docente da escola'
C = 'Equipe gestora'
D = 'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.)';

value $TX_Q111_	
A = 'Docente da turma'
B = 'Todo o corpo docente da escola'
C = 'Equipe gestora'
D = 'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.)';

value $TX_Q112_	
A = 'Docente da turma'
B = 'Todo o corpo docente da escola'
C = 'Equipe gestora'
D = 'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.)';

value $TX_Q113_	
A = 'Docente da turma'
B = 'Todo o corpo docente da escola'
C = 'Equipe gestora'
D = 'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.)';

value $TX_Q114_	
A = 'Docente da turma'
B = 'Todo o corpo docente da escola'
C = 'Equipe gestora'
D = 'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.)';

value $TX_Q115_	
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente';

value $TX_Q116_	
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente';

value $TX_Q117_	
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente';

value $TX_Q118_	
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente';

value $TX_Q119_	
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente';

value $TX_Q120_	
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente';

value $TX_Q121_
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente';

value $TX_Q122_	
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente';

value $TX_Q123_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q124_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q125_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q126_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q127_	
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente';

value $TX_Q128_	
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente';

value $TX_Q129_	
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente';

value $TX_Q130_	
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente';

value $TX_Q131_	
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente';

value $TX_Q132_	
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente';

value $TX_Q133_	
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente';

value $TX_Q134_	
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente';

value $TX_Q135_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q136_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q137_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q138_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q139_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q140_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q141_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q142_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q143_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q144_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q145_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q146_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';

value $TX_Q147_	
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';


run;

DATA WORK.TS_PROFESSOR;

INFILE 'C:\TS_PROFESSOR.csv' /*Endereço do arquivo*/
        LRECL=4096
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
        ID_PROFESSOR     : ?? BEST7.
        ID_SERIE         : ?? BEST2.
        SQ_QUESTIONARIO  : ?? BEST1.
        IN_PREENCHIMENTO_QUESTIONARIO : ?? BEST1.
        IN_PREENCHIMENTO_OUTRA_TURMA : ?? BEST1.
        TX_Q001          : $CHAR1.
        TX_Q002          : ?? BEST2.
        TX_Q003          : $CHAR1.
        TX_Q004          : $CHAR1.
        TX_Q005          : $CHAR1.
        TX_Q006          : $CHAR1.
        TX_Q007          : $CHAR1.
        TX_Q008          : $CHAR1.
        TX_Q009          : $CHAR1.
        TX_Q010          : $CHAR1.
        TX_Q011          : $CHAR1.
        TX_Q012          : $CHAR1.
        TX_Q013          : $CHAR1.
        TX_Q014          : $CHAR1.
        TX_Q015          : $CHAR1.
        TX_Q016          : $CHAR1.
        TX_Q017          : $CHAR1.
        TX_Q018          : $CHAR1.
        TX_Q019          : $CHAR1.
        TX_Q020          : $CHAR1.
        TX_Q021          : $CHAR1.
        TX_Q022          : $CHAR1.
        TX_Q023          : $CHAR1.
        TX_Q024          : $CHAR1.
        TX_Q025          : $CHAR1.
        TX_Q026          : $CHAR1.
        TX_Q027          : $CHAR1.
        TX_Q028          : $CHAR1.
        TX_Q029          : $CHAR1.
        TX_Q030          : $CHAR1.
        TX_Q031          : $CHAR1.
        TX_Q032          : $CHAR1.
        TX_Q033          : $CHAR1.
        TX_Q034          : $CHAR1.
        TX_Q035          : $CHAR1.
        TX_Q036          : $CHAR1.
        TX_Q037          : $CHAR1.
        TX_Q038          : $CHAR1.
        TX_Q039          : $CHAR1.
        TX_Q040          : $CHAR1.
        TX_Q041          : $CHAR1.
        TX_Q042          : $CHAR1.
        TX_Q043          : $CHAR1.
        TX_Q044          : $CHAR1.
        TX_Q045          : $CHAR1.
        TX_Q046          : $CHAR1.
        TX_Q047          : $CHAR1.
        TX_Q048          : ?? BEST2.
        TX_Q049          : ?? BEST2.
        TX_Q050          : $CHAR1.
        TX_Q051          : $CHAR1.
        TX_Q052          : $CHAR1.
        TX_Q053          : ?? BEST2.
        TX_Q054          : $CHAR1.
        TX_Q055          : ?? BEST2.
        TX_Q056          : $CHAR1.
        TX_Q057          : $CHAR1.
        TX_Q058          : $CHAR1.
        TX_Q059          : $CHAR1.
        TX_Q060          : $CHAR1.
        TX_Q061          : $CHAR1.
        TX_Q062          : $CHAR1.
        TX_Q063          : $CHAR1.
        TX_Q064          : $CHAR1.
        TX_Q065          : $CHAR1.
        TX_Q066          : $CHAR1.
        TX_Q067          : $CHAR1.
        TX_Q068          : $CHAR1.
        TX_Q069          : $CHAR1.
        TX_Q070          : $CHAR1.
        TX_Q071          : $CHAR1.
        TX_Q072          : $CHAR1.
        TX_Q073          : $CHAR1.
        TX_Q074          : $CHAR1.
        TX_Q075          : $CHAR1.
        TX_Q076          : $CHAR1.
        TX_Q077          : $CHAR1.
        TX_Q078          : $CHAR1.
        TX_Q079          : $CHAR1.
        TX_Q080          : $CHAR1.
        TX_Q081          : $CHAR1.
        TX_Q082          : $CHAR1.
        TX_Q083          : $CHAR1.
        TX_Q084          : $CHAR1.
        TX_Q085          : $CHAR1.
        TX_Q086          : $CHAR1.
        TX_Q087          : $CHAR1.
        TX_Q088          : $CHAR1.
        TX_Q089          : $CHAR1.
        TX_Q090          : $CHAR1.
        TX_Q091          : $CHAR1.
        TX_Q092          : $CHAR1.
        TX_Q093          : $CHAR1.
        TX_Q094          : $CHAR1.
        TX_Q095          : $CHAR1.
        TX_Q096          : $CHAR1.
        TX_Q097          : $CHAR1.
        TX_Q098          : $CHAR1.
        TX_Q099          : $CHAR1.
        TX_Q100          : $CHAR1.
        TX_Q101          : $CHAR1.
        TX_Q102          : $CHAR1.
        TX_Q103          : $CHAR1.
        TX_Q104          : $CHAR1.
        TX_Q105          : $CHAR1.
        TX_Q106          : $CHAR1.
        TX_Q107          : ?? BEST2.
        TX_Q108          : ?? BEST3.
        TX_Q109          : $CHAR1.
        TX_Q110          : $CHAR1.
        TX_Q111          : $CHAR1.
        TX_Q112          : $CHAR1.
        TX_Q113          : $CHAR1.
        TX_Q114          : $CHAR1.
        TX_Q115          : $CHAR1.
        TX_Q116          : $CHAR1.
        TX_Q117          : $CHAR1.
        TX_Q118          : $CHAR1.
        TX_Q119          : $CHAR1.
        TX_Q120          : $CHAR1.
        TX_Q121          : $CHAR1.
        TX_Q122          : $CHAR1.
        TX_Q123          : $CHAR1.
        TX_Q124          : $CHAR1.
        TX_Q125          : $CHAR1.
        TX_Q126          : $CHAR1.
        TX_Q127          : $CHAR1.
        TX_Q128          : $CHAR1.
        TX_Q129          : $CHAR1.
        TX_Q130          : $CHAR1.
        TX_Q131          : $CHAR1.
        TX_Q132          : $CHAR1.
        TX_Q133          : $CHAR1.
        TX_Q134          : $CHAR1.
        TX_Q135          : $CHAR1.
        TX_Q136          : $CHAR1.
        TX_Q137          : $CHAR1.
        TX_Q138          : $CHAR1.
        TX_Q139          : $CHAR1.
        TX_Q140          : $CHAR1.
        TX_Q141          : $CHAR1.
        TX_Q142          : $CHAR1.
        TX_Q143          : $CHAR1.
        TX_Q144          : $CHAR1.
        TX_Q145          : $CHAR1.
        TX_Q146          : $CHAR1.
        TX_Q147          : $CHAR1.
        TX_Q148          : $CHAR3526. ;

ATTRIB ID_REGIAO FORMAT=ID_REGIAO.;
ATTRIB ID_UF FORMAT=ID_UF.;
ATTRIB ID_AREA FORMAT=ID_AREA.;
ATTRIB IN_PUBLICA FORMAT=IN_PUBLICA.;
ATTRIB ID_LOCALIZACAO FORMAT=ID_LOCALIZACAO.;
ATTRIB ID_SERIE FORMAT=ID_SERIE.;
ATTRIB IN_PREENCHIMENTO_QUESTIONARIO FORMAT=IN_PREENCHIMENTO_QUESTIONARIO.;
ATTRIB SQ_QUESTIONARIO FORMAT=SQ_QUESTIONARIO.;
ATTRIB IN_PREENCHIMENTO_OUTRA_TURMA FORMAT=IN_PREENCHIMENTO_OUTRA_TURMA.;
ATTRIB TX_Q001 FORMAT=TX_Q001_.;
ATTRIB TX_Q003 FORMAT=TX_Q003_.;
ATTRIB TX_Q004 FORMAT=TX_Q004_.;
ATTRIB TX_Q005 FORMAT=TX_Q005_.;
ATTRIB TX_Q006 FORMAT=TX_Q006_.;
ATTRIB TX_Q007 FORMAT=TX_Q007_.;
ATTRIB TX_Q008 FORMAT=TX_Q008_.;
ATTRIB TX_Q009 FORMAT=TX_Q009_.;
ATTRIB TX_Q010 FORMAT=TX_Q010_.;
ATTRIB TX_Q011 FORMAT=TX_Q011_.;
ATTRIB TX_Q012 FORMAT=TX_Q012_.;
ATTRIB TX_Q013 FORMAT=TX_Q013_.;
ATTRIB TX_Q014 FORMAT=TX_Q014_.;
ATTRIB TX_Q015 FORMAT=TX_Q015_.;
ATTRIB TX_Q016 FORMAT=TX_Q016_.;
ATTRIB TX_Q017 FORMAT=TX_Q017_.;
ATTRIB TX_Q018 FORMAT=TX_Q018_.;
ATTRIB TX_Q019 FORMAT=TX_Q019_.;
ATTRIB TX_Q020 FORMAT=TX_Q020_.;
ATTRIB TX_Q021 FORMAT=TX_Q021_.;
ATTRIB TX_Q022 FORMAT=TX_Q022_.;
ATTRIB TX_Q023 FORMAT=TX_Q023_.;
ATTRIB TX_Q024 FORMAT=TX_Q024_.;
ATTRIB TX_Q025 FORMAT=TX_Q025_.;
ATTRIB TX_Q026 FORMAT=TX_Q026_.;
ATTRIB TX_Q027 FORMAT=TX_Q027_.;
ATTRIB TX_Q028 FORMAT=TX_Q028_.;
ATTRIB TX_Q029 FORMAT=TX_Q029_.;
ATTRIB TX_Q030 FORMAT=TX_Q030_.;
ATTRIB TX_Q031 FORMAT=TX_Q031_.;
ATTRIB TX_Q032 FORMAT=TX_Q032_.;
ATTRIB TX_Q033 FORMAT=TX_Q033_.;
ATTRIB TX_Q034 FORMAT=TX_Q034_.;
ATTRIB TX_Q035 FORMAT=TX_Q035_.;
ATTRIB TX_Q036 FORMAT=TX_Q036_.;
ATTRIB TX_Q037 FORMAT=TX_Q037_.;
ATTRIB TX_Q038 FORMAT=TX_Q038_.;
ATTRIB TX_Q039 FORMAT=TX_Q039_.;
ATTRIB TX_Q040 FORMAT=TX_Q040_.;
ATTRIB TX_Q041 FORMAT=TX_Q041_.;
ATTRIB TX_Q042 FORMAT=TX_Q042_.;
ATTRIB TX_Q043 FORMAT=TX_Q043_.;
ATTRIB TX_Q044 FORMAT=TX_Q044_.;
ATTRIB TX_Q045 FORMAT=TX_Q045_.;
ATTRIB TX_Q046 FORMAT=TX_Q046_.;
ATTRIB TX_Q047 FORMAT=TX_Q047_.;
ATTRIB TX_Q050 FORMAT=TX_Q050_.;
ATTRIB TX_Q051 FORMAT=TX_Q051_.;
ATTRIB TX_Q052 FORMAT=TX_Q052_.;
ATTRIB TX_Q054 FORMAT=TX_Q054_.;
ATTRIB TX_Q056 FORMAT=TX_Q056_.;
ATTRIB TX_Q057 FORMAT=TX_Q057_.;
ATTRIB TX_Q058 FORMAT=TX_Q058_.;
ATTRIB TX_Q059 FORMAT=TX_Q059_.;
ATTRIB TX_Q060 FORMAT=TX_Q060_.;
ATTRIB TX_Q061 FORMAT=TX_Q061_.;
ATTRIB TX_Q062 FORMAT=TX_Q062_.;
ATTRIB TX_Q063 FORMAT=TX_Q063_.;
ATTRIB TX_Q064 FORMAT=TX_Q064_.;
ATTRIB TX_Q065 FORMAT=TX_Q065_.;
ATTRIB TX_Q066 FORMAT=TX_Q066_.;
ATTRIB TX_Q067 FORMAT=TX_Q067_.;
ATTRIB TX_Q068 FORMAT=TX_Q068_.;
ATTRIB TX_Q069 FORMAT=TX_Q069_.;
ATTRIB TX_Q070 FORMAT=TX_Q070_.;
ATTRIB TX_Q071 FORMAT=TX_Q071_.;
ATTRIB TX_Q072 FORMAT=TX_Q072_.;
ATTRIB TX_Q073 FORMAT=TX_Q073_.;
ATTRIB TX_Q074 FORMAT=TX_Q074_.;
ATTRIB TX_Q075 FORMAT=TX_Q075_.;
ATTRIB TX_Q076 FORMAT=TX_Q076_.;
ATTRIB TX_Q077 FORMAT=TX_Q077_.;
ATTRIB TX_Q078 FORMAT=TX_Q078_.;
ATTRIB TX_Q079 FORMAT=TX_Q079_.;
ATTRIB TX_Q080 FORMAT=TX_Q080_.;
ATTRIB TX_Q081 FORMAT=TX_Q081_.;
ATTRIB TX_Q082 FORMAT=TX_Q082_.;
ATTRIB TX_Q083 FORMAT=TX_Q083_.;
ATTRIB TX_Q084 FORMAT=TX_Q084_.;
ATTRIB TX_Q085 FORMAT=TX_Q085_.;
ATTRIB TX_Q086 FORMAT=TX_Q086_.;
ATTRIB TX_Q087 FORMAT=TX_Q087_.;
ATTRIB TX_Q088 FORMAT=TX_Q088_.;
ATTRIB TX_Q089 FORMAT=TX_Q089_.;
ATTRIB TX_Q090 FORMAT=TX_Q090_.;
ATTRIB TX_Q091 FORMAT=TX_Q091_.;
ATTRIB TX_Q092 FORMAT=TX_Q092_.;
ATTRIB TX_Q093 FORMAT=TX_Q093_.;
ATTRIB TX_Q094 FORMAT=TX_Q094_.;
ATTRIB TX_Q095 FORMAT=TX_Q095_.;
ATTRIB TX_Q096 FORMAT=TX_Q096_.;
ATTRIB TX_Q097 FORMAT=TX_Q097_.;
ATTRIB TX_Q098 FORMAT=TX_Q098_.;
ATTRIB TX_Q099 FORMAT=TX_Q099_.;
ATTRIB TX_Q100 FORMAT=TX_Q100_.;
ATTRIB TX_Q101 FORMAT=TX_Q101_.;
ATTRIB TX_Q102 FORMAT=TX_Q102_.;
ATTRIB TX_Q102 FORMAT=TX_Q102_.;
ATTRIB TX_Q103 FORMAT=TX_Q103_.;
ATTRIB TX_Q104 FORMAT=TX_Q104_.;
ATTRIB TX_Q105 FORMAT=TX_Q105_.;
ATTRIB TX_Q106 FORMAT=TX_Q106_.;
ATTRIB TX_Q109 FORMAT=TX_Q109_.;
ATTRIB TX_Q110 FORMAT=TX_Q110_.;
ATTRIB TX_Q111 FORMAT=TX_Q111_.;
ATTRIB TX_Q112 FORMAT=TX_Q112_.;
ATTRIB TX_Q113 FORMAT=TX_Q113_.;
ATTRIB TX_Q114 FORMAT=TX_Q114_.;
ATTRIB TX_Q115 FORMAT=TX_Q115_.;
ATTRIB TX_Q116 FORMAT=TX_Q116_.;
ATTRIB TX_Q117 FORMAT=TX_Q117_.;
ATTRIB TX_Q118 FORMAT=TX_Q118_.;
ATTRIB TX_Q119 FORMAT=TX_Q119_.;
ATTRIB TX_Q120 FORMAT=TX_Q120_.;
ATTRIB TX_Q121 FORMAT=TX_Q121_.;
ATTRIB TX_Q122 FORMAT=TX_Q122_.;
ATTRIB TX_Q123 FORMAT=TX_Q123_.;
ATTRIB TX_Q124 FORMAT=TX_Q124_.;
ATTRIB TX_Q125 FORMAT=TX_Q125_.;
ATTRIB TX_Q126 FORMAT=TX_Q126_.;
ATTRIB TX_Q127 FORMAT=TX_Q127_.;
ATTRIB TX_Q128 FORMAT=TX_Q128_.;
ATTRIB TX_Q129 FORMAT=TX_Q129_.;
ATTRIB TX_Q130 FORMAT=TX_Q130_.;
ATTRIB TX_Q131 FORMAT=TX_Q131_.;
ATTRIB TX_Q132 FORMAT=TX_Q132_.;
ATTRIB TX_Q133 FORMAT=TX_Q133_.;
ATTRIB TX_Q134 FORMAT=TX_Q134_.;
ATTRIB TX_Q135 FORMAT=TX_Q135_.;
ATTRIB TX_Q136 FORMAT=TX_Q136_.;
ATTRIB TX_Q137 FORMAT=TX_Q137_.;
ATTRIB TX_Q138 FORMAT=TX_Q138_.;
ATTRIB TX_Q139 FORMAT=TX_Q139_.;
ATTRIB TX_Q140 FORMAT=TX_Q140_.;
ATTRIB TX_Q141 FORMAT=TX_Q141_.;
ATTRIB TX_Q142 FORMAT=TX_Q142_.;
ATTRIB TX_Q143 FORMAT=TX_Q143_.;
ATTRIB TX_Q144 FORMAT=TX_Q144_.;
ATTRIB TX_Q145 FORMAT=TX_Q145_.;
ATTRIB TX_Q146 FORMAT=TX_Q146_.;
ATTRIB TX_Q147 FORMAT=TX_Q147_.;

LABEL

ID_SAEB = 'Ano de Aplicação do Saeb'                                                                                                    
ID_REGIAO = 'Código da Região'                                                                                                                         
ID_UF = 'Código da Unidade da Federação' 
ID_MUNICIPIO = 'Máscaras dos Códigos de Municípios (são códigos fictícios)'
ID_AREA = 'Área'
ID_ESCOLA = 'Máscaras dos Códigos de Escola (são códigos fictícios)'
IN_PUBLICA = 'Indica se a escola é pública ou não'
ID_LOCALIZACAO = 'Localização'
ID_TURMA = 'Código da turma no Saeb'
ID_PROFESSOR = 'Código do Professor no Saeb'
ID_SERIE = 'Ano Escolar'
SQ_QUESTIONARIO = 'Sequencial do questionário na turma'
IN_PREENCHIMENTO_QUESTIONARIO = 'Indicador de preenchimento do questionário'
IN_PREENCHIMENTO_OUTRA_TURMA = 'Indicador de preenchimento do questionário para outra turma, pelo mesmo professor'
TX_Q001 = 'Qual é o seu sexo?'
TX_Q002 = 'Qual é a sua idade?'
TX_Q003 = 'Qual é a sua cor ou raça?'
TX_Q004 = 'Você possui deficiência, transtorno do espectro autista ou superdotação?'
TX_Q005 = 'Indique qual é a sua condição:  Deficiência.'
TX_Q006 = 'Indique qual é a sua condição: Transtorno do espectro autista.'
TX_Q007 = 'Indique qual é a sua condição: Altas habilidades/superdotação.'
TX_Q008 = 'Leio livros não relacionados à Educação.'
TX_Q009 = 'Acesso blogs, Youtube, redes sociais (Twitter, Instagram, Facebook etc.).'
TX_Q010 = 'Assisto a filmes.'
TX_Q011 = 'Vou a exposições (museus, centros culturais).'
TX_Q012 = 'Assisto a espetáculos (teatro, shows, circo, etc)'
TX_Q013 = 'Estudo.'
TX_Q014 = 'Assisto a telejornal.'
TX_Q015 = 'Tornar-me professor(a) foi a realização de um dos meus sonhos.'
TX_Q016 = 'A profissão de professor(a) é valorizada pela sociedade.'
TX_Q017 = 'As vantagens de ser professor(a) superam claramente as desvantagens.'
TX_Q018 = 'No geral, estou satisfeito(a) com o meu trabalho de professor(a).'
TX_Q019 = 'Tenho vontade de desistir da profissão'
TX_Q020 = 'Qual é o MAIS ALTO nível de escolaridade que você concluiu?'
TX_Q021 = 'Atividades formativas com menos de 20 horas'
TX_Q022 = 'Curso com carga horária total de 20 horas até 179 horas.'
TX_Q023 = 'Curso com carga horária total com mais de 180 e menos 360 horas'
TX_Q024 = 'Considerando as atividades formativas de curta duração (inferiores a 360 horas) das quais participou neste ano, com que frequência estava previsto: Participação de professor(es) da(s) escola(s) em que leciono?'
TX_Q025 = 'Considerando as atividades formativas de curta duração (inferiores a 360 horas) das quais participou neste ano, com que frequência estava previsto: Atividades colaborativas de aprendizado?'
TX_Q026 = 'Considerando as atividades formativas de curta duração (inferiores a 360 horas) das quais participou neste ano, com que frequência estava previsto: Atividades intercaladas com seu trabalho normal de sala de aula?'
TX_Q027 = 'Indique o nível de contribuição das atividades formativas e cursos realizados neste ano para:  Aprofundar seus conhecimentos sobre as disciplinas que leciona.'
TX_Q028 = 'Indique o nível de contribuição das atividades formativas e cursos realizados neste ano para:  Aprimorar os processos avaliativos.'
TX_Q029 = 'Indique o nível de contribuição das atividades formativas e cursos realizados neste ano para:  Utilizar novas tecnologias para apoiar suas atividades.'
TX_Q030 = 'Indique o nível de contribuição das atividades formativas e cursos realizados neste ano para:  Colaborar com seus colegas na preparação de atividades e projetos.'
TX_Q031 = 'Indique o nível de contribuição das atividades formativas e cursos realizados neste ano para:  Aprimorar as metodologias de ensino.'
TX_Q032 = 'Indique o nível de contribuição das atividades formativas e cursos realizados neste ano para:  Auxiliar na mediação de conflitos.'
TX_Q033 = 'Dentre as atividades formativas listadas anteriormente das quais você participou neste ano, a instituição ou Secretaria de Educação financiou:'
TX_Q034 = 'Durante este ano, indique se participou de algum dos cursos de pós-graduação listados abaixo:'
TX_Q035 = 'Recebeu apoio da Secretaria ou mantenedora para realizá-lo?'
TX_Q036 = 'Indique quem pagou por esse curso de pós-graduação:'
TX_Q037 = 'Uso de novas tecnologias de informação e comunicação.'
TX_Q038 = 'Gestão de conflitos.'
TX_Q039 = 'Metodologia de avaliação.'
TX_Q040 = 'Metodologia de ensino para o público-alvo da educação especial.'
TX_Q041 = 'Utilização de elementos da cultura local na prática pedagógica.'
TX_Q042 = 'Identificação de problemas extraescolares.'
TX_Q043 = 'Gestão democrática.'
TX_Q044 = 'Ensino do conteúdo que leciono.'
TX_Q045 = 'Desenvolvimento da aprendizagem.'
TX_Q046 = 'Planejamento pedagógico.'
TX_Q047 = 'Recursos e práticas pedagógicas.'
TX_Q048 = 'Há quantos anos você trabalha como professor(a)?'
TX_Q049 = 'Há quantos anos você trabalha como professor(a) nesta escola?'
TX_Q050 = 'Além de ser professor(a), você exerce outra atividade remunerada?'
TX_Q051 = 'Em quantas escolas você trabalha?'
TX_Q052 = 'Qual o seu tipo de vínculo trabalhista nesta escola?'
TX_Q053 = 'Qual a sua carga horária semanal total de trabalho como professor(a)?'
TX_Q054 = 'Qual é o seu salário bruto como professor(a)? Indique a faixa salarial em que seu salário se encontra.'
TX_Q055 = 'Nesta escola, quantas horas você trabalha em uma semana normal (desenvolvendo as atividades pedagógicas, presente em sala, preparando atividades, murais, participando de reuniões etc.)?'
TX_Q056 = 'Esta escola, em seu planejamento, prevê um tempo para atividades como preparação de aulas, reuniões, atendimento aos pais etc.?'
TX_Q057 = 'Em uma semana normal de trabalho, você costuma levar trabalho desta escola para fazer em casa?'
TX_Q058 = 'Tamanho da sala com relação ao número de estudantes.'
TX_Q059 = 'Acústica.'
TX_Q060 = 'Iluminação natural.'
TX_Q061 = 'Ventilação natural.'
TX_Q062 = 'Temperatura.'
TX_Q063 = 'Instalações elétricas.'
TX_Q064 = 'Limpeza.'
TX_Q065 = 'Acessibilidade física.'
TX_Q066 = 'Mobiliário (mesas, carteiras, armários).'
TX_Q067 = 'Infraestrutura (paredes, teto, assoalho, portas, piso).'
TX_Q068 = 'Lousa (quadro de giz ou quadro branco).'
TX_Q069 = 'Livro didático.'
TX_Q070 = 'Televisão.'
TX_Q071 = 'Projetor multimídia (datashow).'
TX_Q072 = 'Computador (de mesa, portátil, tablet).'
TX_Q073 = 'Software.'
TX_Q074 = 'Internet.'
TX_Q075 = 'Recursos pedagógicos para atendimento educacional especializado.'
TX_Q076 = 'Repetir de ano é bom para o(a) estudante que não apresentou desempenho satisfatório.'
TX_Q077 = 'A quantidade de avaliações externas (municipais, estaduais ou federais) é excessiva.'
TX_Q078 = 'As avaliações externas (municipais, estaduais ou federais) têm direcionado o que deve ser ensinado.'
TX_Q079 = 'As avaliações externas têm ajudado a melhorar o processo de ensino e aprendizagem.'
TX_Q080 = 'A maior parte dos estudantes apresentam problemas de aprendizagem.'
TX_Q081 = 'Propor dever de casa.'
TX_Q082 = 'Corrigir com os(as) estudantes o dever de casa.'
TX_Q083 = 'Desenvolver trabalhos em grupo com os(as) estudantes.'
TX_Q084 = 'Solicitar que os(as) estudantes copiem textos e atividades do livro didático ou da lousa (quadro de giz ou quadro branco).'
TX_Q085 = 'Estimular os(as) estudantes a expressarem suas opiniões e a desenvolverem argumentos a partir de temas diversos.'
TX_Q086 = 'Propor situações de aprendizagem que sejam familiares ou de interesse dos(as) estudantes.'
TX_Q087 = 'Informar aos(às) estudantes, no início do ano, o que será ensinado ou aprendido.'
TX_Q088 = 'Perguntar aos(às) estudantes o que sabem sobre o tema, ao iniciar um novo conteúdo.'
TX_Q089 = 'Trazer temas do cotidiano para serem debatidos em sala de aula.'
TX_Q090 = 'Diversificar as metodologias de ensino conforme as dificuldades dos(as) estudantes.'
TX_Q091 = 'Considerar que os resultados das avaliações indicam o quanto os(as) estudantes aprenderam.'
TX_Q092 = 'Buscar estratégias para melhorar a aprendizagem dos(as) estudantes com menor desempenho.'
TX_Q093 = 'Abordar questões sobre desigualdade racial com os(as) estudantes.'
TX_Q094 = 'Abordar questões sobre desigualdade de gênero com os(as) estudantes.'
TX_Q095 = 'Abordar questões sobre bullying e outras formas de violência com os(as) estudantes.'
TX_Q096 = 'Abordar questões relacionadas ao futuro profissional dos(as) estudantes.'
TX_Q097 = 'Há estudantes público-alvo da educação especial nesta escola?'
TX_Q098 = 'Indique com que frequência a escola oferece suporte para os estudantes público-alvo da educação especial.'
TX_Q099 = 'Há um espaço para atendimento educacional especializado na escola?'
TX_Q100 = 'A escola possui Projeto Político-Pedagógico?'
TX_Q101 = 'Indique se as situações abaixo se aplicam ou não ao Projeto Político-Pedagógico desta escola. Seu conteúdo é discutido em reuniões?'
TX_Q102 = 'Indique se as situações abaixo se aplicam ou não ao Projeto Político-Pedagógico desta escola. Os(As) professores(as) participaram da elaboração.'
TX_Q103 = 'Indique se as situações abaixo se aplicam ou não ao Projeto Político-Pedagógico desta escola. Os profissionais não docentes participaram da elaboração?'
TX_Q104 = 'Indique se as situações abaixo se aplicam ou não ao Projeto Político-Pedagógico desta escola. Os pais participaram da elaboração?'
TX_Q105 = 'Indique se as situações abaixo se aplicam ou não ao Projeto Político-Pedagógico desta escola. Os(As) estudantes participaram da elaboração?'
TX_Q106 = 'Há Conselho de Classe na sua escola?'
TX_Q107 = 'Quantas vezes o Conselho de Classe se reuniu neste ano?'
TX_Q108 = 'Quantos estudantes, NORMALMENTE, participam do Conselho de Classe por reunião?'
TX_Q109 = 'Escolha do material didático.'
TX_Q110 = 'Metodologia de ensino.'
TX_Q111 = 'Conteúdos trabalhados em sala.'
TX_Q112 = 'Instrumentos para avaliar os(as) estudantes.'
TX_Q113 = 'Peso de cada instrumento de avaliação nas notas finais dos(as) estudantes.'
TX_Q114 = 'Seleção de conteúdos usados nas provas.'
TX_Q115 = 'O(A) diretor(a) debate as metas educacionais com os(as) professores(as) nas reuniões.'
TX_Q116 = 'O(A) diretor(a) e os(as) professores(as) tratam a qualidade de ensino como uma responsabilidade coletiva.'
TX_Q117 = 'O(A) diretor(a) informa aos(às) professores(as) sobre as possibilidades de aperfeiçoamento profissional.'
TX_Q118 = 'O(A) diretor(a) dá atenção especial a aspectos relacionados à aprendizagem dos(as) estudantes.'
TX_Q119 = 'O(A) diretor(a) dá atenção especial a aspectos relacionados às normas administrativas.'
TX_Q120 = 'O(A) diretor(a) me anima e me motiva para o trabalho.'
TX_Q121 = 'Tenho confiança no(a) diretor(a) como profissional.'
TX_Q122 = 'O(A) diretor(a) e os(as) professores(as) asseguram que as questões relacionadas à qualidade da convivência e gestão de conflitos sejam uma responsabilidade coletiva.'
TX_Q123 = 'Colaboração da família para superar problemas relacionados aos estudantes (ausências, acompanhamento das atividades escolares etc.).'
TX_Q124 = 'Colaboração entre colegas (feedback, trocas, projetos interdisciplinares).'
TX_Q125 = 'Colaboração da gestão da instituição (equipe gestora, equipe pedagógica) para superar dificuldades de sala de aula.'
TX_Q126 = 'Apoio da Secretaria de Educação para superar as dificuldades do cotidiano escolar.'
TX_Q127 = 'Respeitam os acordos estabelecidos em sala.'
TX_Q128 = 'São assíduos(as).'
TX_Q129 = 'São respeitosos(as) comigo.'
TX_Q130 = 'São respeitosos(as) com os(as) colegas da turma.'
TX_Q131 = 'Expressam diferentes opiniões.'
TX_Q132 = 'Se interessam sobre o que ensinei neste ano.'
TX_Q133 = 'Sentem-se motivados(as) para aprender os temas ligados à minha disciplina.'
TX_Q134 = 'São capazes de concluir a Educação Básica e prosseguir seus estudos.'
TX_Q135 = 'Atentado à vida.'
TX_Q136 = 'Lesão corporal.'
TX_Q137 = 'Roubo ou furto.'
TX_Q138 = 'Tráfico de drogas.'
TX_Q139 = 'Permanência de pessoas sob efeito de álcool.'
TX_Q140 = 'Permanência de pessoas sob efeito de drogas.'
TX_Q141 = 'Porte de arma (revólver, faca, canivete).'
TX_Q142 = 'Assédio sexual.'
TX_Q143 = 'Discriminação (racial, gênero, orientação sexual, econômica/social, deficiência etc.).'
TX_Q144 = 'Bullying (ameaças ou ofensas verbais).'
TX_Q145 = 'Invasão do espaço escolar.'
TX_Q146 = 'Depredação do patrimônio escolar (vandalismo).'
TX_Q147 = 'Tiroteio ou bala perdida.'
TX_Q148 = 'Sugestões de melhoria para o instrumento (inclusão de temas, estrutura do questionário etc.)';

run;quit;
