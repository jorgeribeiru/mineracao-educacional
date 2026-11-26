/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
/*                                   			                                       */
/*  Coordenação-Geral de Medidas da Educação Básica (CGMEB)                            */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_ITEM                                                     */
/*-------------------------------------------------------------------------------------*/
/*  DESCRICAO:   PROGRAMA PARA LEITURA DAS INFORMAÇÕES GERAIS SOBRE                    */
/*               DESCRITORES, BLOCOS, ITENS E GABARITO DAS PROVAS DO SAEB 2023         */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, é necessário salvar este programa e o arquivo             */
/* TS_ITEM.CSV no diretório C:\ do computador.	                                       */
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
/***************************************************************************************/;

proc format;

value ID_SERIE
2 = '2º ano EF'
5 = '5º ano EF'
9 = '9º ano EF'
3 = '3ª/4ª série EM';

value $TP_DISCIPLINA
LP = 'Língua Portuguesa'
MT = 'Matemática'
CH = 'Ciências Humanas'
CN = 'Ciências da Natureza';

value $TP_ITEM_MODELO
M2PL = 'Modelo logístico de 2 parâmetros'
M3PL = 'Modelo Logístico de 3 parâmetros'
MRG = 'Modelo de resposta gradual'
M3P = 'Modelo normal de 3 parâmetros';

run;

DATA WORK.TS_ITEM;

INFILE 'C:\TS_ITEM.csv' /*Endereço do arquivo*/
		LRECL=150
		firstobs=2
        DLM=";"
        MISSOVER
        DSD ;

INPUT
        ID_SAEB          : ?? BEST4.
        ID_SERIE         : ?? BEST1.
        TP_DISCIPLINA    : $CHAR2.
        NU_BLOCO         : ?? BEST1.
        NU_POSICAO       : ?? BEST2.
        ID_ITEM          : $CHAR10.
        NU_DESCRITOR_HABILIDADE : $CHAR6.
        TX_GABARITO      : $CHAR3.
        TP_ITEM          : $CHAR19.
        TP_ITEM_MODELO   : $CHAR4.
        A                : ?? COMMA11.
        B                : ?? COMMA12.
        C                : ?? COMMA11.
        B1               : ?? COMMA12.
        B2               : ?? COMMA12.
        B3               : ?? COMMA12. ;

ATTRIB ID_SERIE FORMAT=ID_SERIE.;
ATTRIB TP_DISCIPLINA FORMAT=TP_DISCIPLINA.;
ATTRIB TP_ITEM_MODELO FORMAT=TP_ITEM_MODELO.;

LABEL

ID_SAEB = 'Ano de aplicação do Saeb'
ID_SERIE = 'Série em que a prova foi aplicada'
TP_DISCIPLINA = 'Disciplina do item'
NU_BLOCO = 'Identificador do bloco'
NU_POSICAO = 'Identificador da posição do item no bloco'
ID_ITEM = 'Identificador do item'
NU_DESCRITOR_HABILIDADE = 'Identificador do descritor do item'
TX_GABARITO = 'Gabarito do Item'
TP_ITEM = 'Tipo de resposta esperada para o Item'
TP_ITEM_MODELO = 'Modelos da Teoria de Resposta ao Item'
A = 'Parâmetro de discriminação: é o poder de discriminação do item para diferenciar os participantes que dominam dos participantes que não dominam a habilidade avaliada.'
B = 'Parâmetro de dificuldade: associado à dificuldade do item, sendo que quanto maior seu valor, mais difícil é o item.'
C = 'Parâmetro de acerto ao acaso: é a probabilidade de um participante acertar o item não dominando a habilidade exigida.'
B1 = 'Parâmetro de dificuldade da transição entre as categorias de “erro” e “acerto parcial”.'
B2 = 'Parâmetro de dificuldade da transição entre as categorias de “acerto parcial” e “acerto total”.'
B3 = 'Parâmetro de dificuldade da transição entre as categorias de “acerto parcial” e “acerto total”.'
;

run;quit;                       