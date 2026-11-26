/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
/*                                   			                                       */
/*  Coordenação-Geral de Medidas da Educação Básica (CGMEB)                            */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_SECRETARIO_MUNICIPAL                                     */
/*-------------------------------------------------------------------------------------*/
/*  DESCRICAO:   PROGRAMA PARA LEITURA DO QUESTIONÁRIO DO SECRETARIO MUNICIPAL         */
/*				 DE EDUCAÇÃO DO SAEB 2023                                              */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, é necessário salvar este programa e o arquivo             */
/* TS_SECRETARIO_MUNICIPAL.CSV no diretório C:\ do computador.	                       */
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
/* Algumas variáveis do questionário do Diretor envolvem regras de validação e         */
/* dependência. O entendimento dessas questões exigem consulta ao Dicionário de        */
/* Variáveis para conhecer as regras de cada questão.                                  */
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

value IN_PREENCHIMENTO
0 = 'Não preenchido'
1 = 'Preenchido parcial ou totalmente';

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
A =	'Ensino Fundamental'
B =	'Ensino Médio'
C =	'Graduação'
D =	'Especialização'
E =	'Mestrado'
F =	'Doutorado';

value $TX_Q009_
A = 'Não'
B = 'Sim';

value $TX_Q010_
A = 'Não'
B = 'Sim';

value $TX_Q011_
A = 'Não'
B = 'Sim';

value $TX_Q012_
A = 'Não'
B = 'Sim';

value $TX_Q013_
A = 'Não'
B = 'Sim';

value $TX_Q014_
A = 'Não'
B = 'Sim';

value $TX_Q015_
A = 'Não'
B = 'Sim';

value $TX_Q016_
A = 'Não'
B = 'Sim';

value $TX_Q017_
A = 'Não'
B = 'Sim';

value $TX_Q020_
A = 'Não'
B = 'Sim';

value $TX_Q021_
A = 'Não'
B = 'Sim';

value $TX_Q022_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q023_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q024_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q025_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q026_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q027_
A = 'Não'
B = 'Sim';

value $TX_Q028_
A = 'Não'
B = 'Sim';

value $TX_Q029_
A = 'Não'
B = 'Sim';

value $TX_Q030_
A = 'Não'
B = 'Sim';

value $TX_Q031_
A = 'Não'
B = 'Sim';

value $TX_Q034_
A =	'Nunca'
B = 'Poucas vezes'
C =	'Muitas vezes'
D =	'Sempre';

value $TX_Q035_
A = 'Não'
B = 'Sim';

value $TX_Q036_
A = 'Não'
B = 'Sim';

value $TX_Q037_
A = 'Não'
B = 'Sim';

value $TX_Q038_
A = 'Não'
B = 'Sim';

value $TX_Q039_
A = 'Não'
B = 'Sim';

value $TX_Q040_
A = 'Não'
B = 'Sim';

value $TX_Q041_
A = 'Não'
B = 'Sim';

value $TX_Q042_
A = 'Não'
B = 'Sim';

value $TX_Q043_
A = 'Não'
B = 'Sim';

value $TX_Q044_
A = 'Não'
B = 'Sim';

value $TX_Q045_
A = 'Não'
B = 'Sim';

value $TX_Q046_
A = 'Não'
B = 'Sim';

value $TX_Q047_
A = 'Não'
B = 'Sim';

value $TX_Q048_
A = 'Não'
B = 'Sim';

value $TX_Q049_
A = 'Não'
B = 'Sim';

value $TX_Q050_
A = 'Não'
B = 'Sim';

value $TX_Q051_
A = 'Não'
B = 'Sim';

value $TX_Q052_
A =	'Sim, a legislação contempla todos os critérios utilizados'
B =	'Sim, a legislação contempla uma parte dos critérios utilizados'
C =	'Não, não há legislação municipal para escolha dos(as) diretores(as)';

value $TX_Q053_
A =	'Não sei'
B =	'Não'
C =	'Sim';

value $TX_Q054_
A = 'Não'
B = 'Sim';

value $TX_Q055_
A = 'Não'
B = 'Sim';

value $TX_Q056_
A = 'Não'
B = 'Sim';

value $TX_Q057_
A = 'Não'
B = 'Sim';

value $TX_Q058_
A = 'Não'
B = 'Sim';

value $TX_Q059_
A = 'Não'
B = 'Sim';

value $TX_Q060_
A = 'Não'
B = 'Sim';

value $TX_Q061_
A = 'Não'
B = 'Sim';

value $TX_Q062_
A = 'Não'
B = 'Sim';

value $TX_Q063_
A = 'Não'
B = 'Sim';

value $TX_Q064_
A = 'Não'
B = 'Sim';

value $TX_Q065_
A = 'Não'
B = 'Sim';

value $TX_Q066_
A = 'Não'
B = 'Sim';

value $TX_Q078_
A = 'Não'
B = 'Sim';

value $TX_Q079_
A = 'Não'
B = 'Sim';

value $TX_Q080_
A = 'Não'
B = 'Sim';

value $TX_Q081_
A = 'Não'
B = 'Sim';

value $TX_Q082_
A = 'Não'
B = 'Sim';

value $TX_Q083_
A = 'Não'
B = 'Sim';

value $TX_Q084_
A = 'Não'
B = 'Sim';

value $TX_Q085_
A = 'Não'
B = 'Sim';

value $TX_Q086_
A = 'Não'
B = 'Sim';

value $TX_Q087_
A = 'Não'
B = 'Sim';

value $TX_Q088_
A = 'Não'
B = 'Sim';

value $TX_Q089_
A = 'Não'
B = 'Sim';

value $TX_Q090_
A = 'Não'
B = 'Sim';

value $TX_Q091_
A = 'Não'
B = 'Sim';

value $TX_Q092_
A = 'Não'
B = 'Sim';

value $TX_Q094_
A = 'Não'
B = 'Sim';

value $TX_Q095_
A = 'Não'
B = 'Sim';

value $TX_Q096_
A = 'Não'
B = 'Sim';

value $TX_Q097_
A = 'Não'
B = 'Sim';

value $TX_Q098_
A = 'Não'
B = 'Sim';

value $TX_Q099_
A = 'Não'
B = 'Sim';

value $TX_Q100_
A = 'Não'
B = 'Sim';

value $TX_Q101_
A = 'Não'
B = 'Sim';

value $TX_Q102_
A = 'Não'
B = 'Sim';

value $TX_Q103_
A = 'Não'
B = 'Sim';

value $TX_Q104_
A = 'Não'
B = 'Sim';

value $TX_Q105_
A = 'Não'
B = 'Sim';

value $TX_Q106_
A = 'Não'
B = 'Sim';

value $TX_Q107_
A =	'Município'
B =	'Instituições';

value $TX_Q108_
A =	'Município'
B =	'Instituições';

value $TX_Q109_
A =	'Município'
B =	'Instituições';

value $TX_Q110_
A =	'Município'
B =	'Instituições';

value $TX_Q111_
A =	'Município'
B =	'Instituições';

value $TX_Q112_
A =	'Município'
B =	'Instituições';

value $TX_Q113_
A =	'Município'
B =	'Instituições';

value $TX_Q114_
A = 'Não'
B = 'Sim';

value $TX_Q115_
A = 'Não'
B = 'Sim';

value $TX_Q116_
A = 'Não'
B = 'Sim';

value $TX_Q118_
A = 'Não'
B = 'Sim';

value $TX_Q119_
A = 'Não'
B = 'Sim';

value $TX_Q120_
A = 'Não'
B = 'Sim';

value $TX_Q121_
A = 'Não'
B = 'Sim';

value $TX_Q122_
A = 'Não'
B = 'Sim';

value $TX_Q123_
A = 'Não'
B = 'Sim';

value $TX_Q124_
A = 'Não'
B = 'Sim';

value $TX_Q125_
A = 'Não'
B = 'Sim';

value $TX_Q126_
A =	'Não'
B =	'Sim'
C =	'Não se aplica';

value $TX_Q127_
A =	'Não'
B =	'Sim'
C =	'Não se aplica';

value $TX_Q128_
A =	'Não'
B =	'Sim'
C =	'Não se aplica';

value $TX_Q129_
A =	'Não'
B =	'Sim'
C =	'Não se aplica';

value $TX_Q130_
A = 'Não'
B = 'Sim';

value $TX_Q131_
A = 'Não'
B = 'Sim';

value $TX_Q132_
A = 'Não'
B = 'Sim';

value $TX_Q133_
A = 'Não'
B = 'Sim';

value $TX_Q134_
A = 'Não'
B = 'Sim';

value $TX_Q135_
A = 'Não'
B = 'Sim';

value $TX_Q136_
A = 'Não'
B = 'Sim';

value $TX_Q137_
A = 'Não'
B = 'Sim';

value $TX_Q138_
A = 'Não'
B = 'Sim';

value $TX_Q139_
A = 'Não'
B = 'Sim';

value $TX_Q140_
A = 'Não'
B = 'Sim';

value $TX_Q141_
A = 'Não'
B = 'Sim';

value $TX_Q142_
A = 'Não'
B = 'Sim';

value $TX_Q143_
A =	'É inferior ao dos(as) professores(as) do Ensino Fundamental'
B =	'É equivalente ao dos(as) professores(as) do Ensino Fundamental'
C =	'É superior ao dos(as) professores(as) do Ensino Fundamental'
D =	'Não existe este profissional na rede';

value $TX_Q144_
A = 'Não'
B = 'Sim';

value $TX_Q154_
A = 'Não'
B = 'Sim';

value $TX_Q155_
A =	'Aplicam-se provas externas'
B =	'Não se aplicam provas externas';

value $TX_Q156_
A =	'Secretaria de Educação ou Órgão Gestor de Educação'
B =	'Instituição contratada';

value $TX_Q157_
A =	'Aplicam-se provas externas'
B =	'Não se aplicam provas externas';

value $TX_Q158_
A = 'Secretaria de Educação ou Órgão Gestor de Educação'
B = 'Instituição contratada';

value $TX_Q159_
A =	'Aplicam-se provas externas'
B =	'Não se aplicam provas externas';

value $TX_Q160_
A = 'Secretaria de Educação ou Órgão Gestor de Educação'
B = 'Instituição contratada';

value $TX_Q161_
A = 'Não'
B = 'Sim';

value $TX_Q162_
A = 'Não'
B = 'Sim';

value $TX_Q163_
A = 'Não'
B = 'Sim';

value $TX_Q164_
A = 'Não'
B = 'Sim';

value $TX_Q165_
A = 'Não'
B = 'Sim';

value $TX_Q166_
A = 'Não'
B = 'Sim';

value $TX_Q167_
A = 'Não'
B = 'Sim';

value $TX_Q168_
A = 'Não'
B = 'Sim';

value $TX_Q169_
A = 'Não'
B = 'Sim';

value $TX_Q170_
A = 'Não'
B = 'Sim';

value $TX_Q171_
A = 'Não'
B = 'Sim';

value $TX_Q172_
A = 'Não'
B = 'Sim';

value $TX_Q173_
A = 'Não'
B = 'Sim';

value $TX_Q174_
A = 'Não'
B = 'Sim';

value $TX_Q175_
A = 'Não'
B = 'Sim';

DATA WORK.TS_SECRETARIO_MUNICIPAL;
 INFILE 'C:\TS_SECRETARIO_MUNICIPAL.csv' /*Endereço do arquivo*/
        LRECL=5100
		firstobs=2
        DLM=";"
        MISSOVER
        DSD ;

    INPUT
        ID_SAEB          : ?? BEST4.
        ID_REGIAO        : ?? BEST1.
        ID_UF            : ?? BEST2.
        CO_MUNICIPIO     : ?? BEST7.
        ID_AREA          : ?? BEST1.
        IN_PREENCHIMENTO : ?? BEST1.
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
        TX_Q018          : ?? BEST2.
        TX_Q019          : ?? BEST2.
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
        TX_Q032          : ?? BEST3.
        TX_Q033          : ?? BEST3.
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
        TX_Q048          : $CHAR1.
        TX_Q049          : $CHAR1.
        TX_Q050          : $CHAR1.
        TX_Q051          : $CHAR1.
        TX_Q052          : $CHAR1.
        TX_Q053          : $CHAR1.
        TX_Q054          : $CHAR1.
        TX_Q055          : $CHAR1.
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
        TX_Q067          : $CHAR3774.
        TX_Q068          : ?? BEST1.
        TX_Q069          : ?? BEST1.
        TX_Q070          : ?? BEST1.
        TX_Q071          : ?? BEST1.
        TX_Q072          : ?? BEST1.
        TX_Q073          : ?? BEST1.
        TX_Q074          : ?? BEST1.
        TX_Q075          : ?? BEST1.
        TX_Q076          : ?? BEST1.
        TX_Q077          : ?? BEST1.
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
        TX_Q093          : ?? BEST3.
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
        TX_Q107          : $CHAR1.
        TX_Q108          : $CHAR1.
        TX_Q109          : $CHAR1.
        TX_Q110          : $CHAR1.
        TX_Q111          : $CHAR1.
        TX_Q112          : $CHAR1.
        TX_Q113          : $CHAR1.
        TX_Q114          : $CHAR1.
        TX_Q115          : $CHAR1.
        TX_Q116          : $CHAR1.
        TX_Q117          : ?? BEST3.
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
        TX_Q145          : ?? BEST1.
        TX_Q146          : ?? BEST1.
        TX_Q147          : ?? BEST1.
        TX_Q148          : ?? BEST1.
        TX_Q149          : ?? BEST1.
        TX_Q150          : ?? BEST1.
        TX_Q151          : ?? BEST1.
        TX_Q152          : ?? BEST1.
        TX_Q153          : ?? BEST1.
        TX_Q154          : $CHAR1.
        TX_Q155          : $CHAR1.
        TX_Q156          : $CHAR1.
        TX_Q157          : $CHAR1.
        TX_Q158          : $CHAR1.
        TX_Q159          : $CHAR1.
        TX_Q160          : $CHAR1.
        TX_Q161          : $CHAR1.
        TX_Q162          : $CHAR1.
        TX_Q163          : $CHAR1.
        TX_Q164          : $CHAR1.
        TX_Q165          : $CHAR1.
        TX_Q166          : $CHAR1.
        TX_Q167          : $CHAR1.
        TX_Q168          : $CHAR1.
        TX_Q169          : $CHAR1.
        TX_Q170          : $CHAR1.
        TX_Q171          : $CHAR1.
        TX_Q172          : $CHAR1.
        TX_Q173          : $CHAR1.
        TX_Q174          : $CHAR1.
        TX_Q175          : $CHAR1.
        TX_Q176          : $CHAR1962.;

ATTRIB ID_REGIAO FORMAT= ID_REGIAO.;
ATTRIB ID_UF FORMAT= ID_UF.;
ATTRIB ID_AREA FORMAT= ID_AREA.;
ATTRIB IN_PREENCHIMENTO FORMAT= IN_PREENCHIMENTO.;
ATTRIB TX_Q001 FORMAT= TX_Q001_.;
ATTRIB TX_Q003 FORMAT= TX_Q003_.;
ATTRIB TX_Q004 FORMAT= TX_Q004_.;
ATTRIB TX_Q005 FORMAT= TX_Q005_.;
ATTRIB TX_Q006 FORMAT= TX_Q006_.;
ATTRIB TX_Q007 FORMAT= TX_Q007_.;
ATTRIB TX_Q008 FORMAT= TX_Q008_.;
ATTRIB TX_Q009 FORMAT= TX_Q009_.;
ATTRIB TX_Q010 FORMAT= TX_Q010_.;
ATTRIB TX_Q011 FORMAT= TX_Q011_.;
ATTRIB TX_Q012 FORMAT= TX_Q012_.;
ATTRIB TX_Q013 FORMAT= TX_Q013_.;
ATTRIB TX_Q014 FORMAT= TX_Q014_.;
ATTRIB TX_Q015 FORMAT= TX_Q015_.;
ATTRIB TX_Q016 FORMAT= TX_Q016_.;
ATTRIB TX_Q017 FORMAT= TX_Q017_.;
ATTRIB TX_Q020 FORMAT= TX_Q020_.;
ATTRIB TX_Q021 FORMAT= TX_Q021_.;
ATTRIB TX_Q022 FORMAT= TX_Q022_.;
ATTRIB TX_Q023 FORMAT= TX_Q023_.;
ATTRIB TX_Q024 FORMAT= TX_Q024_.;
ATTRIB TX_Q025 FORMAT= TX_Q025_.;
ATTRIB TX_Q026 FORMAT= TX_Q026_.;
ATTRIB TX_Q027 FORMAT= TX_Q027_.;
ATTRIB TX_Q028 FORMAT= TX_Q028_.;
ATTRIB TX_Q029 FORMAT= TX_Q029_.;
ATTRIB TX_Q030 FORMAT= TX_Q030_.;
ATTRIB TX_Q031 FORMAT= TX_Q031_.;
ATTRIB TX_Q034 FORMAT= TX_Q034_.;
ATTRIB TX_Q035 FORMAT= TX_Q035_.;
ATTRIB TX_Q036 FORMAT= TX_Q036_.;
ATTRIB TX_Q037 FORMAT= TX_Q037_.;
ATTRIB TX_Q038 FORMAT= TX_Q038_.;
ATTRIB TX_Q039 FORMAT= TX_Q039_.;
ATTRIB TX_Q040 FORMAT= TX_Q040_.;
ATTRIB TX_Q041 FORMAT= TX_Q041_.;
ATTRIB TX_Q042 FORMAT= TX_Q042_.;
ATTRIB TX_Q043 FORMAT= TX_Q043_.;
ATTRIB TX_Q044 FORMAT= TX_Q044_.;
ATTRIB TX_Q045 FORMAT= TX_Q045_.;
ATTRIB TX_Q046 FORMAT= TX_Q046_.;
ATTRIB TX_Q047 FORMAT= TX_Q047_.;
ATTRIB TX_Q048 FORMAT= TX_Q048_.;
ATTRIB TX_Q049 FORMAT= TX_Q049_.;
ATTRIB TX_Q050 FORMAT= TX_Q050_.;
ATTRIB TX_Q051 FORMAT= TX_Q051_.;
ATTRIB TX_Q052 FORMAT= TX_Q052_.;
ATTRIB TX_Q053 FORMAT= TX_Q053_.;
ATTRIB TX_Q054 FORMAT= TX_Q054_.;
ATTRIB TX_Q055 FORMAT= TX_Q055_.;
ATTRIB TX_Q056 FORMAT= TX_Q056_.;
ATTRIB TX_Q057 FORMAT= TX_Q057_.;
ATTRIB TX_Q058 FORMAT= TX_Q058_.;
ATTRIB TX_Q059 FORMAT= TX_Q059_.;
ATTRIB TX_Q060 FORMAT= TX_Q060_.;
ATTRIB TX_Q061 FORMAT= TX_Q061_.;
ATTRIB TX_Q062 FORMAT= TX_Q062_.;
ATTRIB TX_Q063 FORMAT= TX_Q063_.;
ATTRIB TX_Q064 FORMAT= TX_Q064_.;
ATTRIB TX_Q065 FORMAT= TX_Q065_.;
ATTRIB TX_Q066 FORMAT= TX_Q066_.;
ATTRIB TX_Q078 FORMAT= TX_Q078_.;
ATTRIB TX_Q079 FORMAT= TX_Q079_.;
ATTRIB TX_Q080 FORMAT= TX_Q080_.;
ATTRIB TX_Q081 FORMAT= TX_Q081_.;
ATTRIB TX_Q082 FORMAT= TX_Q082_.;
ATTRIB TX_Q083 FORMAT= TX_Q083_.;
ATTRIB TX_Q084 FORMAT= TX_Q084_.;
ATTRIB TX_Q085 FORMAT= TX_Q085_.;
ATTRIB TX_Q086 FORMAT= TX_Q086_.;
ATTRIB TX_Q087 FORMAT= TX_Q087_.;
ATTRIB TX_Q088 FORMAT= TX_Q088_.;
ATTRIB TX_Q089 FORMAT= TX_Q089_.;
ATTRIB TX_Q090 FORMAT= TX_Q090_.;
ATTRIB TX_Q091 FORMAT= TX_Q091_.;
ATTRIB TX_Q092 FORMAT= TX_Q092_.;
ATTRIB TX_Q094 FORMAT= TX_Q094_.;
ATTRIB TX_Q095 FORMAT= TX_Q095_.;
ATTRIB TX_Q096 FORMAT= TX_Q096_.;
ATTRIB TX_Q097 FORMAT= TX_Q097_.;
ATTRIB TX_Q098 FORMAT= TX_Q098_.;
ATTRIB TX_Q099 FORMAT= TX_Q099_.;
ATTRIB TX_Q100 FORMAT= TX_Q100_.;
ATTRIB TX_Q101 FORMAT= TX_Q101_.;
ATTRIB TX_Q102 FORMAT= TX_Q102_.;
ATTRIB TX_Q103 FORMAT= TX_Q103_.;
ATTRIB TX_Q104 FORMAT= TX_Q104_.;
ATTRIB TX_Q105 FORMAT= TX_Q105_.;
ATTRIB TX_Q106 FORMAT= TX_Q106_.;
ATTRIB TX_Q107 FORMAT= TX_Q107_.;
ATTRIB TX_Q108 FORMAT= TX_Q108_.;
ATTRIB TX_Q109 FORMAT= TX_Q109_.;
ATTRIB TX_Q110 FORMAT= TX_Q110_.;
ATTRIB TX_Q111 FORMAT= TX_Q111_.;
ATTRIB TX_Q112 FORMAT= TX_Q112_.;
ATTRIB TX_Q113 FORMAT= TX_Q113_.;
ATTRIB TX_Q114 FORMAT= TX_Q114_.;
ATTRIB TX_Q115 FORMAT= TX_Q115_.;
ATTRIB TX_Q116 FORMAT= TX_Q116_.;
ATTRIB TX_Q118 FORMAT= TX_Q118_.;
ATTRIB TX_Q119 FORMAT= TX_Q119_.;
ATTRIB TX_Q120 FORMAT= TX_Q120_.;
ATTRIB TX_Q121 FORMAT= TX_Q121_.;
ATTRIB TX_Q122 FORMAT= TX_Q122_.;
ATTRIB TX_Q123 FORMAT= TX_Q123_.;
ATTRIB TX_Q124 FORMAT= TX_Q124_.;
ATTRIB TX_Q125 FORMAT= TX_Q125_.;
ATTRIB TX_Q126 FORMAT= TX_Q126_.;
ATTRIB TX_Q127 FORMAT= TX_Q127_.;
ATTRIB TX_Q128 FORMAT= TX_Q128_.;
ATTRIB TX_Q129 FORMAT= TX_Q129_.;
ATTRIB TX_Q130 FORMAT= TX_Q130_.;
ATTRIB TX_Q131 FORMAT= TX_Q131_.;
ATTRIB TX_Q132 FORMAT= TX_Q132_.;
ATTRIB TX_Q133 FORMAT= TX_Q133_.;
ATTRIB TX_Q134 FORMAT= TX_Q134_.;
ATTRIB TX_Q135 FORMAT= TX_Q135_.;
ATTRIB TX_Q136 FORMAT= TX_Q136_.;
ATTRIB TX_Q137 FORMAT= TX_Q137_.;
ATTRIB TX_Q138 FORMAT= TX_Q138_.;
ATTRIB TX_Q139 FORMAT= TX_Q139_.;
ATTRIB TX_Q140 FORMAT= TX_Q140_.;
ATTRIB TX_Q141 FORMAT= TX_Q141_.;
ATTRIB TX_Q142 FORMAT= TX_Q142_.;
ATTRIB TX_Q143 FORMAT= TX_Q143_.;
ATTRIB TX_Q144 FORMAT= TX_Q144_.;
ATTRIB TX_Q154 FORMAT= TX_Q154_.;
ATTRIB TX_Q155 FORMAT= TX_Q155_.;
ATTRIB TX_Q156 FORMAT= TX_Q156_.;
ATTRIB TX_Q157 FORMAT= TX_Q157_.;
ATTRIB TX_Q158 FORMAT= TX_Q158_.;
ATTRIB TX_Q159 FORMAT= TX_Q159_.;
ATTRIB TX_Q160 FORMAT= TX_Q160_.;
ATTRIB TX_Q161 FORMAT= TX_Q161_.;
ATTRIB TX_Q162 FORMAT= TX_Q162_.;
ATTRIB TX_Q163 FORMAT= TX_Q163_.;
ATTRIB TX_Q164 FORMAT= TX_Q164_.;
ATTRIB TX_Q165 FORMAT= TX_Q165_.;
ATTRIB TX_Q166 FORMAT= TX_Q166_.;
ATTRIB TX_Q167 FORMAT= TX_Q167_.;
ATTRIB TX_Q168 FORMAT= TX_Q168_.;
ATTRIB TX_Q169 FORMAT= TX_Q169_.;
ATTRIB TX_Q170 FORMAT= TX_Q170_.;
ATTRIB TX_Q171 FORMAT= TX_Q171_.;
ATTRIB TX_Q172 FORMAT= TX_Q172_.;
ATTRIB TX_Q173 FORMAT= TX_Q173_.;
ATTRIB TX_Q174 FORMAT= TX_Q174_.;
ATTRIB TX_Q175 FORMAT= TX_Q175_.;

LABEL

ID_SAEB = 'Ano de aplicação do Saeb'
ID_REGIAO = 'Código da Região'
ID_UF = 'Código da Unidade da Federação'
CO_MUNICIPIO = 'Código do Município'
ID_AREA = 'Área'
IN_PREENCHIMENTO = 'Indicador de preenchimento válido do questionário'
TX_Q001 = 'Qual é o seu sexo?'
TX_Q002 = 'Qual é a sua idade?'
TX_Q003 = 'Qual é a sua cor ou raça?'
TX_Q004 = 'Você possui deficiência, transtorno do espectro autista ou superdotação?'
TX_Q005 = 'Indique qual é a sua condição: Deficiência.'
TX_Q006 = 'Indique qual é a sua condição: Transtorno do espectro autista.'
TX_Q007 = 'Indique qual é a sua condição: Altas habilidades/superdotação.'
TX_Q008 = 'Qual é o MAIS ALTO nível de escolaridade que você concluiu?'
TX_Q009 = 'Este mais alto nível de escolaridade é relacionado ao campo educacional?'
TX_Q010 = 'Além de Secretário (a) Municipal de Educação neste município, você exerceu alguma outra função na área de educação?'
TX_Q011 = 'Indique as funções que exerceu: Professor(a) da Educação Básica.'
TX_Q012 = 'Indique as funções que exerceu: Professor(a) da Educação Superior.'
TX_Q013 = 'Indique as funções que exerceu: Diretor(a) ou vice-diretor(a) de escola de Educação Básica.'
TX_Q014 = 'Indique as funções que exerceu: Membro de equipe pedagógica de escola de Educação Básica.'
TX_Q015 = 'Indique as funções que exerceu: Membro de equipe da Secretaria de Educação ou Órgão Gestor de Educação municipal ou estadual (direção, pedagógico, administrativo etc.).'
TX_Q016 = 'Indique as funções que exerceu: Membro de equipe de Instituição de Educação Superior (direção, pedagógico, administrativo etc.).'
TX_Q017 = 'Indique as funções que exerceu: Secretário (a) Municipal de Educação em outra rede.'
TX_Q018 = 'Qual o seu tempo total de experiência, em ano, na área de educação?'
TX_Q019 = 'Qual o seu tempo de experiência, em ano, como Secretário (a) Municipal de Educação neste ou em outro município?'
TX_Q020 = 'Você ocupa o cargo de Secretário (a) Municipal de Educação desde o início da gestão do atual prefeito?'
TX_Q021 = 'Além de atividades como Secretário (a) Municipal de Educação, você exerce OUTRA atividade profissional?'
TX_Q022 = 'Repetir de ano é bom para o(a) estudante que não apresentou desempenho satisfatório.'
TX_Q023 = 'As avaliações externas (municipais, estaduais ou federais) têm direcionado o que deve ser ensinado na rede municipal.'
TX_Q024 = 'As avaliações externas (federal, estadual ou municipal) têm ajudado a melhorar o processo de ensino e aprendizagem na rede municipal.'
TX_Q025 = 'A maioria dos estudantes da rede municipal apresenta problemas de aprendizagem.'
TX_Q026 = 'Eu acredito que a totalidade dos estudantes da rede municipal são capazes de concluir a Educação Básica e prosseguir seus estudos.'
TX_Q027 = 'Autonomia em relação ao Conselho Estadual de Educação?'
TX_Q028 = 'Sistema Municipal de Ensino (define normas municipais, regras de funcionamento da rede, acompanha a execução dos programas do órgão gestor etc.)?'
TX_Q029 = 'Plano Municipal de Educação?'
TX_Q030 = 'Fórum Permanente ou Municipal de Educação?'
TX_Q031 = 'Conselho Municipal de Educação?'
TX_Q032 = 'Quantos servidores/funcionários SEM FUNÇÕES DOCENTES estão lotados na sede da Secretaria de Educação ou do Órgão Gestor de Educação?'
TX_Q033 = 'Quantos servidores/funcionários SEM FUNÇÕES DOCENTES lotados na sede da Secretaria de Educação ou Órgão Gestor de Educação desenvolvem atividades de apoio pedagógico às escolas?'
TX_Q034 = 'O(A) Secretário (a) Municipal de Educação determina quanto, quando e como usar os recursos financeiros disponíveis no orçamento anual da educação?'
TX_Q035 = 'O município repassa recursos municipais diretamente às suas escolas?'
TX_Q036 = 'Serviços de saúde (postos de saúde etc.).'
TX_Q037 = 'Serviços de assistência social (CRAS etc.).'
TX_Q038 = 'Segurança pública (polícia militar, guarda municipal etc.).'
TX_Q039 = 'Conselho Tutelar (Ministério Público e outros).'
TX_Q040 = 'Instituições de apoio ao público-alvo da educação especial (APAE etc.).'
TX_Q041 = 'Instituições de ensino superior (faculdades, universidades etc.).'
TX_Q042 = 'Instituições privadas (empresas, ONGs, corporações etc.).'
TX_Q043 = 'Outros órgãos da prefeitura ou dos governos estadual ou federal.'
TX_Q044 = 'Livre indicação pelo Executivo (prefeito, Secretário (a) Municipal de Educação etc.).'
TX_Q045 = 'Concurso público para o cargo de diretor(a).'
TX_Q046 = 'Consulta pública/eleição.'
TX_Q047 = 'Nenhum critério técnico.'
TX_Q048 = 'Titulação acadêmica.'
TX_Q049 = 'Participação/aprovação em curso de formação para diretor(a) escolar.'
TX_Q050 = 'Tempo de serviço.'
TX_Q051 = 'Experiência em gestão.'
TX_Q052 = 'Os critérios utilizados para o provimento ao cargo, ou função, de diretor(a) de escola estão definidos em legislação municipal?'
TX_Q053 = 'O município possui legislação que disciplina a gestão democrática da educação pública?'
TX_Q054 = 'Conteúdo e compreensão dos conceitos da(s) área(s) de ensino.'
TX_Q055 = 'Avaliação da aprendizagem.'
TX_Q056 = 'Avaliação em larga escala.'
TX_Q057 = 'Metodologias de ensino.'
TX_Q058 = 'Base Nacional Comum Curricular – BNCC.'
TX_Q059 = 'Gestão da sala de aula.'
TX_Q060 = 'Educação especial.'
TX_Q061 = 'Novas tecnologias educacionais.'
TX_Q062 = 'Gestão e administração escolar.'
TX_Q063 = 'Ensino híbrido.'
TX_Q064 = 'Alfabetização e letramento.'
TX_Q065 = 'Gestão democrática.'
TX_Q066 = 'Outros.'
TX_Q067 = 'Descreva outros cursos de formação continuada.'
TX_Q068 = 'Construção de escolas.'
TX_Q069 = 'Reforma de escolas (melhoria e/ou adequação do espaço físico etc.).'
TX_Q070 = 'Aquisição de mobiliário para as escolas (carteiras, armários etc.).'
TX_Q071 = 'Aquisição de material de higiene, limpeza e equipamento de proteção individual (álcool, sabonete, máscara etc).'
TX_Q072 = 'Aquisição de material pedagógico (livros, software, material audiovisual etc.).'
TX_Q073 = 'Aquisição de equipamentos para estudantes e/ou professores (computador, tablet, celular, chip para internet etc.).'
TX_Q074 = 'Produção de material didático audiovisual ou impresso.'
TX_Q075 = 'Contratação de profissionais para a educação.'
TX_Q076 = 'Distribuição da alimentação para os estudantes.'
TX_Q077 = 'Formação continuada dos(as) professores(as) da rede.'
TX_Q078 = 'Garantia da liberdade religiosa.'
TX_Q079 = 'Inclusão das pessoas público-alvo da educação especial.'
TX_Q080 = 'Combate ao abuso e à violência sexual.'
TX_Q081 = 'Combate ao preconceito ou à discriminação baseada no sexo ou no gênero.'
TX_Q082 = 'Combate ao racismo.'
TX_Q083 = 'Mediação de conflitos ou problemas de relacionamento na escola.'
TX_Q084 = 'Combate ao bullying e outras formas de violência.'
TX_Q085 = 'Promoção da cultura da paz e da não violência.'
TX_Q086 = 'Levantamento de conhecimentos prévios dos estudantes antes de iniciar um conteúdo curricular.'
TX_Q087 = 'Apresentação aos estudantes do currículo e das atividades a serem executadas.'
TX_Q088 = 'Incentivo aos estudantes para perguntar, comentar, sugerir e divergir durante as aulas.'
TX_Q089 = 'Estímulo aos estudantes para dialogar e tirar dúvidas com colegas durante as aulas.'
TX_Q090 = 'Organização de trabalhos em grupo nas aulas.'
TX_Q091 = 'Diversificação das metodologias de ensino conforme as dificuldades que os(as) estudantes evidenciam.'
TX_Q092 = 'A Secretaria de Educação ou Órgão Gestor de Educação possui instituições de Educação Infantil sob sua responsabilidade direta ou indireta?'
TX_Q093 = 'Para responder a esta questão, considere os funcionários/servidores que trabalham EXCLUSIVAMENTE na sede da Secretaria de Educação ou do Órgão Gestor de Educação. Quantos servidores/funcionários SEM FUNÇÕES DOCENTES lotados na sede da Secret(cf. dic.)'
TX_Q094 = 'Para a EDUCAÇÃO INFANTIL, o município possui: Cálculo da demanda por vagas?'
TX_Q095 = 'Para a EDUCAÇÃO INFANTIL, o município possui: Supervisão escolar?'
TX_Q096 = 'Para a EDUCAÇÃO INFANTIL, o município possui: Programa de formação de professores?'
TX_Q097 = 'Para a EDUCAÇÃO INFANTIL, o município possui: Busca ativa de crianças para a pré-escola?'
TX_Q098 = 'Para a EDUCAÇÃO INFANTIL, o município possui: Comitê Intersetorial de Políticas Públicas para a Primeira Infância?'
TX_Q099 = 'Para a EDUCAÇÃO INFANTIL, o município possui: Transporte escolar?'
TX_Q100 = 'Para a EDUCAÇÃO INFANTIL, o município possui: Ações para atingir metas de matrícula (garantia de acesso)?'
TX_Q101 = 'O município possui currículo municipal para a Educação Infantil?'
TX_Q102 = 'O currículo municipal da educação infantil está atualizado conforme a BNCC - Base Nacional Comum Curricular?'
TX_Q103 = 'Creche - Crianças de 0 a 3 anos?'
TX_Q104 = 'Pré-escola - Crianças 4 a 5 anos?'
TX_Q105 = 'As instituições conveniadas e/ou aquelas que celebram parcerias com o município são selecionadas através de chamada pública?'
TX_Q106 = 'Existem normas para o funcionamento das conveniadas e/ou aquelas que celebram parcerias com o município?'
TX_Q107 = 'Com relação à maior parte das instituições conveniadas e/ou aquelas que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: Propriedade das instalações.'
TX_Q108 = 'Com relação à maior parte das instituições conveniadas e/ou aquelas que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: Manutenção das instalações.'
TX_Q109 = 'Com relação à maior parte das instituições conveniadas e/ou aquelas que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: Pagamento dos professores.'
TX_Q110 = 'Com relação à maior parte das instituições conveniadas e/ou aquelas que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: Capacitação dos professores.'
TX_Q111 = 'Com relação à maior parte das instituições conveniadas e/ou aquelas que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: Fornecimento de recursos pedagógicos.'
TX_Q112 = 'Com relação à maior parte das instituições conveniadas e/ou aquelas que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: Oferta de merenda.'
TX_Q113 = 'Com relação à maior parte das instituições conveniadas e/ou aquelas que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: Transporte escolar.'
TX_Q114 = 'A Secretaria de Educação ou Órgão Gestor de Educação possui escolas de Ensino Fundamental?'
TX_Q115 = 'O Ensino Fundamental é oferecido em ciclos?'
TX_Q116 = 'A rede municipal de ensino utiliza um sistema apostilado desenvolvido por empresa, ONG ou instituição?'
TX_Q117 = 'Para responder a esta questão, considere os funcionários/servidores que trabalham EXCLUSIVAMENTE na sede da Secretaria de Educação ou do Órgão Gestor de Educação. Quantos servidores/funcionários SEM FUNÇÕES DOCENTES lotados na sede da Secret(cf. dic.)'
TX_Q118 = 'Para o ENSINO FUNDAMENTAL, o município possui: Cálculo da demanda por vagas?'
TX_Q119 = 'Para o ENSINO FUNDAMENTAL, o município possui: Supervisão escolar?'
TX_Q120 = 'Para o ENSINO FUNDAMENTAL, o município possui: Programa de formação de professores?'
TX_Q121 = 'Para o ENSINO FUNDAMENTAL, o município possui: Busca ativa de crianças e jovens para o Ensino Fundamental?'
TX_Q122 = 'Para o ENSINO FUNDAMENTAL, o município possui: Transporte escolar?'
TX_Q123 = 'Para o ENSINO FUNDAMENTAL, o município possui: Ações para atingir metas de matrícula (garantia de acesso)?'
TX_Q124 = 'O município possui currículo municipal para o Ensino Fundamental?'
TX_Q125 = 'O currículo municipal está atualizado conforme a BNCC – Base Nacional Comum Curricular?'
TX_Q126 = 'Auxiliares e assistentes da Educação Infantil.'
TX_Q127 = 'Professores(as) da Educação Infantil.'
TX_Q128 = 'Professores(as) do Ensino Fundamental.'
TX_Q129 = 'Profissionais não docentes.'
TX_Q130 = 'Até 20 horas semanais.'
TX_Q131 = 'De 21 a 30 horas semanais.'
TX_Q132 = 'De 31 a 40 horas semanais.'
TX_Q133 = 'Mais de 40 horas semanais.'
TX_Q134 = 'Para os(as) professores(as), está previsto o limite máximo de 2/3 da jornada de trabalho semanal em sala de aula?'
TX_Q135 = 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Tempo de efetivo exercício no cargo.'
TX_Q136 = 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Qualificação.'
TX_Q137 = 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Titulação.'
TX_Q138 = 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Assiduidade.'
TX_Q139 = 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Avaliação de desempenho.'
TX_Q140 = 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Prova de conhecimentos para professores.'
TX_Q141 = 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Desempenho dos alunos em avaliações externas.'
TX_Q142 = 'Para os(as) professores(as) com jornada de trabalho de 40 HORAS SEMANAIS, o VENCIMENTO INICIAL é igual ou superior a R$ 4.420,55?'
TX_Q143 = 'O VENCIMENTO INICIAL dos(as) professores(as) de EDUCAÇÃO INFANTIL, comparado com o dos(as) professores(as) do Ensino Fundamental:'
TX_Q144 = 'A Secretaria utiliza os resultados do IDEB?'
TX_Q145 = 'Indique o grau de importância que tem o Ideb para que a Secretaria de Educação ou Órgão Gestor de Educação do seu município possa desenvolver cada uma das seguintes ações: Coletar informações para a formação continuada de professores.'
TX_Q146 = 'Indique o grau de importância que tem o Ideb para que a Secretaria de Educação ou Órgão Gestor de Educação do seu município possa desenvolver cada uma das seguintes ações: Avaliar programas ou projetos da Secretaria de Educação ou Órgão Gestor de Educação.'
TX_Q147 = 'Indique o grau de importância que tem o Ideb para que a Secretaria de Educação ou Órgão Gestor de Educação do seu município possa desenvolver cada uma das seguintes ações: Produzir materiais didáticos e pedagógicos pela Secretaria de Educação(cf. dic.)'
TX_Q148 = 'Indique o grau de importância que tem o Ideb para que a Secretaria de Educação ou Órgão Gestor de Educação do seu município possa desenvolver cada uma das seguintes ações: Adquirir materiais didáticos e pedagógicos de empresas ou instituições.'
TX_Q149 = 'Indique o grau de importância que tem o Ideb para que a Secretaria de Educação ou Órgão Gestor de Educação do seu município possa desenvolver cada uma das seguintes ações: Premiar escolas com melhores resultados.'
TX_Q150 = 'Indique o grau de importância que tem o Ideb para que a Secretaria de Educação ou Órgão Gestor de Educação do seu município possa desenvolver cada uma das seguintes ações: Desenvolver ações pedagógicas voltadas para unidades escolares com pio(cf. dic.)'
TX_Q151 = 'Indique o grau de importância que tem o Ideb para que a Secretaria de Educação ou Órgão Gestor de Educação do seu município possa desenvolver cada uma das seguintes ações: Definir pagamento de bonificação para professores.'
TX_Q152 = 'Indique o grau de importância que tem o Ideb para que a Secretaria de Educação ou Órgão Gestor de Educação do seu município possa desenvolver cada uma das seguintes ações: Definir remanejamento de diretores.'
TX_Q153 = 'Indique o grau de importância que tem o Ideb para que a Secretaria de Educação ou Órgão Gestor de Educação do seu município possa desenvolver cada uma das seguintes ações: Autoavaliação da rede municipal de ensino.'
TX_Q154 = 'O município aplica PROVAS EXTERNAS, preparadas pela Secretaria de Educação ou pelo Órgão Gestor de Educação ou por instituição contratada, aos estudantes da rede municipal?'
TX_Q155 = 'Para cada etapa da Educação Básica, indique se são aplicadas, ou não, PROVAS EXTERNAS aos estudantes da rede municipal. Pré-escola'
TX_Q156 = 'Quem é responsável por elaborar as PROVAS EXTERNAS aplicadas aos estudantes da pré-escola?'
TX_Q157 = 'Indique as etapas da Educação Básica nas quais são aplicadas as provas preparadas pela secretaria ou instituicao contratada: Ensino Fundamental – Anos Iniciais'
TX_Q158 = 'Quem é responsável por elaborar as PROVAS EXTERNAS aplicadas aos estudantes dos anos iniciais do Ensino Fundamental?'
TX_Q159 = 'Indique as etapas da Educação Básica nas quais são aplicadas as provas preparadas pela secretaria ou instituicao contratada: Ensino Fundamental - Anos finais'
TX_Q160 = 'Quem é responsável por elaborar as PROVAS EXTERNAS aplicadas aos estudantes dos anos finais do Ensino Fundamental?'
TX_Q161 = 'Indique a periodicidade da aplicação das PROVAS EXTERNAS elaboradas pelo Secretaria de Educação ou pelo Órgão Gestor de Educação ou por instituição contratada: Mensal'
TX_Q162 = 'Indique a periodicidade da aplicação das PROVAS EXTERNAS elaboradas pelo Secretaria de Educação ou pelo Órgão Gestor de Educação ou por instituição contratada: Bimestral'
TX_Q163 = 'Indique a periodicidade da aplicação das PROVAS EXTERNAS elaboradas pelo Secretaria de Educação ou pelo Órgão Gestor de Educação ou por instituição contratada: Trimestral'
TX_Q164 = 'Indique a periodicidade da aplicação das PROVAS EXTERNAS elaboradas pelo Secretaria de Educação ou pelo Órgão Gestor de Educação ou por instituição contratada: Semestral'
TX_Q165 = 'Indique a periodAicidade da aplicação das PROVAS EXTERNAS elaboradas pelo Secretaria de Educação ou pelo Órgão Gestor de Educação ou por instituição contratada: Anual'
TX_Q166 = 'Indique a periodicidade da aplicação das PROVAS EXTERNAS elaboradas pelo Secretaria de Educação ou pelo Órgão Gestor de Educação ou por instituição contratada: Bianual'
TX_Q167 = 'A Secretaria de Educação ou Órgão Gestor de Educação realiza PERIODICAMENTE monitoramento ou avaliação da sua rede de ensino?'
TX_Q168 = 'Para cada uma das ações a seguir, indique se são, ou não, PERIODICAMENTE realizadas para monitorar ou avaliar a sua rede: Autoavaliação das escolas.'
TX_Q169 = 'Para cada uma das ações a seguir, indique se são, ou não, PERIODICAMENTE realizadas para monitorar ou avaliar a sua rede: Avaliação do Projeto Pedagógico das escolas.'
TX_Q170 = 'Para cada uma das ações a seguir, indique se são, ou não, PERIODICAMENTE realizadas para monitorar ou avaliar a sua rede: Desempenho dos(as) professores(as).'
TX_Q171 = 'Para cada uma das ações a seguir, indique se são, ou não, PERIODICAMENTE realizadas para monitorar ou avaliar a sua rede: Desempenho dos(as) diretores(as) das escolas.'
TX_Q172 = 'Para cada uma das ações a seguir, indique se são, ou não, PERIODICAMENTE realizadas para monitorar ou avaliar a sua rede: Infraestrutura das escolas.'
TX_Q173 = 'Para cada uma das ações a seguir, indique se são, ou não, PERIODICAMENTE realizadas para monitorar ou avaliar a sua rede: Transporte escolar.'
TX_Q174 = 'Para cada uma das ações a seguir, indique se são, ou não, PERIODICAMENTE realizadas para monitorar ou avaliar a sua rede: Merenda escolar.'
TX_Q175 = 'Para cada uma das ações a seguir, indique se são, ou não, PERIODICAMENTE realizadas para monitorar ou avaliar a sua rede: Organização administrativa das escolas.';

run;
quit;

