/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação-Geral de Medidas da Educação Básica (CGMEB)	                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_ALUNO_5EF                                                                   */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DOS RESULTADOS DOS ALUNOS DO */
/*                     5º ANO DO SAEB 2023                                                                    */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* TS_ALUNO_5EF.CSV no diretório C:\ do computador.	                                     */
/*							 */ 
/* Ao terminar esses procedimentos execute o programa salvo utilizando                      */
/* as variáveis de interesse.					 */	
/*							 */
/* Para a leitura dos microdados é necessário a seleção do programa abaixo,               */
/* depois execute-o.						 */
/*							 */ 
/******************************************************************************************************/
/*                                                   ATENÇÃO                                                          */ 
/******************************************************************************************************/
/* Este programa abre a base de dados com os rótulos das variáveis de	                    */
/* acordo com o dicionário de dados que compõem os microdados. Para abrir                */
/* os dados sem os rótulos basta importar diretamente no SPSS.		  */
/* 							  */
/* Os Rótulos de algumas variáveis não estão completos, em virtude do tamanho do.      */
/* dos enunciados das questões. Tais enunciados foram resumidos e indicados com o   */
/* seguinte código: "(Cf. Dic.)". Essas questões exigem a Consulta do Dicionário de       */
/* Variáveis para conhecer o enunciado completo.                                                     	  */
/* 							   */
/*******************************************************************************************************/

GET DATA
  /TYPE=TXT
  /FILE="C:\TS_ALUNO_5EF.csv"
  /DELCASE=LINE
  /DELIMITERS=";"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  ID_SAEB F4.0
  ID_REGIAO F1.0
  ID_UF F2.0
  ID_MUNICIPIO F7.0
  ID_AREA F1.0
  ID_ESCOLA F8.0
  IN_PUBLICA F1.0
  ID_LOCALIZACAO F1.0
  ID_TURMA F7.0
  ID_SERIE F1.0
  ID_ALUNO F8.0
  IN_SITUACAO_CENSO F1.0
  IN_PREENCHIMENTO_LP F1.0
  IN_PREENCHIMENTO_MT F1.0
  IN_PREENCHIMENTO_CH F1.0
  IN_PREENCHIMENTO_CN F1.0
  IN_PRESENCA_LP F1.0
  IN_PRESENCA_MT F1.0
  IN_PRESENCA_CH F1.0
  IN_PRESENCA_CN F1.0
  ID_CADERNO_LP F2.0
  ID_BLOCO_1_LP F1.0
  ID_BLOCO_2_LP F1.0
  ID_CADERNO_MT F2.0
  ID_BLOCO_1_MT F1.0
  ID_BLOCO_2_MT F1.0
  ID_CADERNO_CH F2.0
  ID_BLOCO_1_CH F1.0
  ID_BLOCO_2_CH F2.0
  NU_BLOCO_1_ABERTA_CH F1.0
  NU_BLOCO_2_ABERTA_CH F1.0
  ID_CADERNO_CN F2.0
  ID_BLOCO_1_CN F2.0
  ID_BLOCO_2_CN F2.0
  ID_BLOCO_3_CN F2.0
  NU_BLOCO_1_ABERTA_CN F1.0
  NU_BLOCO_2_ABERTA_CN F1.0
  TX_RESP_BLOCO1_LP A11
  TX_RESP_BLOCO2_LP A11
  TX_RESP_BLOCO1_MT A11
  TX_RESP_BLOCO2_MT A11
  TX_RESP_BLOCO_1_CH A12
  TX_RESP_BLOCO_2_CH A12
  CO_CONCEITO_Q1_CH A2
  CO_CONCEITO_Q2_CH A2
  TX_RESP_BLOCO1_CN A8
  TX_RESP_BLOCO2_CN A8
  TX_RESP_BLOCO3_CN A8
  CO_CONCEITO_Q1_CN A2
  CO_CONCEITO_Q2_CN A2
  IN_PROFICIENCIA_LP F1.0
  IN_PROFICIENCIA_MT F1.0
  IN_PROFICIENCIA_CH F1.0
  IN_PROFICIENCIA_CN F1.0
  IN_AMOSTRA F1.0
  ESTRATO F9.0
  ESTRATO_CIENCIAS F5.0
  PESO_ALUNO_LP COMMA12.7
  PROFICIENCIA_LP COMMA10.7
  ERRO_PADRAO_LP COMMA10.7
  PROFICIENCIA_LP_SAEB COMMA12.7
  ERRO_PADRAO_LP_SAEB COMMA10.7
  PESO_ALUNO_MT COMMA12.7
  PROFICIENCIA_MT COMMA10.7
  ERRO_PADRAO_MT COMMA10.7
  PROFICIENCIA_MT_SAEB COMMA12.7
  ERRO_PADRAO_MT_SAEB COMMA10.7
  PESO_ALUNO_CH COMMA12.7
  PROFICIENCIA_CH COMMA10.7
  ERRO_PADRAO_CH COMMA10.7
  PROFICIENCIA_CH_SAEB COMMA12.7
  ERRO_PADRAO_CH_SAEB COMMA10.7
  PESO_ALUNO_CN COMMA12.7
  PROFICIENCIA_CN COMMA10.7
  ERRO_PADRAO_CN COMMA10.7
  PROFICIENCIA_CN_SAEB COMMA12.7
  ERRO_PADRAO_CN_SAEB COMMA10.7
  IN_PREENCHIMENTO_QUESTIONARIO F1.0
  IN_INSE F1.0
  INSE_ALUNO COMMA10.4
  NU_TIPO_NIVEL_INSE F1.0
  PESO_ALUNO_INSE COMMA12.7
  TX_RESP_Q01 A1
  TX_RESP_Q02 A1
  TX_RESP_Q03 A1
  TX_RESP_Q04 A1
  TX_RESP_Q05a A1
  TX_RESP_Q05b A1
  TX_RESP_Q05c A1
  TX_RESP_Q06 A1
  TX_RESP_Q07a A1
  TX_RESP_Q07b A1
  TX_RESP_Q07c A1
  TX_RESP_Q07d A1
  TX_RESP_Q07e A1
  TX_RESP_Q08 A1
  TX_RESP_Q09 A1
  TX_RESP_Q10a A1
  TX_RESP_Q10b A1
  TX_RESP_Q10c A1
  TX_RESP_Q10d A1
  TX_RESP_Q10e A1
  TX_RESP_Q10f A1
  TX_RESP_Q11a A1
  TX_RESP_Q11b A1
  TX_RESP_Q11c A1
  TX_RESP_Q12a A1
  TX_RESP_Q12b A1
  TX_RESP_Q12c A1
  TX_RESP_Q12d A1
  TX_RESP_Q12e A1
  TX_RESP_Q12f A1
  TX_RESP_Q12g A1
  TX_RESP_Q13a A1
  TX_RESP_Q13b A1
  TX_RESP_Q13c A1
  TX_RESP_Q13d A1
  TX_RESP_Q13e A1
  TX_RESP_Q13f A1
  TX_RESP_Q13g A1
  TX_RESP_Q13h A1
  TX_RESP_Q13i A1
  TX_RESP_Q14 A1
  TX_RESP_Q15a A1
  TX_RESP_Q15b A1
  TX_RESP_Q16 A1
  TX_RESP_Q17 A1
  TX_RESP_Q18 A1
  TX_RESP_Q19 A1
  TX_RESP_Q20 A1
  TX_RESP_Q21a A1
  TX_RESP_Q21b A1
  TX_RESP_Q21c A1
  TX_RESP_Q21d A1
  TX_RESP_Q21e A1
  TX_RESP_Q22a A1
  TX_RESP_Q22b A1
  TX_RESP_Q22c A1
  TX_RESP_Q22d A1
  TX_RESP_Q22e A1
  TX_RESP_Q22f A1
  TX_RESP_Q22g A1
  TX_RESP_Q22h A1
  TX_RESP_Q23a A1
  TX_RESP_Q23b A1
  TX_RESP_Q23c A1
  TX_RESP_Q23d A1
  TX_RESP_Q23e A1
  TX_RESP_Q23f A1
  TX_RESP_Q23g A1
  TX_RESP_Q23h A1
  TX_RESP_Q23i A1.
 
CACHE.
EXECUTE.
DATASET NAME TS_ALUNO_5EF WINDOW=FRONT.

VARIABLE LABELS 
  ID_SAEB 'Ano de aplicação do Saeb'
  ID_REGIAO 'Código da Região'
  ID_UF 'Código da Unidade da Federação'
  ID_MUNICIPIO 'Máscaras dos Códigos de Municípios (são códigos fictícios)'
  ID_AREA 'Área'
  ID_ESCOLA 'Máscaras dos Códigos de Escola (são códigos fictícios)'
  IN_PUBLICA 'Indica se a escola é pública ou não'
  ID_LOCALIZACAO 'Localização'
  ID_TURMA 'Código da turma no Saeb'
  ID_SERIE 'Ano Escolar'
  ID_ALUNO 'Código do aluno no Saeb'
  IN_SITUACAO_CENSO 'Indicador de consistência entre os dados da aplicação do Saeb 2023 com o Censo da Educação Básica 2023 finalizado'
  IN_PREENCHIMENTO_LP 'Indicador de preenchimento da prova de Língua Portuguesa'
  IN_PREENCHIMENTO_MT 'Indicador de preenchimento da prova de Matemática'
  IN_PREENCHIMENTO_CH 'Indicador de preenchimento da prova de Ciências Humanas'
  IN_PREENCHIMENTO_CN 'Indicador de preenchimento da prova de Ciências da Natureza'
  IN_PRESENCA_LP 'Indicador de presença na prova de Língua Portuguesa'
  IN_PRESENCA_MT 'Indicador de presença na prova de Matemática'
  IN_PRESENCA_CH 'Indicador de presença na prova de Ciências Humanas'
  IN_PRESENCA_CN 'Indicador de presença na prova de Ciências da Natureza'
  ID_CADERNO_LP 'Número do caderno de prova de Língua Portuguesa'
  ID_BLOCO_1_LP 'Identificador do Bloco 1 de Língua Portuguesa'
  ID_BLOCO_2_LP 'Identificador do Bloco 2 de Língua Portuguesa'
  ID_CADERNO_MT 'Número do caderno de prova de Matemática'
  ID_BLOCO_1_MT 'Identificador do Bloco 1 de Matemática'
  ID_BLOCO_2_MT 'Identificador do Bloco 2 de Matemática'
  ID_CADERNO_CH 'Número do caderno de prova de Ciências Humanas'
  ID_BLOCO_1_CH 'Identificador do Bloco 1 de Ciências Humanas'
  ID_BLOCO_2_CH 'Identificador do Bloco 2 de Ciências Humanas'
  NU_BLOCO_1_ABERTA_CH 'Identificador do Bloco 1 de resposta construída em Ciências Humanas'
  NU_BLOCO_2_ABERTA_CH 'Identificador do Bloco 2 de resposta construída em Ciências Humanas'
  ID_CADERNO_CN 'Número do caderno de prova de Ciências da Natureza'
  ID_BLOCO_1_CN 'Identificador do Bloco 1 de Ciências da Natureza'
  ID_BLOCO_2_CN 'Identificador do Bloco 2 de Ciências da Natureza'
  ID_BLOCO_3_CN 'Identificador do Bloco 3 de Ciências da Natureza'
  NU_BLOCO_1_ABERTA_CN 'Identificador do Bloco 1 de resposta construída em Ciências da Natureza'
  NU_BLOCO_2_ABERTA_CN 'Identificador do Bloco 2 de resposta construída em Ciências da Natureza'
  TX_RESP_BLOCO1_LP 'Resposta do aluno ao Bloco 1 de Língua Portuguesa'
  TX_RESP_BLOCO2_LP 'Resposta do aluno ao Bloco 2 de Língua Portuguesa'
  TX_RESP_BLOCO1_MT 'Resposta do aluno ao Bloco 1 de Matemática'
  TX_RESP_BLOCO2_MT 'Resposta do aluno ao Bloco 2 de Matemática'
  TX_RESP_BLOCO_1_CH 'Resposta do aluno ao Bloco 1 da prova de Ciências Humanas'
  TX_RESP_BLOCO_2_CH 'Resposta do aluno ao Bloco 2 da prova de Ciências Humanas'
  CO_CONCEITO_Q1_CH 'Conceito obtido na questão 1 de resposta construída em Ciências Humanas'
  CO_CONCEITO_Q2_CH 'Conceito obtido na questão 2 de resposta construída em Ciências Humanas'
  TX_RESP_BLOCO1_CN 'Resposta do aluno ao Bloco 1 da prova de Ciências da Natureza'
  TX_RESP_BLOCO2_CN 'Resposta do aluno ao Bloco 2 da prova de Ciências da Natureza'
  TX_RESP_BLOCO3_CN 'Resposta do aluno ao Bloco 3 da prova de Ciências da Natureza'
  CO_CONCEITO_Q1_CN 'Conceito obtido na questão 1 de resposta construída em Ciências da Natureza'
  CO_CONCEITO_Q2_CN 'Conceito obtido na questão 2 de resposta construída em Ciências da Natureza'
  IN_PROFICIENCIA_LP 'Indicador para cálculo da proficiência (no mínimo três itens respondidos no caderno de provas de Língua Portuguesa e Matemática)'
  IN_PROFICIENCIA_MT 'Indicador para cálculo da proficiência (no mínimo três itens respondidos no caderno de provas de Língua Portuguesa e Matemática)'
  IN_PROFICIENCIA_CH 'Indicador para cálculo da proficiência (no mínimo três itens respondidos no caderno de prova de Ciências Humanas)'
  IN_PROFICIENCIA_CN 'Indicador para cálculo da proficiência (no mínimo três itens respondidos no caderno de prova de Ciências da Natureza)'
  IN_AMOSTRA 'Indicador de participação da amostra'
  ESTRATO 'Descrição dos estratos'
  ESTRATO_CIENCIAS 'Descrição dos estratos para amostra de Ciências Humanas e Ciências da Natureza'
  PESO_ALUNO_LP 'Peso do aluno em Língua Portuguesa'
  PROFICIENCIA_LP 'Proficiência do aluno em Língua Portuguesa calculada na escala única do SAEB, com média = 0 e desvio = 1 na população de referência'
  ERRO_PADRAO_LP 'Erro padrão da proficiência em Língua Portuguesa'
  PROFICIENCIA_LP_SAEB 'Proficiência em Língua Portuguesa transformada na escala única do SAEB, com média = 250, desvio = 50 (do SAEB/97)'
  ERRO_PADRAO_LP_SAEB 'Erro padrão da proficiência transformada em Língua Portuguesa'
  PESO_ALUNO_MT 'Peso do aluno em Matemática'
  PROFICIENCIA_MT 'Proficiência do aluno em Matemática calculada na escala única do SAEB, com média = 0 e desvio = 1 na população de referência'
  ERRO_PADRAO_MT 'Erro padrão da proficiência em Matemática'
  PROFICIENCIA_MT_SAEB 'Proficiência do aluno em Matemática transformada na escala única do SAEB, com média = 250, desvio = 50 (do SAEB/97)'
  ERRO_PADRAO_MT_SAEB 'Erro padrão da proficiência transformada em Matemática'
  PESO_ALUNO_CH 'Peso do aluno em Ciências Humanas'
  PROFICIENCIA_CH 'Proficiência do aluno em Ciências Humanas calculada na escala única do SAEB, com média = 0 e desvio = 1 na população de referência'
  ERRO_PADRAO_CH 'Erro padrão da proficiência em Ciências Humanas'
  PROFICIENCIA_CH_SAEB 'Proficiência do aluno em Ciências Humanas transformada na escala única do SAEB, com média = 250, desvio = 50 (do SAEB/23)'
  ERRO_PADRAO_CH_SAEB 'Erro padrão da proficiência transformada em Ciências Humanas'
  PESO_ALUNO_CN 'Peso do aluno em Ciências da Natureza'
  PROFICIENCIA_CN 'Proficiência do aluno em Ciências da Natureza calculada na escala única do SAEB, com média = 0 e desvio = 1 na população de referência'
  ERRO_PADRAO_CN 'Erro padrão da proficiência em Ciências da Natureza'
  PROFICIENCIA_CN_SAEB 'Proficiência do aluno em Ciências da Natureza transformada na escala única do SAEB, com média = 250, desvio = 50 (do SAEB/23)'
  ERRO_PADRAO_CN_SAEB 'Erro padrão da proficiência transformada em Ciências da Natureza'
  IN_PREENCHIMENTO_QUESTIONARIO 'Indicador de preenchimento do questionário'
  IN_INSE 'Indicador para cálculo do INSE (São considerados válidos os estudantes que responderam pelo menos 8 itens, dentre os 17 utilizados para o cálculo do indicador)'
  INSE_ALUNO 'Resultado individual do INSE para o aluno'
  NU_TIPO_NIVEL_INSE 'Classificação do Indicador de Nível Socioeconômico em 8 Grupos (para melhor entendimento dos grupos, consultar a nota técnica disponível no portal do Inep)'
  PESO_ALUNO_INSE 'Peso do Aluno para cálculo do INSE 2023'
  TX_RESP_Q01 'Qual é o seu sexo?'
  TX_RESP_Q02 'Qual é a sua idade?'
  TX_RESP_Q03 'Qual língua que seus pais falam com mais frequência em casa?'
  TX_RESP_Q04 'Qual é a sua cor ou raça?'
  TX_RESP_Q05a 'Você possui deficiência, transtorno do espectro autista ou superdotação? - Deficiência.'
  TX_RESP_Q05b 'Você possui deficiência, transtorno do espectro autista ou superdotação? - Transtorno do espectro autista.'
  TX_RESP_Q05c 'Você possui deficiência, transtorno do espectro autista ou superdotação? - Altas habilidades ou superdotação.'
  TX_RESP_Q06 'Quantas pessoas moram na sua casa, contando com você?'
  TX_RESP_Q07a 'Normalmente, quem mora na sua casa? - Mãe(s) ou madrasta(s).'
  TX_RESP_Q07b 'Normalmente, quem mora na sua casa? - Pai(s) ou padrasto(s).'
  TX_RESP_Q07c 'Normalmente, quem mora na sua casa? - Avó(s).'
  TX_RESP_Q07d 'Normalmente, quem mora na sua casa? - Avô(s).'
  TX_RESP_Q07e 'Normalmente, quem mora na sua casa? - Outros familiares, irmãos(ãs), tios(as), primos(as) etc.'
  TX_RESP_Q08 'Qual é a maior escolaridade da sua mãe (ou madrasta ou mulher responsável por você)?'
  TX_RESP_Q09 'Qual é a maior escolaridade de seu pai (ou padrasto homem responsável por você)?'
  TX_RESP_Q10a 'Com que frequência seus pais ou responsáveis costumam: - Ler em casa.'
  TX_RESP_Q10b 'Com que frequência seus pais ou responsáveis costumam: - Conversar com você sobre o que acontece na escola.'
  TX_RESP_Q10c 'Com que frequência seus pais ou responsáveis costumam: - Incentivar você a estudar.'
  TX_RESP_Q10d 'Com que frequência seus pais ou responsáveis costumam: - Incentivar você a fazer a tarefa de casa.'
  TX_RESP_Q10e 'Com que frequência seus pais ou responsáveis costumam: - Incentivar você a comparecer às aulas.'
  TX_RESP_Q10f 'Com que frequência seus pais ou responsáveis costumam: - Ir às reuniões de pais na escola.'
  TX_RESP_Q11a 'Na rua em que você mora tem: - Asfalto ou calçamento.'
  TX_RESP_Q11b 'Na rua em que você mora tem: - Água tratada.'
  TX_RESP_Q11c 'Na rua em que você mora tem: - Iluminação.'
  TX_RESP_Q12a 'Dos itens relacionados abaixo, quantos existem na sua casa? - Geladeira.'
  TX_RESP_Q12b 'Dos itens relacionados abaixo, quantos existem na sua casa? - Computador (ou notebook).'
  TX_RESP_Q12c 'Dos itens relacionados abaixo, quantos existem na sua casa? - Quartos para dormir.'
  TX_RESP_Q12d 'Dos itens relacionados abaixo, quantos existem na sua casa? - Televisão.'
  TX_RESP_Q12e 'Dos itens relacionados abaixo, quantos existem na sua casa? - Banheiro.'
  TX_RESP_Q12f 'Dos itens relacionados abaixo, quantos existem na sua casa? - Carro.'
  TX_RESP_Q12g 'Dos itens relacionados abaixo, quantos existem na sua casa? - Celular com internet (smartphone).'
  TX_RESP_Q13a 'Na sua casa tem: - Tv por internet (Netflix, GloboPlay, etc.).'
  TX_RESP_Q13b 'Na sua casa tem: - Rede Wi-Fi.'
  TX_RESP_Q13c 'Na sua casa tem: - Um quarto só seu.'
  TX_RESP_Q13d 'Na sua casa tem: - Mesa para estudar.'
  TX_RESP_Q13e 'Na sua casa tem: - Forno de microondas.'
  TX_RESP_Q13f 'Na sua casa tem: - Aspirador de pó.'
  TX_RESP_Q13g 'Na sua casa tem: - Máquina de lavar roupa.'
  TX_RESP_Q13h 'Na sua casa tem: - Freezer (independente ou segunda porta da geladeira).'
  TX_RESP_Q13i 'Na sua casa tem: - Garagem.'
  TX_RESP_Q14 'Quanto tempo você demora para chegar à sua escola?'
  TX_RESP_Q15a 'Você utiliza para ir à escola: - Transporte gratuito escolar.'
  TX_RESP_Q15b 'Você utiliza para ir à escola: - Passe escolar.'
  TX_RESP_Q16 'Considerando a maior distância percorrida, normalmente de que forma você chega à sua escola?'
  TX_RESP_Q17 'Com que idade você entrou na escola?'
  TX_RESP_Q18 'A partir do primeiro ano do ensino fundamental, em que tipo de escola você estudou?'
  TX_RESP_Q19 'Você já foi reprovado(a)?'
  TX_RESP_Q20 'Alguma vez você abandonou a escola deixando de frequentá-la até o final do ano escolar?'
  TX_RESP_Q21a 'Fora da escola em dias de aula, quanto tempo você usa para: - Estudar (lição de casa, trabalhos escolares, etc.).'
  TX_RESP_Q21b 'Fora da escola em dias de aula, quanto tempo você usa para: - Fazer cursos ou atividades extracurriculares (idioma, artes, informática etc.).'
  TX_RESP_Q21c 'Fora da escola em dias de aula, quanto tempo você usa para: - Trabalhar em casa (lavar louça, limpar quintal, cuidar dos irmãos, etc.).'
  TX_RESP_Q21d 'Fora da escola em dias de aula, quanto tempo você usa para: - Trabalhar fora de casa (recebendo ou não um salário).'
  TX_RESP_Q21e 'Fora da escola em dias de aula, quanto tempo você usa para: - Lazer (TV, brincar, internet, música etc.).'
  TX_RESP_Q22a 'Para os próximos itens, indique qual é a proporção de professores(as) da sua turma que abordam os seguintes temas em sala de aula: - No início do ano, eles(as) informaram sobre o que seria ensinado e aprendido?'
  TX_RESP_Q22b 'Para os próximos itens, indique qual é a proporção de professores(as) da sua turma que abordam os seguintes temas em sala de aula: - Antes de iniciar um novo conteúdo, eles(as) perguntam o que vocês sabem sobre o conteúdo?'
  TX_RESP_Q22c 'Para os próximos itens, indique qual é a proporção de professores(as) da sua turma que abordam os seguintes temas em sala de aula: - Eles(as) trazem temas do cotidiano para serem debatidos em sala de aula?'
  TX_RESP_Q22d 'Para os próximos itens, indique qual é a proporção de professores(as) da sua turma que abordam os seguintes temas em sala de aula: - Eles(as) abordam temas sobre desigualdade racial?'
  TX_RESP_Q22e 'Para os próximos itens, indique qual é a proporção de professores(as) da sua turma que abordam os seguintes temas em sala de aula: - Eles(as) abordam temas sobre desigualdade de gênero?'
  TX_RESP_Q22f 'Para os próximos itens, indique qual é a proporção de professores(as) da sua turma que abordam os seguintes temas em sala de aula: - Eles(as) abordam temas como bullying e outras formas de violência?'
  TX_RESP_Q22g 'Para os próximos itens, indique qual é a proporção de professores(as) da sua turma que abordam os seguintes temas em sala de aula: - Eles(as) desenvolvem trabalhos em grupos?'
  TX_RESP_Q22h 'Para os próximos itens, indique qual é a proporção de professores(as) da sua turma que abordam os seguintes temas em sala de aula: - Eles(as) abordam questões relacionadas ao futuro profissional dos(as) estudantes?'
  TX_RESP_Q23a 'Sobre sua escola, indique o quanto você concorda ou discorda das afirmações abaixo: - Eu me interesso sobre o que foi ensinado na escola neste ano.'
  TX_RESP_Q23b 'Sobre sua escola, indique o quanto você concorda ou discorda das afirmações abaixo: - Eu me sinto motivado(a), no dia a dia, a usar o que foi ensinado.'
  TX_RESP_Q23c 'Sobre sua escola, indique o quanto você concorda ou discorda das afirmações abaixo: - Há espaço para diferentes opiniões na minha sala de aula.'
  TX_RESP_Q23d 'Sobre sua escola, indique o quanto você concorda ou discorda das afirmações abaixo: - Eu me sinto seguro(a) quando estou na escola.'
  TX_RESP_Q23e 'Sobre sua escola, indique o quanto você concorda ou discorda das afirmações abaixo: - Eu me sinto à vontade para discordar dos(as) meus(minhas) professores(as).'
  TX_RESP_Q23f 'Sobre sua escola, indique o quanto você concorda ou discorda das afirmações abaixo: - Eu consigo argumentar sobre conteúdos difíceis.'
  TX_RESP_Q23g 'Sobre sua escola, indique o quanto você concorda ou discorda das afirmações abaixo: - Os resultados das avaliações representam o quanto eu aprendi.'
  TX_RESP_Q23h 'Sobre sua escola, indique o quanto você concorda ou discorda das afirmações abaixo: - Meus (Minhas) professores(as) acreditam que eu sou capaz de aprender.'
  TX_RESP_Q23i 'Sobre sua escola, indique o quanto você concorda ou discorda das afirmações abaixo: - Meus (Minhas) professores(as) me motivam a continuar meus estudos.'.

VALUE LABELS
    ID_REGIAO
        1  'Norte'
        2  'Nordeste'
        3  'Sudeste'
        4  'Sul'
        5  'Centro-Oeste'
/ID_UF
        11  'RO'
        12  'AC'
        13  'AM'
        14  'RR'
        15  'PA'
        16  'AP'
        17  'TO'
        21  'MA'
        22  'PI'
        23  'CE'
        24  'RN'
        25  'PB'
        26  'PE'
        27  'AL'
        28  'SE'
        29  'BA'
        31  'MG'
        32  'ES'
        33  'RJ'
        35  'SP'
        41  'PR'
        42  'SC'
        43  'RS'
        50  'MS'
        51  'MT'
        52  'GO'
        53  'DF'
    /ID_AREA
        1  'Capital'
        2  'Interior'
    /IN_PUBLICA
        0  'Privada'
        1  'Pública'
    /ID_LOCALIZACAO
        1  'Urbana'
        2  'Rural'
    /ID_SERIE
        5  '5º Ano do Ensino Fundamental'
    /IN_SITUACAO_CENSO
        0  'Não consistente'
        1  'Consistente'
    /IN_PREENCHIMENTO_LP       
        0  'Prova não preenchida'
        1  'Prova preenchida'
    /IN_PREENCHIMENTO_MT    
        0  'Prova não preenchida'
        1  'Prova preenchida'
    /IN_PREENCHIMENTO_CH    
        0  'Prova não preenchida'
        1  'Prova preenchida'
    /IN_PREENCHIMENTO_CN 
        0  'Prova não preenchida'
        1  'Prova preenchida'
/IN_PRESENCA_LP
        0  'Ausente'
        1  'Presente'
    /IN_PRESENCA_MT
        0  'Ausente'
        1  'Presente'
    /IN_PRESENCA_CH
        0  'Ausente'
        1  'Presente'
    /IN_PRESENCA_CN
        0  'Ausente'
        1  'Presente'
    /CO_CONCEITO_Q1_CH
        '0'  'Nenhum crédito'
        '1'  'Crédito parcial'
        '11'  'Crédito parcial'
        '12'  'Crédito parcial'
        '2'  'Crédito total'
        '7'  'Erros de impressão ou digitalização'
        '.' 'Branco'
    /CO_CONCEITO_Q2_CH
        '0'  'Nenhum crédito'
        '1'  'Crédito parcial'
        '11'  'Crédito parcial'
        '12'  'Crédito parcial'
        '2'  'Crédito total'
        '7'  'Erros de impressão ou digitalização'
        '.'  'Branco'
    /CO_CONCEITO_Q1_CN
        '0'  'Nenhum crédito'
        '1'  'Crédito parcial'
        '11'  'Crédito parcial'
        '12'  'Crédito parcial'
        '2'  'Crédito total'
        '7'  'Erros de impressão ou digitalização'
        '.'  'Branco'
    /CO_CONCEITO_Q2_CN
        '0'  'Nenhum crédito'
        '1'  'Crédito parcial'
        '11'  'Crédito parcial'
        '12'  'Crédito parcial'
        '2'  'Crédito total'
        '7'  'Erros de impressão ou digitalização'
        '.'  'Branco'
/IN_PROFICIENCIA_LP
        0  'Não'
        1  'Sim'
    /IN_PROFICIENCIA_MT
        0  'Não'
        1  'Sim'
    /IN_PROFICIENCIA_CH
        0  'Não'
        1  'Sim'
    /IN_PROFICIENCIA_CN
        0  'Não'
        1  'Sim'
    /IN_AMOSTRA
        0  'Não'
        1  'Sim'
    /IN_PREENCHIMENTO_QUESTIONARIO
        0  'Não preenchido'
        1  'Preenchido parcial ou totalmente'
    /IN_INSE
        0  'Não'
        1  'Sim'
    /NU_TIPO_NIVEL_INSE
        1  'Nível I'
        2  'Nível II'
        3  'Nível III'
        4  'Nível IV'
        5  'Nível V'
        6  'Nível VI'
        7  'Nível VII'
        8  'Nível VIII'
/TX_RESP_Q01
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Masculino'
        'B'  'Feminino'
        'C'  'Não quero declarar'
    /TX_RESP_Q02
        '*'  'Nulo'
        '.'  'Branco'
        'A'  '9 anos ou menos'
        'B'  '10 anos'
        'C'  '11 anos'
        'D'  '12 anos'
        'E'  '13 anos'
        'F'  '14 anos ou mais'
    /TX_RESP_Q03
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Português'
        'B'  'Espanhol'
        'C'  'Língua de Sinais (Libras, Língua de Sinais Argentina, Língua de Sinais Boliviana etc.)'
        'D'  'Outra língua'
    /TX_RESP_Q04
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Branca'
        'B'  'Preta'
        'C'  'Parda'
        'D'  'Amarela'
        'E'  'Indígena'
        'F'  'Não quero declarar'
/TX_RESP_Q05a
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não'
        'B'  'Sim'
    /TX_RESP_Q05b
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não'
        'B'  'Sim'
    /TX_RESP_Q05c
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não'
        'B'  'Sim'
    /TX_RESP_Q06
        '*'  'Nulo'
        '.'  'Branco'
        'A'  '2 pessoas'
        'B'  '3 pessoas'
        'C'  '4 pessoas'
        'D'  '5 pessoas'
        'E'  '6 pessoas ou mais'
    /TX_RESP_Q07a
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não'
        'B'  'Sim'
    /TX_RESP_Q07b
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não'
        'B'  'Sim'
    /TX_RESP_Q07c
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não'
        'B'  'Sim'
    /TX_RESP_Q07d
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não'
        'B'  'Sim'
    /TX_RESP_Q07e
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não'
        'B'  'Sim'
    /TX_RESP_Q08
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não completou o 5º ano do Ensino Fundamental'
        'B'  'Ensino Fundamental, até o 5º ano'
        'C'  'Ensino Fundamental completo'
        'D'  'Ensino Médio completo'
        'E'  'Ensino Superior completo (faculdade ou graduação)'
        'F'  'Não sei'
    /TX_RESP_Q09
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não completou o 5º ano do Ensino Fundamental'
        'B'  'Ensino Fundamental, até o 5º ano'
        'C'  'Ensino Fundamental completo'
        'D'  'Ensino Médio completo'
        'E'  'Ensino Superior completo (faculdade ou graduação)'
        'F'  'Não sei.'
/TX_RESP_Q10a
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Nunca ou quase nunca'
        'B'  'De vez em quando'
        'C'  'Sempre ou quase sempre'
    /TX_RESP_Q10b
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Nunca ou quase nunca'
        'B'  'De vez em quando'
        'C'  'Sempre ou quase sempre'
    /TX_RESP_Q10c
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Nunca ou quase nunca'
        'B'  'De vez em quando'
        'C'  'Sempre ou quase sempre'
    /TX_RESP_Q10d
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Nunca ou quase nunca'
        'B'  'De vez em quando'
        'C'  'Sempre ou quase sempre'
    /TX_RESP_Q10e
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Nunca ou quase nunca.'
        'B'  'De vez em quando'
        'C'  'Sempre ou quase sempre'
    /TX_RESP_Q10f
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Nunca ou quase nunca.'
        'B'  'De vez em quando'
        'C'  'Sempre ou quase sempre'
    /TX_RESP_Q11a
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não'
        'B'  'Sim'
    /TX_RESP_Q11b
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não'
        'B'  'Sim'
    /TX_RESP_Q11c
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não'
        'B'  'Sim'
    /TX_RESP_Q12a
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Nenhum'
        'B'  '1'
        'C'  '2'
        'D'  '3 ou mais'
    /TX_RESP_Q12b
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Nenhum'
        'B'  '1'
        'C'  '2'
        'D'  '3 ou mais'
    /TX_RESP_Q12c
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Nenhum'
        'B'  '1'
        'C'  '2'
        'D'  '3 ou mais'
    /TX_RESP_Q12d
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Nenhum'
        'B'  '1'
        'C'  '2'
        'D'  '3 ou mais'
    /TX_RESP_Q12e
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Nenhum'
        'B'  '1'
        'C'  '2'
        'D'  '3 ou mais'
    /TX_RESP_Q12f
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Nenhum'
        'B'  '1'
        'C'  '2'
        'D'  '3 ou mais'
    /TX_RESP_Q12g
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Nenhum'
        'B'  '1'
        'C'  '2'
        'D'  '3 ou mais'
    /TX_RESP_Q13a
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não'
        'B'  'Sim'
    /TX_RESP_Q13b
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não'
        'B'  'Sim'
    /TX_RESP_Q13c
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não'
        'B'  'Sim'
    /TX_RESP_Q13d
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não'
        'B'  'Sim'
    /TX_RESP_Q13e
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não'
        'B'  'Sim'
    /TX_RESP_Q13f
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não'
        'B'  'Sim'
    /TX_RESP_Q13g
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não'
        'B'  'Sim'
    /TX_RESP_Q13h
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não'
        'B'  'Sim'
    /TX_RESP_Q13i
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não'
        'B'  'Sim'
    /TX_RESP_Q14
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Menos de 30 minutos'
        'B'  'Entre 30 minutos e uma hora'
        'C'  'Mais de uma hora'
    /TX_RESP_Q15a
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não'
        'B'  'Sim'
    /TX_RESP_Q15b
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não'
        'B'  'Sim'
    /TX_RESP_Q16
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'À pé'
        'B'  'De bicicleta'
        'C'  'De Van (ou Kombi)'
        'D'  'De ônibus'
        'E'  'De metrô (ou trem urbano)'
        'F'  'De carro'
        'G'  'De barco'
        'H'  'De motocicleta'
        'I'  'Outro meio de transporte'
    /TX_RESP_Q17
        '*'  'Nulo'
        '.'  'Branco'
        'A'  '3 anos ou menos'
        'B'  '4 ou 5 anos'
        'C'  '6 ou 7 anos'
        'D'  '8 anos ou mais'
    /TX_RESP_Q18
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Somente em escola pública'
        'B'  'Somente em escola particular'
        'C'  'Em escola pública e em escola particular'
    /TX_RESP_Q19
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não'
        'B'  'Sim, uma vez'
        'C'  'Sim, duas vezes ou mais'
    /TX_RESP_Q20
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Nunca'
        'B'  'Sim, uma vez'
        'C'  'Sim, duas vezes ou mais'
    /TX_RESP_Q21a
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não uso meu tempo para isso.'
        'B'  'Menos de 1 hora.'
        'C'  'Entre 1 e 2 horas.'
        'D'  'Mais de 2 horas.'
    /TX_RESP_Q21b
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não uso meu tempo para isso'
        'B'  'Menos de 1 hora'
        'C'  'Entre 1 e 2 horas'
        'D'  'Mais de 2 horas'
    /TX_RESP_Q21c
        '*' 'Nulo'
        '.'  'Branco'
        'A'  'Não uso meu tempo para isso'
        'B'  'Menos de 1 hora'
        'C'  'Entre 1 e 2 horas'
        'D'  'Mais de 2 horas'
    /TX_RESP_Q21d
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não uso meu tempo para isso'
        'B'  'Menos de 1 hora'
        'C'  'Entre 1 e 2 horas'
        'D'  'Mais de 2 horas'
    /TX_RESP_Q21e
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Não uso meu tempo para isso'
        'B'  'Menos de 1 hora'
        'C'  'Entre 1 e 2 horas'
        'D'  'Mais de 2 horas'
    /TX_RESP_Q22a
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Todos eles'
        'B'  'A maior parte deles'
        'C'  'Poucos deles'
        'D'  'Nenhum deles'
    /TX_RESP_Q22b
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Todos eles'
        'B'  'A maior parte deles'
        'C'  'Poucos deles'
        'D'  'Nenhum deles'
    /TX_RESP_Q22c
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Todos eles'
        'B'  'A maior parte deles'
        'C'  'Poucos deles'
        'D'  'Nenhum deles'
    /TX_RESP_Q22d
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Todos eles'
        'B'  'A maior parte deles'
        'C'  'Poucos deles'
        'D'  'Nenhum deles'
    /TX_RESP_Q22e
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Todos eles'
        'B'  'A maior parte deles'
        'C'  'Poucos deles'
        'D'  'Nenhum deles'
    /TX_RESP_Q22f
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Todos eles'
        'B'  'A maior parte deles'
        'C'  'Poucos deles'
        'D'  'Nenhum deles'
    /TX_RESP_Q22g
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Todos eles'
        'B'  'A maior parte deles'
        'C'  'Poucos deles'
        'D'  'Nenhum deles'
    /TX_RESP_Q22h
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Todos eles'
        'B'  'A maior parte deles'
        'C'  'Poucos deles'
        'D'  'Nenhum deles'
    /TX_RESP_Q23a
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Concordo totalmente'
        'B'  'Concordo'
        'C'  'Discordo'
        'D'  'Discordo totalmente'
    /TX_RESP_Q23b
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Concordo totalmente'
        'B'  'Concordo'
        'C'  'Discordo'
        'D'  'Discordo totalmente'
    /TX_RESP_Q23c
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Concordo totalmente'
        'B'  'Concordo'
        'C'  'Discordo'
        'D'  'Discordo totalmente'
    /TX_RESP_Q23d
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Concordo totalmente'
        'B'  'Concordo'
        'C'  'Discordo'
        'D'  'Discordo totalmente'
    /TX_RESP_Q23e
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Concordo totalmente'
        'B'  'Concordo'
        'C'  'Discordo'
        'D'  'Discordo totalmente'
    /TX_RESP_Q23f
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Concordo totalmente'
        'B'  'Concordo'
        'C'  'Discordo'
        'D'  'Discordo totalmente'
    /TX_RESP_Q23g
        '*'  'Nulo'
        '.'  'Branco'
       'A'  'Concordo totalmente'
       'B'  'Concordo'
       'C'  'Discordo'
       'D'  'Discordo totalmente'
    /TX_RESP_Q23h
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Concordo totalmente'
        'B'  'Concordo'
        'C'  'Discordo'
        'D'  'Discordo totalmente'
    /TX_RESP_Q23i
        '*'  'Nulo'
        '.'  'Branco'
        'A'  'Concordo totalmente'
        'B'  'Concordo'
        'C'  'Discordo'
        'D'  'Discordo totalmente'.

































