/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
/*                                   			                                       */
/*  Coordenação-Geral de Medidas da Educação Básica (CGMEB)                            */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_DIRETOR                                                  */
/*-------------------------------------------------------------------------------------*/
/*  DESCRICAO:   PROGRAMA PARA LEITURA DO QUESTIONÁRIO DO DIRETOR DO SAEB 2023         */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, é necessário salvar este programa e o arquivo             */
/* TS_DIRETOR.CSV no diretório C:\ do computador.	                                   */
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

value IN_PUBLICA
0='Privada'
1='Pública';

value ID_LOCALIZACAO
1='Urbana'
2='Rural';

value IN_PREENCHIMENTO_QUESTIONARIO
0='Não preenchido'
1='Preenchido parcial ou totalmente';

value ID_SERIE
2 = '2º ano do Ensino Fundamental'
5 = '5º ano do Ensino Fundamental'
9 = '9º ano do Ensino Fundamental'
12 = '3ª/4ª séries do Ensino Médio Tradicional'
13 = '3ª/4ª séries do Ensino Médio Integrado';

value $TX_Q001_
A =	'Não'
B =	'Sim';

value $TX_Q002_
A =	'Não'
B =	'Sim';

value $TX_Q003_
A =	'Não'
B =	'Sim';

value $TX_Q004_
A =	'Não'
B =	'Sim';

value $TX_Q005_
A =	'Não'
B =	'Sim';

value $TX_Q006_
A =	'Pública'
B =	'Privada';

value $TX_Q007_
A =	'Masculino'
B =	'Feminino'
C =	'Não quero declarar';

value $TX_Q009_
A =	'Branca'
B = 'Preta'
C =	'Parda'
D =	'Amarela'
E =	'Indígena'
F =	'Não quero declarar';

value $TX_Q010_
A =	'Não'
B =	'Sim';

value $TX_Q011_
A =	'Não'
B =	'Sim';

value $TX_Q012_
A =	'Não'
B =	'Sim';

value $TX_Q013_
A =	'Não'
B =	'Sim';

value $TX_Q014_
A =	'Ensino Fundamental'
B =	'Ensino Médio'
C =	'Graduação'
D =	'Especialização'
E =	'Mestrado'
F =	'Doutorado';

value $TX_Q015B
B = 'Nunca trabalhei';

value $TX_Q025_
A =	'Até R$ 1.320,00'
B =	'De R$ 1.320,01 até R$ 2.640,00'
C =	'De R$ 2.640,01 até R$ 3.960,00'
D =	'De R$ 3.960,01 até R$ 5.280,00'
E =	'De R$ 5.280,01 até R$ 6.600,00'
F =	'De R$ 6.600,01 até R$ 7.920,00'
G =	'De R$ 7.920,01 até R$ 9.240,00'
H =	'Acima de R$ 9.240,00';

value $TX_Q026_
A =	'Não'
B =	'Sim';

value $TX_Q027_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q028_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q029_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q030_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q031_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q032_
A =	'Não tem'
B =	'Muito inadequado'
C =	'Inadequado'
D =	'Adequado'
E =	'Muito adequado';

value $TX_Q033_
A =	'Não tem'
B =	'Muito inadequado'
C =	'Inadequado'
D =	'Adequado'
E =	'Muito adequado';

value $TX_Q034_
A =	'Não tem'
B =	'Muito inadequado'
C =	'Inadequado'
D =	'Adequado'
E =	'Muito adequado';

value $TX_Q035_
A =	'Não tem'
B =	'Muito inadequado'
C =	'Inadequado'
D =	'Adequado'
E =	'Muito adequado';

value $TX_Q036_
A =	'Não tem'
B =	'Muito inadequado'
C =	'Inadequado'
D =	'Adequado'
E =	'Muito adequado';

value $TX_Q037_
A =	'Não tem'
B =	'Muito inadequado'
C =	'Inadequado'
D =	'Adequado'
E =	'Muito adequado';

value $TX_Q038_
A =	'Não tem'
B =	'Muito inadequado'
C =	'Inadequado'
D =	'Adequado'
E =	'Muito adequado';

value $TX_Q039_
A =	'Não tem'
B =	'Muito inadequado'
C =	'Inadequado'
D =	'Adequado'
E =	'Muito adequado';

value $TX_Q040_
A =	'Não tem'
B =	'Muito inadequado'
C =	'Inadequado'
D =	'Adequado'
E =	'Muito adequado';

value $TX_Q041_
A =	'Não tem'
B =	'Muito inadequado'
C =	'Inadequado'
D =	'Adequado'
E =	'Muito adequado';

value $TX_Q042_
A =	'Não tem'
B =	'Muito inadequado'
C =	'Inadequado'
D =	'Adequado'
E =	'Muito adequado';

value $TX_Q043_
A =	'Não tem'
B =	'Muito inadequado'
C =	'Inadequado'
D =	'Adequado'
E =	'Muito adequado';

value $TX_Q044_
A =	'Não tem'
B =	'Muito inadequado'
C =	'Inadequado'
D =	'Adequado'
E =	'Muito adequado';

value $TX_Q045_
A =	'Não tem'
B =	'Muito inadequado'
C =	'Inadequado'
D =	'Adequado'
E =	'Muito adequado';

value $TX_Q046_
A =	'Não tem'
B =	'Muito inadequado'
C =	'Inadequado'
D =	'Adequado'
E =	'Muito adequado';

value $TX_Q047_
A =	'Não tem'
B =	'Muito inadequado'
C =	'Inadequado'
D =	'Adequado'
E =	'Muito adequado';

value $TX_Q048_
A =	'Não tem'
B =	'Muito inadequado'
C =	'Inadequado'
D =	'Adequado'
E =	'Muito adequado';

value $TX_Q049_
A =	'Não tem'
B =	'Muito inadequado'
C =	'Inadequado'
D =	'Adequado'
E =	'Muito adequado';

value $TX_Q050_
A =	'Não tem'
B =	'Muito inadequado'
C =	'Inadequado'
D =	'Adequado'
E =	'Muito adequado';

value $TX_Q051_
A =	'Não tem'
B =	'Muito inadequado'
C =	'Inadequado'
D =	'Adequado'
E =	'Muito adequado';

value $TX_Q052_
A =	'Não tem'
B =	'Muito inadequado'
C =	'Inadequado'
D =	'Adequado'
E =	'Muito adequado';

value $TX_Q053_
A =	'Não tem'
B =	'Muito inadequado'
C =	'Inadequado'
D =	'Adequado'
E =	'Muito adequado';

value $TX_Q054_
A =	'A escola não oferece Ensino Fundamental e/ou Médio'
B =	'Os(As) alunos(as) da Educação Infantil utilizam a área externa em horário diferenciado'
C =	'Os(As) alunos(as) da Educação Infantil utilizam a área externa no mesmo horário';

value $TX_Q055_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q056_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q057_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q058_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q059_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q060_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q061_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q062_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q063_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q064_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q065_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q066_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q067_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q068_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q069_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q070_
A =	'Não'
B =	'Sim';

value $TX_Q071_
A =	'Suficiente'
B =	'Insuficiente';

value $TX_Q072_
A =	'Suficiente'
B =	'Insuficiente';

value $TX_Q073_
A =	'Suficiente'
B =	'Insuficiente';

value $TX_Q074_
A =	'Suficiente'
B =	'Insuficiente';

value $TX_Q075_
A =	'Suficiente'
B =	'Insuficiente';

value $TX_Q076_
A =	'Suficiente'
B =	'Insuficiente';

value $TX_Q077_
A =	'Suficiente'
B =	'Insuficiente';

value $TX_Q078_
A =	'Não'
B =	'Sim';

value $TX_Q079_
A =	'Não'
B =	'Sim';

value $TX_Q080_
A =	'Não'
B =	'Sim';

value $TX_Q081_
A =	'Não'
B =	'Sim';

value $TX_Q082_
A =	'Não'
B =	'Sim';

value $TX_Q083_
A =	'Não'
B =	'Sim';

value $TX_Q084_
A =	'Não'
B =	'Sim';

value $TX_Q085_
A =	'Não'
B =	'Sim';

value $TX_Q086_
A =	'Não'
B =	'Sim';

value $TX_Q087_
A =	'Não'
B =	'Sim';

value $TX_Q088_
A =	'Não'
B =	'Sim';

value $TX_Q091_
A =	'Nunca'
B =	'Poucas vezes'
C =	'Muitas vezes'
D =	'Sempre';

value $TX_Q092_
A =	'Nunca'
B =	'Poucas vezes'
C =	'Muitas vezes'
D =	'Sempre';

value $TX_Q093_
A =	'Nunca'
B =	'Poucas vezes'
C =	'Muitas vezes'
D =	'Sempre';

value $TX_Q094_
A =	'Nunca'
B =	'Poucas vezes'
C =	'Muitas vezes'
D =	'Sempre';

value $TX_Q095_
A =	'Nunca'
B =	'Poucas vezes'
C =	'Muitas vezes'
D =	'Sempre';

value $TX_Q096_
A =	'Nunca'
B =	'Poucas vezes'
C =	'Muitas vezes'
D =	'Sempre';

value $TX_Q097_
A =	'Nunca'
B =	'Poucas vezes'
C =	'Muitas vezes'
D =	'Sempre';

value $TX_Q098_
A =	'Nunca'
B =	'Poucas vezes'
C =	'Muitas vezes'
D =	'Sempre';

value $TX_Q099_
A =	'Nunca'
B =	'Poucas vezes'
C =	'Muitas vezes'
D =	'Sempre';

value $TX_Q100_
A =	'Nunca'
B =	'Poucas vezes'
C =	'Muitas vezes'
D =	'Sempre';

value $TX_Q101_
A =	'Nunca'
B =	'Poucas vezes'
C =	'Muitas vezes'
D =	'Sempre';

value $TX_Q102_
A =	'Nunca'
B =	'Poucas vezes'
C =	'Muitas vezes'
D =	'Sempre';

value $TX_Q103_
A =	'Nunca'
B =	'Poucas vezes'
C =	'Muitas vezes'
D =	'Sempre';

value $TX_Q104_
A =	'Muito inadequado'
B =	'Inadequado'
C =	'Adequado'
D =	'Muito adequado';

value $TX_Q105_
A =	'Muito inadequado'
B =	'Inadequado'
C =	'Adequado'
D =	'Muito adequado';

value $TX_Q106_
A =	'Muito inadequado'
B =	'Inadequado'
C =	'Adequado'
D =	'Muito adequado';

value $TX_Q107_
A =	'Muito inadequado'
B =	'Inadequado'
C =	'Adequado'
D =	'Muito adequado';

value $TX_Q108_
A =	'Muito inadequado'
B =	'Inadequado'
C =	'Adequado'
D =	'Muito adequado';

value $TX_Q109_
A =	'Muito inadequado'
B =	'Inadequado'
C =	'Adequado'
D =	'Muito adequado';

value $TX_Q110_
A =	'Não'
B =	'Sim';

value $TX_Q112_
A =	'Não'
B =	'Sim';

value $TX_Q115_
A =	'Não'
B =	'Sim';

value $TX_Q117_
A =	'Não'
B =	'Sim';

value $TX_Q118_
A =	'Ativo'
B =	'Inativo';

value $TX_Q119_
A =	'Não'
B =	'Sim';

value $TX_Q120_
A =	'Não'
B =	'Sim';

value $TX_Q121_
A =	'Não'
B =	'Sim';

value $TX_Q122_
A =	'Não'
B =	'Sim';

value $TX_Q123_
A =	'Não'
B =	'Sim';

value $TX_Q124_
A =	'Não'
B =	'Sim';

value $TX_Q125_
A =	'Não'
B =	'Sim';

value $TX_Q126_
A =	'Não'
B =	'Sim';

value $TX_Q127_
A =	'Não'
B =	'Sim';

value $TX_Q128_
A =	'Não'
B =	'Sim';

value $TX_Q129_
A =	'Não'
B =	'Sim';

value $TX_Q130_
A =	'Não'
B =	'Sim';

value $TX_Q131_
A =	'Não'
B =	'Sim';

value $TX_Q132_
A =	'Não'
B =	'Sim';

value $TX_Q133_
A =	'Não'
B =	'Sim';

value $TX_Q134_
A =	'Não'
B =	'Sim';

value $TX_Q135_
A =	'Não'
B =	'Sim';

value $TX_Q136_
A =	'Aquisição pela escola'
B =	'Doação'
C =	'Solicitação às famílias';

value $TX_Q137_
A =	'Aquisição pela escola'
B =	'Doação'
C =	'Solicitação às famílias';

value $TX_Q138_
A =	'Aquisição pela escola'
B =	'Doação'
C =	'Solicitação às famílias';

value $TX_Q139_
A =	'Não'
B =	'Sim';

value $TX_Q140_
A =	'Uma vez'
B =	'Duas vezes'
C =	'Três vezes ou mais'
D =	'Não se aplica';

value $TX_Q141_
A =	'Uma vez'
B =	'Duas vezes'
C =	'Três vezes ou mais'
D =	'Não se aplica';

value $TX_Q142_
A =	'Uma vez'
B =	'Duas vezes'
C =	'Três vezes ou mais'
D =	'Não se aplica';

value $TX_Q143_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q144_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q145_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q146_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q147_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q148_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q149_
A =	'Discordo fortemente'
B =	'Discordo'
C =	'Concordo'
D =	'Concordo fortemente';

value $TX_Q150_
A =	'Não'
B =	'Sim';

value $TX_Q151_
A =	'Não'
B =	'Sim';

value $TX_Q152_
A =	'Não'
B =	'Sim'
C =	'Não sei';

value $TX_Q153_
A =	'Não'
B =	'Sim'
C =	'Não sei';

value $TX_Q154_
A =	'Não'
B =	'Sim'
C =	'Não sei';

value $TX_Q155_
A =	'Não'
B =	'Sim'
C =	'Não sei';

value $TX_Q156_
A =	'Não'
B =	'Sim'
C =	'Não sei';

value $TX_Q157_
A =	'Não'
B =	'Sim'
C =	'Não sei';

value $TX_Q158_
A =	'Não'
B =	'Sim'
C =	'Não sei';

value $TX_Q159_
A =	'Não'
B =	'Sim'
C =	'Não sei';

value $TX_Q160_
A =	'Não'
B =	'Sim';

value $TX_Q161_
A =	'Não'
B =	'Sim';

value $TX_Q162_
A =	'Não'
B =	'Sim';

value $TX_Q163_
A =	'Não'
B =	'Sim';

value $TX_Q164_
A =	'Não'
B =	'Sim';

value $TX_Q165_
A =	'Não'
B =	'Sim';

value $TX_Q166_
A =	'Não'
B =	'Sim';

value $TX_Q167_
A =	'Não'
B =	'Sim';

value $TX_Q169_
A =	'Não'
B =	'Sim';

value $TX_Q170_
A =	'Não'
B =	'Sim';

value $TX_Q171_
A =	'Não'
B =	'Sim';

value $TX_Q172_
A =	'Não'
B =	'Sim';

value $TX_Q173_
A =	'Não'
B =	'Sim';

value $TX_Q174_
A =	'Não'
B =	'Sim';

value $TX_Q175_
A =	'Não'
B =	'Sim';

value $TX_Q176_
A =	'Não'
B =	'Sim';

value $TX_Q177_
A =	'Não'
B =	'Sim';

value $TX_Q178_
A =	'Não'
B =	'Sim';

value $TX_Q179_
A =	'Não'
B =	'Sim';

value $TX_Q180_
A =	'Não'
B =	'Sim';

value $TX_Q181_
A =	'Não'
B =	'Sim';

value $TX_Q182_
A =	'Não'
B =	'Sim';

value $TX_Q183_
A =	'Não'
B =	'Sim';

value $TX_Q184_
A =	'Não'
B =	'Sim';

value $TX_Q185_
A =	'Não'
B =	'Sim';

value $TX_Q186_
A =	'Não foi realizada esta ação'
B =	'Nada efetiva'
C =	'Pouco efetiva'
D =	'Efetiva'
E =	'Muito efetiva';

value $TX_Q187_
A =	'Não foi realizada esta ação'
B =	'Nada efetiva'
C =	'Pouco efetiva'
D =	'Efetiva'
E =	'Muito efetiva';

value $TX_Q188_
A =	'Não foi realizada esta ação'
B =	'Nada efetiva'
C =	'Pouco efetiva'
D =	'Efetiva'
E =	'Muito efetiva';

value $TX_Q189_
A =	'Não foi realizada esta ação'
B =	'Nada efetiva'
C =	'Pouco efetiva'
D =	'Efetiva'
E =	'Muito efetiva';

value $TX_Q190_
A =	'Não foi realizada esta ação'
B =	'Nada efetiva'
C =	'Pouco efetiva'
D =	'Efetiva'
E =	'Muito efetiva';

value $TX_Q191_
A =	'Não foi realizada esta ação'
B =	'Nada efetiva'
C =	'Pouco efetiva'
D =	'Efetiva'
E =	'Muito efetiva';

value $TX_Q192_
A =	'Não foi realizada esta ação'
B =	'Nada efetiva'
C =	'Pouco efetiva'
D =	'Efetiva'
E =	'Muito efetiva';

value $TX_Q193_
A =	'Não foi realizada esta ação'
B =	'Nada efetiva'
C =	'Pouco efetiva'
D =	'Efetiva'
E =	'Muito efetiva';

value $TX_Q194_
A =	'Não'
B =	'Sim';

value $TX_Q195_
A =	'Não'
B =	'Sim';

value $TX_Q196_
A =	'Não'
B =	'Sim';

value $TX_Q197_
A =	'Não'
B =	'Sim';

value $TX_Q198_
A =	'Não'
B =	'Sim';

value $TX_Q199_
A =	'Não'
B =	'Sim';

value $TX_Q200_
A =	'Não'
B =	'Sim';

value $TX_Q201_
A =	'Não'
B =	'Sim';

value $TX_Q202_
A =	'Não'
B =	'Sim';

value $TX_Q203_
A =	'Não'
B =	'Sim';

value $TX_Q204_
A =	'Não'
B =	'Sim';

value $TX_Q205_
A =	'Não'
B =	'Sim';

value $TX_Q206_
A =	'Não'
B =	'Sim';

value $TX_Q207_
A =	'Não'
B =	'Sim';

value $TX_Q208_
A =	'Não'
B =	'Sim';

value $TX_Q209_
A =	'Não'
B =	'Sim';

value $TX_Q210_
A =	'Não'
B =	'Sim';

value $TX_Q212_
A =	'Não'
B =	'Sim';

value $TX_Q213_
A =	'Não'
B =	'Sim';

value $TX_Q214_
A =	'Não'
B =	'Sim';

value $TX_Q215_
A =	'Não'
B =	'Sim';

value $TX_Q216_
A =	'Não'
B =	'Sim';

value $TX_Q217_
A =	'Não'
B =	'Sim';

value $TX_Q218_
A =	'Não'
B =	'Sim';

value $TX_Q219_
A =	'Não'
B =	'Sim';

value $TX_Q220_
A =	'Não'
B =	'Sim';

value $TX_Q221_
A =	'Não'
B =	'Sim';

value $TX_Q222_
A =	'Não'
B =	'Sim';

value $TX_Q223_
A =	'Não'
B =	'Sim';

run;

DATA WORK.TS_DIRETOR;

 INFILE 'C:\TS_DIRETOR.csv' /*Endereço do arquivo*/
        LRECL=7500
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
        IN_PREENCHIMENTO_QUESTIONARIO : ?? BEST1.
        ID_SERIE         : ?? BEST2.
        ESTRATO          : ?? BEST9.
        VL_PESO_ESCOLA   : ?? COMMA12.
        TX_Q001          : $CHAR1.
        TX_Q002          : $CHAR1.
        TX_Q003          : $CHAR1.
        TX_Q004          : $CHAR1.
        TX_Q005          : $CHAR1.
        TX_Q006          : $CHAR1.
        TX_Q007          : $CHAR1.
        TX_Q008          : ?? BEST2.
        TX_Q009          : $CHAR1.
        TX_Q010          : $CHAR1.
        TX_Q011          : $CHAR1.
        TX_Q012          : $CHAR1.
        TX_Q013          : $CHAR1.
        TX_Q014          : $CHAR1.
        TX_Q015_A        : ?? BEST2.
        TX_Q015_B        : $CHAR1.
        TX_Q016          : ?? BEST2.
        TX_Q017          : ?? BEST2.
        TX_Q018          : ?? BEST2.
        TX_Q019          : ?? BEST2.
        TX_Q020          : ?? BEST2.
        TX_Q021          : ?? BEST2.
        TX_Q022          : ?? BEST2.
        TX_Q023          : ?? BEST2.
        TX_Q024          : ?? BEST2.
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
        TX_Q089          : $CHAR1308.
        TX_Q090          : ?? BEST3.
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
        TX_Q107          : $CHAR1.
        TX_Q108          : $CHAR1.
        TX_Q109          : $CHAR1.
        TX_Q110          : $CHAR1.
        TX_Q111          : ?? BEST2.
        TX_Q112          : $CHAR1.
        TX_Q113          : ?? BEST2.
        TX_Q114          : ?? BEST2.
        TX_Q115          : $CHAR1.
        TX_Q116          : ?? BEST2.
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
        TX_Q148          : $CHAR1.
        TX_Q149          : $CHAR1.
        TX_Q150          : $CHAR1.
        TX_Q151          : $CHAR1.
        TX_Q152          : $CHAR1.
        TX_Q153          : $CHAR1.
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
        TX_Q168          : $CHAR2496.
        TX_Q169          : $CHAR1.
        TX_Q170          : $CHAR1.
        TX_Q171          : $CHAR1.
        TX_Q172          : $CHAR1.
        TX_Q173          : $CHAR1.
        TX_Q174          : $CHAR1.
        TX_Q175          : $CHAR1.
        TX_Q176          : $CHAR1.
        TX_Q177          : $CHAR1.
        TX_Q178          : $CHAR1.
        TX_Q179          : $CHAR1.
        TX_Q180          : $CHAR1.
        TX_Q181          : $CHAR1.
        TX_Q182          : $CHAR1.
        TX_Q183          : $CHAR1.
        TX_Q184          : $CHAR1.
        TX_Q185          : $CHAR1.
        TX_Q186          : $CHAR1.
        TX_Q187          : $CHAR1.
        TX_Q188          : $CHAR1.
        TX_Q189          : $CHAR1.
        TX_Q190          : $CHAR1.
        TX_Q191          : $CHAR1.
        TX_Q192          : $CHAR1.
        TX_Q193          : $CHAR1.
        TX_Q194          : $CHAR1.
        TX_Q195          : $CHAR1.
        TX_Q196          : $CHAR1.
        TX_Q197          : $CHAR1.
        TX_Q198          : $CHAR1.
        TX_Q199          : $CHAR1.
        TX_Q200          : $CHAR1.
        TX_Q201          : $CHAR1.
        TX_Q202          : $CHAR1.
        TX_Q203          : $CHAR1.
        TX_Q204          : $CHAR1.
        TX_Q205          : $CHAR1.
        TX_Q206          : $CHAR1.
        TX_Q207          : $CHAR1.
        TX_Q208          : $CHAR1.
        TX_Q209          : $CHAR1.
        TX_Q210          : $CHAR1.
        TX_Q211          : $CHAR6749.
        TX_Q212          : $CHAR1.
        TX_Q213          : $CHAR1.
        TX_Q214          : $CHAR1.
        TX_Q215          : $CHAR1.
        TX_Q216          : $CHAR1.
        TX_Q217          : $CHAR1.
        TX_Q218          : $CHAR1.
        TX_Q219          : $CHAR1.
        TX_Q220          : $CHAR1.
        TX_Q221          : $CHAR1.
        TX_Q222          : $CHAR1.
        TX_Q223          : $CHAR1.
        TX_Q224          : $CHAR3436. ;

ATTRIB ID_REGIAO FORMAT=ID_REGIAO.;
ATTRIB ID_UF FORMAT=ID_UF.;
ATTRIB ID_AREA FORMAT=ID_AREA.;
ATTRIB ID_SERIE FORMAT=ID_SERIE.;
ATTRIB IN_PUBLICA FORMAT=IN_PUBLICA.;
ATTRIB ID_LOCALIZACAO FORMAT=ID_LOCALIZACAO.;
ATTRIB IN_PREENCHIMENTO_QUESTIONARIO FORMAT=IN_PREENCHIMENTO_QUESTIONARIO.;
ATTRIB TX_Q001 FORMAT=TX_Q001_.;
ATTRIB TX_Q002 FORMAT=TX_Q002_.;
ATTRIB TX_Q003 FORMAT=TX_Q003_.;
ATTRIB TX_Q004 FORMAT=TX_Q004_.;
ATTRIB TX_Q005 FORMAT=TX_Q005_.;
ATTRIB TX_Q006 FORMAT=TX_Q006_.;
ATTRIB TX_Q007 FORMAT=TX_Q007_.;
ATTRIB TX_Q009 FORMAT=TX_Q009_.;
ATTRIB TX_Q010 FORMAT=TX_Q010_.;
ATTRIB TX_Q011 FORMAT=TX_Q011_.;
ATTRIB TX_Q012 FORMAT=TX_Q012_.;
ATTRIB TX_Q013 FORMAT=TX_Q013_.;
ATTRIB TX_Q014 FORMAT=TX_Q014_.;
ATTRIB TX_Q015_B FORMAT=TX_Q015B.;
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
ATTRIB TX_Q048 FORMAT=TX_Q048_.;
ATTRIB TX_Q049 FORMAT=TX_Q049_.;
ATTRIB TX_Q050 FORMAT=TX_Q050_.;
ATTRIB TX_Q051 FORMAT=TX_Q051_.;
ATTRIB TX_Q052 FORMAT=TX_Q052_.;
ATTRIB TX_Q053 FORMAT=TX_Q053_.;
ATTRIB TX_Q054 FORMAT=TX_Q054_.;
ATTRIB TX_Q055 FORMAT=TX_Q055_.;
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
ATTRIB TX_Q103 FORMAT=TX_Q103_.;
ATTRIB TX_Q104 FORMAT=TX_Q104_.;
ATTRIB TX_Q105 FORMAT=TX_Q105_.;
ATTRIB TX_Q106 FORMAT=TX_Q106_.;
ATTRIB TX_Q107 FORMAT=TX_Q107_.;
ATTRIB TX_Q108 FORMAT=TX_Q108_.;
ATTRIB TX_Q109 FORMAT=TX_Q109_.;
ATTRIB TX_Q110 FORMAT=TX_Q110_.;
ATTRIB TX_Q112 FORMAT=TX_Q112_.;
ATTRIB TX_Q115 FORMAT=TX_Q115_.;
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
ATTRIB TX_Q148 FORMAT=TX_Q148_.;
ATTRIB TX_Q149 FORMAT=TX_Q149_.;
ATTRIB TX_Q150 FORMAT=TX_Q150_.;
ATTRIB TX_Q151 FORMAT=TX_Q151_.;
ATTRIB TX_Q152 FORMAT=TX_Q152_.;
ATTRIB TX_Q153 FORMAT=TX_Q153_.;
ATTRIB TX_Q154 FORMAT=TX_Q154_.;
ATTRIB TX_Q155 FORMAT=TX_Q155_.;
ATTRIB TX_Q156 FORMAT=TX_Q156_.;
ATTRIB TX_Q157 FORMAT=TX_Q157_.;
ATTRIB TX_Q158 FORMAT=TX_Q158_.;
ATTRIB TX_Q159 FORMAT=TX_Q159_.;
ATTRIB TX_Q160 FORMAT=TX_Q160_.;
ATTRIB TX_Q161 FORMAT=TX_Q161_.;
ATTRIB TX_Q162 FORMAT=TX_Q162_.;
ATTRIB TX_Q163 FORMAT=TX_Q163_.;
ATTRIB TX_Q164 FORMAT=TX_Q164_.;
ATTRIB TX_Q165 FORMAT=TX_Q165_.;
ATTRIB TX_Q166 FORMAT=TX_Q166_.;
ATTRIB TX_Q167 FORMAT=TX_Q167_.;
ATTRIB TX_Q169 FORMAT=TX_Q169_.;
ATTRIB TX_Q170 FORMAT=TX_Q170_.;
ATTRIB TX_Q171 FORMAT=TX_Q171_.;
ATTRIB TX_Q172 FORMAT=TX_Q172_.;
ATTRIB TX_Q173 FORMAT=TX_Q173_.;
ATTRIB TX_Q174 FORMAT=TX_Q174_.;
ATTRIB TX_Q175 FORMAT=TX_Q175_.;
ATTRIB TX_Q176 FORMAT=TX_Q176_.;
ATTRIB TX_Q177 FORMAT=TX_Q177_.;
ATTRIB TX_Q178 FORMAT=TX_Q178_.;
ATTRIB TX_Q179 FORMAT=TX_Q179_.;
ATTRIB TX_Q180 FORMAT=TX_Q180_.;
ATTRIB TX_Q181 FORMAT=TX_Q181_.;
ATTRIB TX_Q182 FORMAT=TX_Q182_.;
ATTRIB TX_Q183 FORMAT=TX_Q183_.;
ATTRIB TX_Q184 FORMAT=TX_Q184_.;
ATTRIB TX_Q185 FORMAT=TX_Q185_.;
ATTRIB TX_Q186 FORMAT=TX_Q186_.;
ATTRIB TX_Q187 FORMAT=TX_Q187_.;
ATTRIB TX_Q188 FORMAT=TX_Q188_.;
ATTRIB TX_Q189 FORMAT=TX_Q189_.;
ATTRIB TX_Q190 FORMAT=TX_Q190_.;
ATTRIB TX_Q191 FORMAT=TX_Q191_.;
ATTRIB TX_Q192 FORMAT=TX_Q192_.;
ATTRIB TX_Q193 FORMAT=TX_Q193_.;
ATTRIB TX_Q194 FORMAT=TX_Q194_.;
ATTRIB TX_Q195 FORMAT=TX_Q195_.;
ATTRIB TX_Q196 FORMAT=TX_Q196_.;
ATTRIB TX_Q197 FORMAT=TX_Q197_.;
ATTRIB TX_Q198 FORMAT=TX_Q198_.;
ATTRIB TX_Q199 FORMAT=TX_Q199_.;
ATTRIB TX_Q200 FORMAT=TX_Q200_.;
ATTRIB TX_Q177 FORMAT=TX_Q177_.;
ATTRIB TX_Q178 FORMAT=TX_Q178_.;
ATTRIB TX_Q179 FORMAT=TX_Q179_.;
ATTRIB TX_Q180 FORMAT=TX_Q180_.;
ATTRIB TX_Q181 FORMAT=TX_Q181_.;
ATTRIB TX_Q182 FORMAT=TX_Q182_.;
ATTRIB TX_Q183 FORMAT=TX_Q183_.;
ATTRIB TX_Q184 FORMAT=TX_Q184_.;
ATTRIB TX_Q185 FORMAT=TX_Q185_.;
ATTRIB TX_Q186 FORMAT=TX_Q186_.;
ATTRIB TX_Q187 FORMAT=TX_Q187_.;
ATTRIB TX_Q188 FORMAT=TX_Q188_.;
ATTRIB TX_Q189 FORMAT=TX_Q189_.;
ATTRIB TX_Q190 FORMAT=TX_Q190_.;
ATTRIB TX_Q191 FORMAT=TX_Q191_.;
ATTRIB TX_Q192 FORMAT=TX_Q192_.;
ATTRIB TX_Q193 FORMAT=TX_Q193_.;
ATTRIB TX_Q194 FORMAT=TX_Q194_.;
ATTRIB TX_Q195 FORMAT=TX_Q195_.;
ATTRIB TX_Q196 FORMAT=TX_Q196_.;
ATTRIB TX_Q197 FORMAT=TX_Q197_.;
ATTRIB TX_Q198 FORMAT=TX_Q198_.;
ATTRIB TX_Q199 FORMAT=TX_Q199_.;
ATTRIB TX_Q200 FORMAT=TX_Q200_.;
ATTRIB TX_Q201 FORMAT=TX_Q201_.;
ATTRIB TX_Q202 FORMAT=TX_Q202_.;
ATTRIB TX_Q203 FORMAT=TX_Q203_.;
ATTRIB TX_Q204 FORMAT=TX_Q204_.;
ATTRIB TX_Q205 FORMAT=TX_Q205_.;
ATTRIB TX_Q206 FORMAT=TX_Q206_.;
ATTRIB TX_Q207 FORMAT=TX_Q207_.;
ATTRIB TX_Q208 FORMAT=TX_Q208_.;
ATTRIB TX_Q209 FORMAT=TX_Q209_.;
ATTRIB TX_Q210 FORMAT=TX_Q210_.;
ATTRIB TX_Q212 FORMAT=TX_Q212_.;
ATTRIB TX_Q213 FORMAT=TX_Q213_.;
ATTRIB TX_Q214 FORMAT=TX_Q214_.;
ATTRIB TX_Q215 FORMAT=TX_Q215_.;
ATTRIB TX_Q216 FORMAT=TX_Q216_.;
ATTRIB TX_Q217 FORMAT=TX_Q217_.;
ATTRIB TX_Q218 FORMAT=TX_Q218_.;
ATTRIB TX_Q219 FORMAT=TX_Q219_.;
ATTRIB TX_Q220 FORMAT=TX_Q220_.;
ATTRIB TX_Q221 FORMAT=TX_Q221_.;
ATTRIB TX_Q222 FORMAT=TX_Q222_.;
ATTRIB TX_Q223 FORMAT=TX_Q223_.;

LABEL

ID_SAEB = 'Ano de aplicação do Saeb'                                                                                                    
ID_REGIAO = 'Código da Região'                                                                                                                         
ID_UF = 'Código da Unidade da Federação'                                                                                                               
ID_MUNICIPIO = 'Máscaras dos Códigos de Municípios (são códigos fictícios)'                                                                                                                   
ID_AREA = 'Área'
ID_ESCOLA= 'Máscaras dos Códigos de Escola (são códigos fictícios)'
IN_PUBLICA= 'Indica se a escola é pública ou não'
ID_LOCALIZACAO= 'Localização'
IN_PREENCHIMENTO_QUESTIONARIO = 'Indicador de preenchimento do questionário'
ID_SERIE = 'Ano escolar para o qual a escola participou do Saeb'
ESTRATO = 'Descrição dos estratos'
VL_PESO_ESCOLA = 'Peso da Escola para análise do questionário de Diretor, por ano escolar avaliado'
TX_Q001 = 'Educação Infantil - Creche (0 a 3 anos)'
TX_Q002 = 'Educação Infantil - Pré-escola (4 e 5 anos)'
TX_Q003 = 'Anos Iniciais do Ensino Fundamental'
TX_Q004 = 'Anos Finais do Ensino Fundamental'
TX_Q005 = 'Ensino Médio'
TX_Q006 = 'Sua escola é'
TX_Q007 = 'Qual é o seu sexo?'
TX_Q008 = 'Qual é a sua idade?'
TX_Q009 = 'Qual é a sua cor ou raça?'
TX_Q010 = 'Você possui deficiência, transtorno do espectro autista ou superdotação?'
TX_Q011 = 'Indique qual a sua condição. Deficiência'
TX_Q012 = 'Indique qual a sua condição. Transtorno do espectro autista'
TX_Q013 = 'Indique qual a sua condição. Altas habilidades/superdotação'
TX_Q014 = 'Qual é o MAIS ALTO nível de escolaridade que você concluiu?'
TX_Q015_A = 'Quanto anos você trabalhou como professor(a) antes de se tornar diretor(a)?'
TX_Q015_B = 'Quanto anos você trabalhou como professor(a) antes de se tornar diretor(a)? Nunca trabalhei'
TX_Q016 = 'Há quantos anos você exerce a função de diretor(a) de escola?'
TX_Q017 = 'Há quantos anos você é diretor(a) desta escola?'
TX_Q018 = 'Em uma semana normal de trabalho, quantas HORAS, no total, você gasta com TODAS as atividades de direção da escola?'
TX_Q019 = 'Coordenar a gestão curricular, os métodos de aprendizagem, a avaliação e o planejamento pedagógico'
TX_Q020 = 'Liderar as equipes de trabalho (reunião com professores, delegar tarefas para outros profissionais etc.)'
TX_Q021 = 'Gerenciar os recursos financeiros (prestação de contas etc.) e as atividades administrativas (merenda, segurança, manutenção predial etc.)'
TX_Q022 = 'Atendimento à comunidade escolar – pais ou responsáveis, professores(as) e estudantes, colaboradores etc.'
TX_Q023 = 'Outras atividades'
TX_Q024 = 'Qual a sua carga horária semanal total de trabalho como diretor(a)?'
TX_Q025 = 'Qual é o seu salário bruto como diretor(a)?'
TX_Q026 = 'Você possui outra atividade remunerada?'
TX_Q027 = 'Repetir de ano é bom para o(a) estudante que não apresentou desempenho satisfatório'
TX_Q028 = 'As avaliações externas (municipais, estaduais ou federais) têm direcionado o que deve ser ensinado'
TX_Q029 = 'As avaliações externas (federais, estaduais ou municipais) têm ajudado a melhorar o processo de ensino e aprendizagem'
TX_Q030 = 'A maioria dos estudantes da escola apresenta problemas de aprendizagem'
TX_Q031 = 'Eu acredito que a totalidade dos(as) estudantes da escola são capazes de concluir a Educação Básica e prosseguir seus estudos'
TX_Q032 = 'Televisão'
TX_Q033 = 'Projetor multimídia (datashow)'
TX_Q034 = 'Computador (de mesa ou portátil)'
TX_Q035 = 'Softwares educacionais'
TX_Q036 = 'Internet banda larga'
TX_Q037 = 'Recursos pedagógicos para atendimento educacional especializado'
TX_Q038 = 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Bebedouro ao alcance das crianças'
TX_Q039 = 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Chuveiro para as crianças'
TX_Q040 = 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Área sombreada'
TX_Q041 = 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Área externa coberta'
TX_Q042 = 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Vegetação e jardim'
TX_Q043 = 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Horta'
TX_Q044 = 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Tanque de areia'
TX_Q045 = 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Gira-gira'
TX_Q046 = 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Gangorra'
TX_Q047 = 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Escorregador'
TX_Q048 = 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Casinha'
TX_Q049 = 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Balanço'
TX_Q050 = 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Brinquedo para escalar'
TX_Q051 = 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Banheiro infantil'
TX_Q052 = 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Espaço destinado à amamentação'
TX_Q053 = 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Condições para armazenamento de leite materno'
TX_Q054 = 'Caso sua escola ofereça Ensino Fundamental e/ou Médio, a área externa (pátio, área verde e parque) é utilizada em horários diferenciados pelos(as) alunos(as) da Educação Infantil?'
TX_Q055 = 'Os recursos financeiros foram suficientes'
TX_Q056 = 'Houve atraso no repasse de recursos financeiros para pagamento de pessoal'
TX_Q057 = 'O quadro de professores estava completo'
TX_Q058 = 'Havia quantidade suficiente de pessoal de apoio (serviços gerais)'
TX_Q059 = 'Havia quantidade suficiente de pessoal administrativo (secretaria)'
TX_Q060 = 'Havia quantidade suficiente de pessoal para apoio pedagógico (coordenador e orientador)'
TX_Q061 = 'Recebi apoio da Secretaria de Educação'
TX_Q062 = 'Os(As) professores(as) foram assíduos(as)'
TX_Q063 = 'As substituições das ausências de professores(as) foram facilmente realizadas'
TX_Q064 = 'Os(As) estudantes foram assíduos(as)'
TX_Q065 = 'A comunidade apoiou a gestão da escola'
TX_Q066 = 'A comunidade executou trabalhos voluntários na escola'
TX_Q067 = 'As famílias contribuíram com o trabalho pedagógico.'
TX_Q068 = 'Os(As) estudantes com deficiência, transtorno do espectro autista ou com altas habilidades/superdotação receberam atendimento educacional especializado (AEE).'
TX_Q069 = 'No início do ano letivo, todos(as) os(as) estudantes receberam os livros didáticos.'
TX_Q070 = 'Neste ano, houve a necessidade de profissionais para atendimento educacional especializado?'
TX_Q071 = 'Caso tenha havido necessidade, indique se a quantidade de profissionais foi suficiente ou insuficiente para a necessidade da escola. Professor(a) de Braille.'
TX_Q072 = 'Caso tenha havido necessidade, indique se a quantidade de profissionais foi suficiente ou insuficiente para a necessidade da escola. Professor(a) bilíngue para surdos.'
TX_Q073 = 'Caso tenha havido necessidade, indique se a quantidade de profissionais foi suficiente ou insuficiente para a necessidade da escola. Professor ou Instrutor de Libras'
TX_Q074 = 'Caso tenha havido necessidade, indique se a quantidade de profissionais foi suficiente ou insuficiente para a necessidade da escola. Guia-interprete'
TX_Q075 = 'Caso tenha havido necessidade, indique se a quantidade de profissionais foi suficiente ou insuficiente para a necessidade da escola. Professor(a) da sala de recursos multifuncionais.'
TX_Q076 = 'Caso tenha havido necessidade, indique se a quantidade de profissionais foi suficiente ou insuficiente para a necessidade da escola. Professor(a) itinerante.'
TX_Q077 = 'Caso tenha havido necessidade, indique se a quantidade de profissionais foi suficiente ou insuficiente para a necessidade da escola. Monitor(a) de apoio à educação especial.'
TX_Q078 = 'Falta de água.'
TX_Q079 = 'Falta de energia.'
TX_Q080 = 'Falta de merenda.'
TX_Q081 = 'Greve de professores.'
TX_Q082 = 'Episódios de violência.'
TX_Q083 = 'Problemas de infraestrutura predial.'
TX_Q084 = 'Paralisação do transporte.'
TX_Q085 = 'Eventos climáticos (inundação, desmoronamento etc.).'
TX_Q086 = 'Eventos comemorativos.'
TX_Q087 = 'Problemas de saúde pública.'
TX_Q088 = 'Outros.'
TX_Q089 = '[Descreva os outros problemas].'
TX_Q090 = 'Em relação a todas as interrupções que assinalou, por quantos dias o calendário escolar de 2023 foi interrompido?'
TX_Q091 = 'Sobre os episódios listados abaixo, indique a frequência com que ocorreram neste ano, nesta escola: Atentado à vida.'
TX_Q092 = 'Sobre os episódios listados abaixo, indique a frequência com que ocorreram neste ano, nesta escola: Lesão corporal.'
TX_Q093 = 'Sobre os episódios listados abaixo, indique a frequência com que ocorreram neste ano, nesta escola: Roubo ou furto.'
TX_Q094 = 'Sobre os episódios listados abaixo, indique a frequência com que ocorreram neste ano, nesta escola: Tráfico de drogas.'
TX_Q095 = 'Sobre os episódios listados abaixo, indique a frequência com que ocorreram neste ano, nesta escola: Permanência de pessoas sob efeito de álcool.'
TX_Q096 = 'Sobre os episódios listados abaixo, indique a frequência com que ocorreram neste ano, nesta escola: Permanência de pessoas sob efeito de drogas.'
TX_Q097 = 'Sobre os episódios listados abaixo, indique a frequência com que ocorreram neste ano, nesta escola: Porte de arma (revólver, faca, canivete).'
TX_Q098 = 'Sobre os episódios listados abaixo, indique a frequência com que ocorreram neste ano, nesta escola: Assédio sexual.'
TX_Q099 = 'Sobre os episódios listados abaixo, indique a frequência com que ocorreram neste ano, nesta escola: Discriminação (racial, gênero, orientação sexual, econômica/social, deficiência).'
TX_Q100 = 'Sobre os episódios listados abaixo, indique a frequência com que ocorreram neste ano, nesta escola: Bullying (ameaças ou ofensas verbais).'
TX_Q101 = 'Sobre os episódios listados abaixo, indique a frequência com que ocorreram neste ano, nesta escola: Invasão do espaço escolar.'
TX_Q102 = 'Sobre os episódios listados abaixo, indique a frequência com que ocorreram neste ano, nesta escola: Depredação do patrimônio escolar (vandalismo).'
TX_Q103 = 'Sobre os episódios listados abaixo, indique a frequência com que ocorreram neste ano, nesta escola: Tiroteio ou bala perdida.'
TX_Q104 = 'Condições de segurança na entrada e saída da escola.'
TX_Q105 = 'Muros e/ou grades que isolam a escola do ambiente externo.'
TX_Q106 = 'Identificação externa que caracterize o prédio como uma instituição escolar.'
TX_Q107 = 'O acesso à entrada principal adequado ao público-alvo da educação especial (rampas, marcadores no chão).'
TX_Q108 = 'Condições de uso dos equipamentos da área externa de recreação (parque infantil, pátio, quadra poliesportiva).'
TX_Q109 = 'O acesso dos(as) estudantes público-alvo da educação especial à área externa de recreação (parque infantil, pátio, quadra poliesportiva).'
TX_Q110 = 'Há Conselho Escolar na sua escola?'
TX_Q111 = 'Quantas vezes o Conselho Escolar se reuniu neste ano?'
TX_Q112 = 'Há Conselho de Classe na sua escola?'
TX_Q113 = 'Quantas vezes o Conselho de Classe se reuniu neste ano?'
TX_Q114 = 'Quantos estudantes participam do Conselho de Classe?'
TX_Q115 = 'Existe Associação de Pais e Mestres – APM (ou caixa escolar) nesta escola?'
TX_Q116 = 'Quantas vezes a APM se reuniu neste ano?'
TX_Q117 = 'Há grêmio estudantil na sua escola?'
TX_Q118 = 'O grêmio estudantil está:'
TX_Q119 = 'Com relação à gestão da escola: A escola é militar ou militarizada.'
TX_Q120 = 'Com relação à gestão da escola: A escola é confessional ou segue uma orientação religiosa.'
TX_Q121 = 'A escola desenvolve REGULARMENTE trabalhos em conjunto com: Serviços de saúde (postos de saúde).'
TX_Q122 = 'A escola desenvolve REGULARMENTE trabalhos em conjunto com: Serviços de assistência social (CRAS e outros).'
TX_Q123 = 'A escola desenvolve REGULARMENTE trabalhos em conjunto com: Segurança pública (polícia militar, guarda municipal e outros).'
TX_Q124 = 'A escola desenvolve REGULARMENTE trabalhos em conjunto com: Conselho Tutelar (Ministério Público e outros).'
TX_Q125 = 'A escola desenvolve REGULARMENTE trabalhos em conjunto com: Instituições de apoio ao público-alvo da educação especial (Apae).'
TX_Q126 = 'A escola desenvolve REGULARMENTE trabalhos em conjunto com: Instituições de ensino superior (faculdades, universidades, IFs).'
TX_Q127 = 'A escola desenvolve REGULARMENTE trabalhos em conjunto com: Instituições privadas (empresas, ONGs, corporações).'
TX_Q128 = 'A escola desenvolve REGULARMENTE trabalhos em conjunto com: Outros órgãos da prefeitura ou do governo estadual ou federal.'
TX_Q129 = 'Quais as fontes de financiamento da escola? Recursos federais (Programa Dinheiro Direto na Escola etc.).'
TX_Q130 = 'Quais as fontes de financiamento da escola? Recursos estaduais ou municipais.'
TX_Q131 = 'Quais as fontes de financiamento da escola? Eventos da escola (festa, rifa etc.).'
TX_Q132 = 'Quais as fontes de financiamento da escola? Empresas que apoiam a escola.'
TX_Q133 = 'Quais as fontes de financiamento da escola? Organizações sem fins lucrativos que apoiam a escola.'
TX_Q134 = 'Quais as fontes de financiamento da escola? Contribuições dos familiares dos(as) estudantes.'
TX_Q135 = 'Quais as fontes de financiamento da escola? Contribuições dos(as) profissionais da escola.'
TX_Q136 = 'Como a escola adquire os seguintes recursos: Brinquedos.'
TX_Q137 = 'Como a escola adquire os seguintes recursos: Recursos pedagógicos.'
TX_Q138 = 'Como a escola adquire os seguintes recursos: Materiais de higiene pessoal.'
TX_Q139 = 'A escola oferece merenda aos(às) estudantes?'
TX_Q140 = 'Quantas refeições são oferecidas nesta escola em relação ao tempo de permanência dos(as) estudantes? Para estudantes que permanecem até 4 horas na escola:'
TX_Q141 = 'Quantas refeições são oferecidas nesta escola em relação ao tempo de permanência dos(as) estudantes? Para estudantes que permanecem mais que 4 e menos que 7 horas na escola:'
TX_Q142 = 'Quantas refeições são oferecidas nesta escola em relação ao tempo de permanência dos(as) estudantes? Para estudantes que permanecem 7 horas ou mais na escola:'
TX_Q143 = 'Em relação à merenda escolar, como você avalia os seguintes aspectos: A quantidade de alimentos é suficiente para todos(as).'
TX_Q144 = 'Em relação à merenda escolar, como você avalia os seguintes aspectos: Os alimentos são de boa qualidade.'
TX_Q145 = 'Em relação à merenda escolar, como você avalia os seguintes aspectos: Há dietas específicas para estudantes com restrições alimentares.'
TX_Q146 = 'Em relação à merenda escolar, como você avalia os seguintes aspectos: A cozinha atende as necessidades do preparo da merenda.'
TX_Q147 = 'Em relação à merenda escolar, como você avalia os seguintes aspectos: O local de alimentação é adequado.'
TX_Q148 = 'Em relação à merenda escolar, como você avalia os seguintes aspectos: O acesso ao local de alimentação é livre para estudantes com mobilidade reduzida.'
TX_Q149 = 'Em relação à merenda escolar, como você avalia os seguintes aspectos: Há pias para higienização das mãos próximas ao local de alimentação.'
TX_Q150 = 'A merenda escolar é preparada na própria instituição?'
TX_Q151 = 'A escola possui Projeto Político-Pedagógico?'
TX_Q152 = 'Indique se as situações abaixo se aplicam ou não ao Projeto Político-Pedagógico desta escola. Seu conteúdo é discutido em reuniões?'
TX_Q153 = 'Indique se as situações abaixo se aplicam ou não ao Projeto Político-Pedagógico desta escola. Os(As) professores(as) participaram da elaboração?'
TX_Q154 = 'Indique se as situações abaixo se aplicam ou não ao Projeto Político-Pedagógico desta escola. Os profissionais não docentes participaram da elaboração?'
TX_Q155 = 'Indique se as situações abaixo se aplicam ou não ao Projeto Político-Pedagógico desta escola. Os pais participaram da elaboração?'
TX_Q156 = 'Indique se as situações abaixo se aplicam ou não ao Projeto Político-Pedagógico desta escola. Os(As) estudantes participaram da elaboração?'
TX_Q157 = 'Indique se as situações abaixo se aplicam ou não ao Projeto Político-Pedagógico desta escola. Estabelece metas de aprendizagem?'
TX_Q158 = 'Indique se as situações abaixo se aplicam ou não ao Projeto Político-Pedagógico desta escola. Considera os resultados de avaliações externas (Saeb, estaduais, municipais etc.)?'
TX_Q159 = 'Indique se as situações abaixo se aplicam ou não ao Projeto Político-Pedagógico desta escola. Há metas de alcance de indicadores externos (Ideb, índices estaduais ou municipais)?'
TX_Q160 = 'Neste ano e nesta escola, todos que solicitaram vagas conseguiram se matricular?'
TX_Q161 = 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola: Sorteio.'
TX_Q162 = 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola: Local de moradia.'
TX_Q163 = 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola: Prova de conhecimentos.'
TX_Q164 = 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola: Ordem da inscrição/lista de espera.'
TX_Q165 = 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola: Características socioeconômicas.'
TX_Q166 = 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola: Desempenho do(a) estudante no ano anterior.'
TX_Q167 = 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola: Outros critérios definidos pela Secretaria de Educação ou pelo Órgão Gestor de Educação.'
TX_Q168 = 'Descreva os critérios.'
TX_Q169 = 'Idade.'
TX_Q170 = 'Capacidade física da sala de aula.'
TX_Q171 = 'Manter estudantes na mesma etapa de ensino.'
TX_Q172 = 'Manter as turmas existentes do ano anterior.'
TX_Q173 = 'Critérios disciplinares.'
TX_Q174 = 'Desempenho escolar.'
TX_Q175 = 'Disponibilidade de vagas na turma.'
TX_Q176 = 'Ordem da matrícula.'
TX_Q177 = 'Atendimento à solicitação dos pais/responsáveis.'
TX_Q178 = 'Preferência dos(as) professores(as).'
TX_Q179 = 'Tempo de serviço.'
TX_Q180 = 'Cursos de formação continuada realizados.'
TX_Q181 = 'Professores(as) experientes nas turmas com facilidade de aprendizagem.'
TX_Q182 = 'Professores(as) experientes nas turmas com dificuldade de aprendizagem.'
TX_Q183 = 'Manutenção do(a) professor(a) com a mesma turma.'
TX_Q184 = 'Revezamento dos(as) professores(as) entre séries/anos.'
TX_Q185 = 'Atribuição pela gestão da escola.'
TX_Q186 = 'Neste ano, a escola realizou as seguintes ações para redução da REPETÊNCIA ESCOLAR? Caso tenham sido realizadas, indique a eficácia das seguintes ações: Oferta de reforço escolar.'
TX_Q187 = 'Neste ano, a escola realizou as seguintes ações para redução da REPETÊNCIA ESCOLAR? Oferta de atendimento educacional especializado para estudantes com deficiência, transtornos do espectro autista ou com altas habilidades/superdotação.'
TX_Q188 = 'Neste ano, a escola realizou as seguintes ações para redução da REPETÊNCIA ESCOLAR? Os(As) estudantes são estimulados(as) a apoiar uns(umas) aos(às) outros(as).'
TX_Q189 = 'Neste ano, a escola realizou as seguintes ações para redução da REPETÊNCIA ESCOLAR? Revisão dos procedimentos de avaliação.'
TX_Q190 = 'Neste ano, a escola realizou as seguintes ações para redução da REPETÊNCIA ESCOLAR? Revisão das práticas pedagógicas.'
TX_Q191 = 'Neste ano, a escola realizou as seguintes ações para redução do ABANDONO ESCOLAR? Caso tenham sido realizadas, indique a eficácia das seguintes ações: Entrar em contato com os familiares/responsáveis do(a) estudante.'
TX_Q192 = 'Neste ano, a escola realizou as seguintes ações para redução do ABANDONO ESCOLAR? Ir à residência do(a) estudante.'
TX_Q193 = 'Neste ano, a escola realizou as seguintes ações para redução do ABANDONO ESCOLAR? Informar ao Conselho Tutelar.'
TX_Q194 = 'Nesta escola, há projetos com as seguintes temáticas: Ciência e tecnologia.'
TX_Q195 = 'Nesta escola, há projetos com as seguintes temáticas: Combate à discriminação (racial, gênero, orientação sexual, econômica/social, deficiência, religiosa).'
TX_Q196 = 'Nesta escola, há projetos com as seguintes temáticas: Combate à violência (física, verbal, bullying, entre outras).'
TX_Q197 = 'Nesta escola, há projetos com as seguintes temáticas: Direitos humanos (de idosos, pessoas com deficiência, mulheres, crianças, adolescentes e outros).'
TX_Q198 = 'Nesta escola, há projetos com as seguintes temáticas: Educação ambiental e consumo sustentável.'
TX_Q199 = 'Nesta escola, há projetos com as seguintes temáticas: Educação para o trânsito.'
TX_Q200 = 'Nesta escola, há projetos com as seguintes temáticas: Mundo do trabalho (direitos, relações, entre outros).'
TX_Q201 = 'Nesta escola, há projetos com as seguintes temáticas: Nutrição e alimentação.'
TX_Q202 = 'Nesta escola, há projetos com as seguintes temáticas: Promoção da democracia e da cidadania.'
TX_Q203 = 'Nesta escola, há projetos com as seguintes temáticas: Uso de drogas.'
TX_Q204 = 'Nesta escola, há projetos com as seguintes temáticas: Sexualidade.'
TX_Q205 = 'Preparação dos(as) estudantes para os testes de avaliação externos.'
TX_Q206 = 'Inscrição dos(as) estudantes em olímpiadas de conhecimento.'
TX_Q207 = 'Feira de ciências.'
TX_Q208 = 'Feira de artes'
TX_Q209 = 'Campeonatos esportivos.'
TX_Q210 = 'Outros.'
TX_Q211 = '[Descreva os outros tipos de ações.]'
TX_Q212 = 'Conteúdo e compreensão dos conceitos da(s) área(s) de ensino.'
TX_Q213 = 'Avaliação da aprendizagem.'
TX_Q214 = 'Avaliação em larga escala.'
TX_Q215 = 'Metodologias de ensino.'
TX_Q216 = 'Base Nacional Comum Curricular – BNCC.'
TX_Q217 = 'Gestão da sala de aula.'
TX_Q218 = 'Educação especial.'
TX_Q219 = 'Novas tecnologias educacionais.'
TX_Q220 = 'Gestão e administração escolar.'
TX_Q221 = 'Ensino híbrido.'
TX_Q222 = 'Alfabetização e letramento.'
TX_Q223 = 'Gestão democrática.'
TX_Q224 = 'Sugestões de melhoria para o instrumento (inclusão de temas, estrutura do questionário etc.)';

run;quit;