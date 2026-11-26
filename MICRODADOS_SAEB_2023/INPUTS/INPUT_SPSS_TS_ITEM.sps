/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação-Geral de Medidas da Educação Básica (CGMEB)                              */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_ITEM                                                                              */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DAS INFORMAÇÕES GERAIS SOBRE */
/*                     DESCRITORES, BLOCOS, ITENS E GABARITO DAS PROVAS DO    */                 
/*                                                   SAEB 2023                                                        */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* TS_ITEM.CSV no diretório C:\ do computador.	                                                       */
/*							 */ 
/* Ao terminar esses procedimentos execute o programa salvo utilizando                      */
/* as variáveis de interesse.                                                                                       */
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
  /FILE="C:\MICRODADOS\TS_ITEM.csv" 
  /DELCASE=LINE 
  /DELIMITERS=";" 
  /ARRANGEMENT=DELIMITED 
  /FIRSTCASE=2 
  /IMPORTCASE=ALL 
  /VARIABLES=
  ID_SAEB F4.0
  ID_SERIE F1.0
  TP_DISCIPLINA A2
  NU_BLOCO F1.0
  NU_POSICAO F2.0
  ID_ITEM A10
  NU_DESCRITOR_HABILIDADE A6
  TX_GABARITO A3
  TP_ITEM A19
  TP_ITEM_MODELO A4
  A COMMA6.5
  B COMMA6.5
  C COMMA6.5
  B1 COMMA6.5
  B2 COMMA6.5
  B3 COMMA6.5.

CACHE.
EXECUTE.
DATASET NAME TS_ITEM WINDOW=FRONT.

VARIABLE LABELS 
  ID_SAEB 'Ano de aplicação do Saeb'
  ID_SERIE 'Série em que a prova foi aplicada'
  TP_DISCIPLINA 'Disciplina do item'
  NU_BLOCO 'Identificador do bloco'
  NU_POSICAO 'Identificador da posição do item no bloco'
  ID_ITEM 'Identificador do item'
  NU_DESCRITOR_HABILIDADE 'Identificador do descritor do item'
  TX_GABARITO 'Gabarito do Item'
  TP_ITEM 'Tipo de resposta esperada para o Item'
  TP_ITEM_MODELO 'Modelos da Teoria de Resposta ao Item'
  A 'Parâmetro de discriminação: é o poder de discriminação do item para diferenciar os participantes que dominam dos participantes que não dominam a habilidade avaliada.'
  B 'Parâmetro de dificuldade: associado à dificuldade do item, sendo que quanto maior seu valor, mais difícil é o item.'
  C 'Parâmetro de acerto ao acaso: é a probabilidade de um participante acertar o item não dominando a habilidade exigida.'
  B1 'Parâmetro de dificuldade da transição entre as categorias de “erro” e “acerto parcial”.'
  B2 'Parâmetro de dificuldade da transição entre as categorias de “acerto parcial” e “acerto total”.'
  B3 'Parâmetro de dificuldade da transição entre as categorias de "acerto parcial" e "acerto total”.'
  .

VALUE LABELS
    ID_SERIE
        2  '2º ano EF'
        5  '5º ano EF'
        9  '9º ano EF'
        3  '3ª/4ª série EM'
    /TP_DISCIPLINA
        'LP'  'Língua Portuguesa'
        'MT'  'Matemática'
        'CH'  'Ciências Humanas'
        'CN'  'Ciências da Natureza'
    /TP_ITEM_MODELO
        'M2PL'  'Modelo logístico de 2 parâmetros'
        'M3PL'  'Modelo Logístico de 3 parâmetros'
        'MRG'  'Modelo de resposta gradual'
        'M3P'  'Modelo normal de 3 parâmetros'.











