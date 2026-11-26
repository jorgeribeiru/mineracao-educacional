/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação-Geral de Medidas da Educação Básica (CGMEB)	                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_ALUNO_2EF                                                                   */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DOS RESULTADOS DOS ALUNOS DO */
/*                     2º ANO DO ENSINO FUNDAMENTAL DO SAEB 2023                        */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* TS_ALUNO_2EF.CSV no diretório C:\ do computador.	                                     */
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
/*******************************************************************************************************/

GET DATA
  /TYPE=TXT
  /FILE="C:\TS_ALUNO_2EF.csv"
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
  IN_PRESENCA_LP F1.0
  IN_PRESENCA_MT F1.0
  ID_CADERNO_LP F2.0
  ID_BLOCO_1_LP F1.0
  ID_BLOCO_2_LP F1.0
  NU_BLOCO_1_ABERTA_LP F1.0
  NU_BLOCO_2_ABERTA_LP F1.0
  ID_CADERNO_MT F2.0
  ID_BLOCO_1_MT F1.0
  ID_BLOCO_2_MT F1.0
  NU_BLOCO_1_ABERTA_MT F1.0
  NU_BLOCO_2_ABERTA_MT F1.0
  TX_RESP_BLOCO1_LP A8
  TX_RESP_BLOCO2_LP A8
  CO_CONCEITO_Q1_LP A2
  CO_CONCEITO_Q2_LP A2
  CO_RESPOSTA_TEXTO A2
  CO_CONCEITO_SEQUENCIA A1
  CO_CONCEITO_COESAO A1
  CO_CONCEITO_PONTUACAO A1
  CO_CONCEITO_SEGMENTACAO A1
  CO_TEXTO_GRAFIA A1
  TX_RESP_BLOCO1_MT A9
  TX_RESP_BLOCO2_MT A9
  CO_CONCEITO_Q1_MT A2
  CO_CONCEITO_Q2_MT A2
  IN_PROFICIENCIA_LP F1.0
  IN_PROFICIENCIA_MT F1.0
  IN_AMOSTRA F1.0
  ESTRATO F5.0
  PESO_ALUNO_LP COMMA12.7
  IN_ALFABETIZADO F1.0
  PROFICIENCIA_LP COMMA10.7
  ERRO_PADRAO_LP COMMA10.7
  PROFICIENCIA_LP_SAEB COMMA12.7
  ERRO_PADRAO_LP_SAEB COMMA10.7
  PESO_ALUNO_MT COMMA12.7
  PROFICIENCIA_MT COMMA10.7
  ERRO_PADRAO_MT COMMA10.7
  PROFICIENCIA_MT_SAEB COMMA12.7
  ERRO_PADRAO_MT_SAEB COMMA10.7.

CACHE.
EXECUTE.
DATASET NAME TS_ALUNO_2EF WINDOW=FRONT.

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
  IN_PRESENCA_LP 'Indicador de presença na prova de Língua Portuguesa'
  IN_PRESENCA_MT 'Indicador de presença na prova de Matemática'
  ID_CADERNO_LP 'Número do caderno de prova de Língua Portuguesa'
  ID_BLOCO_1_LP 'Identificador do Bloco 1 de Língua Portuguesa'
  ID_BLOCO_2_LP 'Identificador do Bloco 2 de Língua Portuguesa'
  NU_BLOCO_1_ABERTA_LP 'Identificador do Bloco 1 de resposta construída em Língua Portuguesa'
  NU_BLOCO_2_ABERTA_LP 'Identificador do Bloco 2 de resposta construída em Língua Portuguesa'
  ID_CADERNO_MT 'Número de caderno de prova de Matemática'
  ID_BLOCO_1_MT 'Identificador do Bloco 1 de Matemática'
  ID_BLOCO_2_MT 'Identificador do Bloco 2 de Matemática'
  NU_BLOCO_1_ABERTA_MT 'Identificador do Bloco 1 de resposta construída em Matemática'
  NU_BLOCO_2_ABERTA_MT 'Identificador do Bloco 2 de resposta construída em Matemática'
  TX_RESP_BLOCO1_LP 'Resposta do aluno ao Bloco 1 da Prova de Língua Portuguesa'
  TX_RESP_BLOCO2_LP 'Resposta do aluno ao Bloco 2 da Prova de Língua Portuguesa'
  CO_CONCEITO_Q1_LP 'Conceito obtido na questão 1 de resposta construída em Língua Portuguesa'
  CO_CONCEITO_Q2_LP 'Conceito obtido na questão 2 de resposta construída em Língua Portuguesa'
  CO_RESPOSTA_TEXTO 'Análise da Produção Textual'
  CO_CONCEITO_SEQUENCIA 'Conceito obtido para sequência narrativa na produção de texto em Língua Portuguesa'
  CO_CONCEITO_COESAO 'Conceito obtido para coesão na produção de texto em Língua Portuguesa'
  CO_CONCEITO_PONTUACAO 'Conceito obtido para pontuação na produção de texto em Língua Portuguesa'
  CO_CONCEITO_SEGMENTACAO 'Conceito obtido para segmentação na produção de texto em Língua Portuguesa'
  CO_TEXTO_GRAFIA 'Conceito obtido para grafia na produção de texto em Língua Portuguesa'
  TX_RESP_BLOCO1_MT 'Resposta do aluno ao Bloco 1 da Prova de Matemática'
  TX_RESP_BLOCO2_MT 'Resposta do aluno ao Bloco 2 da Prova de Matemática'
  CO_CONCEITO_Q1_MT 'Conceito obtido na questão 1 de resposta construída em Matemática'
  CO_CONCEITO_Q2_MT 'Conceito obtido na questão 2 de resposta construída em Matemática'
  IN_PROFICIENCIA_LP 'Indicador para cálculo da proficiência (no mínimo três itens respondidos no caderno de prova de Língua Portuguesa)'
  IN_PROFICIENCIA_MT 'Indicador para cálculo da proficiência (no mínimo três itens respondidos no caderno de prova de Matemática)'
  IN_AMOSTRA 'Indicador de participação da amostra'
  ESTRATO 'Descrição dos estratos'
  PESO_ALUNO_LP 'Peso do aluno em Língua Portuguesa'
  IN_ALFABETIZADO 'Indicador para o aluno classificado como alfabetizado em Língua Portuguesa, ou seja, aquele com PROFICIENCIA_LP_SAEB maior ou igual a 743'
  PROFICIENCIA_LP 'Proficiência do aluno em Língua Portuguesa calculada na escala única do SAEB, com média = 0 e desvio = 1 na população de referência'
  ERRO_PADRAO_LP 'Erro padrão da proficiência em Língua Portuguesa'
  PROFICIENCIA_LP_SAEB 'Proficiência em Língua Portuguesa transformada na escala única do SAEB, com média = 750, desvio = 50 (do SAEB/19)'
  ERRO_PADRAO_LP_SAEB 'Erro padrão da proficiência transformada em Língua Portuguesa'
  PESO_ALUNO_MT 'Peso do aluno em Matemática'
  PROFICIENCIA_MT 'Proficiência do aluno em Matemática calculada na escala única do SAEB, com média = 0 e desvio = 1 na população de referência'
  ERRO_PADRAO_MT 'Erro padrão da proficiência em Matemática'
  PROFICIENCIA_MT_SAEB 'Proficiência do aluno em Matemática transformada na escala única do SAEB, com média = 750, desvio = 50 (do SAEB/19)'
  ERRO_PADRAO_MT_SAEB 'Erro padrão da proficiência transformada em Matemática'.

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
        2  '2º Ano do Ensino Fundamental'
    /IN_SITUACAO_CENSO
        0  'Não consistente'
        1  'Consistente'
    /IN_PREENCHIMENTO_LP       
        0  'Prova não preenchida'
        1  'Prova preenchida'
    /IN_PREENCHIMENTO_MT       
        0  'Prova não preenchida'
        1  'Prova preenchida'
    /IN_PRESENCA_LP
        0 'Ausente'
        1 'Presente'
    /IN_PRESENCA_MT
        0 'Ausente'
        1 'Presente'
    /CO_CONCEITO_Q1_LP
        'A' 'Escrita ortográfica'
        'B' 'Escrita alfabética'
        'E' 'Escrita silábico-alfabética'
        'F' 'Escrita silábica'
        'G' 'Escrita incompreensível'
        '.' 'Branco'
        'IP' 'Imagem com problema'
    /CO_CONCEITO_Q2_LP
        'A' 'Escrita ortográfica'
        'B' 'Escrita alfabética'
        'E' 'Escrita silábico-alfabética'
        'F' 'Escrita silábica'
        'G' 'Escrita incompreensível'
        '.' 'Branco'
        'IP'  'Imagem com problema'
    /CO_RESPOSTA_TEXTO
        'BR'  'Branco'
        'NL'  'Nulo'
        'TX'  'Texto'
    /CO_CONCEITO_SEQUENCIA
        'A' 'A'
        'B' 'B'
        'C' 'C'
        '.' 'Branco'
        '*' 'Nulo'
    /CO_CONCEITO_COESAO
        'A' 'A'
        'B' 'B'
        'C' 'C'
        '.' 'Branco'
        '*' 'Nulo'
    /CO_CONCEITO_PONTUACAO
        'A' 'A'
        'B' 'B'
        'C' 'C'
        '.' 'Branco'
        '*' 'Nulo'
    /CO_CONCEITO_SEGMENTACAO
        'A' 'A'
        'B' 'B'
        'C' 'C'
        '.' 'Branco'
        '*' 'Nulo'
    /CO_TEXTO_GRAFIA
        'A' 'A'
        'B' 'B'
        'C' 'C'
        '.' 'Branco'
        '*' 'Nulo'
    /CO_CONCEITO_Q1_MT
        20  'Crédito completo'
        21  'Crédito completo'
        22  'Crédito completo'
        23  'Crédito completo'
        10  'Crédito parcial'
        11  'Crédito parcial'
        12  'Crédito parcial'
        13  'Crédito parcial'
        0   'Nenhum crédito' 
        7   'Erros de impressão ou digitalização'
        '.'   'Em branco'
    /CO_CONCEITO_Q2_MT
        20  'Crédito completo'
        21  'Crédito completo'
        22  'Crédito completo'
        23  'Crédito completo'
        10  'Crédito parcial'
        11  'Crédito parcial'
        12  'Crédito parcial'
        13  'Crédito parcial'
        0   'Nenhum crédito' 
        7   'Erros de impressão ou digitalização'
        '.'   'Em branco'
    /IN_PROFICIENCIA_LP
        0 'Não'
        1 'Sim'
    /IN_PROFICIENCIA_MT
        0 'Não'
        1 'Sim'
    /IN_AMOSTRA
        0 'Não'
        1 'Sim'
    /IN_ALFABETIZADO
        0 'Não'
        1 'Sim'.



















