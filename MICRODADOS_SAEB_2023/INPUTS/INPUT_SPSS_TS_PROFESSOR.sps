/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação-Geral de Medidas da Educação Básica (CGMEB)	                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_PROFESSOR.sps                                                           */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DO QUESTIONÁRIO DO PROFESSOR */
/*                     DO SAEB 2023                                                                                */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* TS_PROFESSOR.CSV no diretório C:\ do computador.	                        	 */
/*							 */ 
/* Ao terminar esses procedimentos execute o programa salvo utilizando                      */
/* as variáveis de interesse.                                                                                       */
/*							 */
/* Para a leitura dos microdados é necessário a seleção do programa abaixo,               */
/* depois execute-o.						 */
/*							 */ 
/******************************************************************************************************/
/*                                                   ATENÇÃO                                                           */ 
/******************************************************************************************************/
/* Este programa abre a base de dados com os rótulos das variáveis de	                    */
/* acordo com o dicionário de dados que compõem os microdados. Para abrir                */
/* os dados sem os rótulos basta importar diretamente no SPSS.		  */
/* 							  */
/* Os Rótulos de algumas variáveis não estão completos, em virtude do tamanho do.      */
/* dos enunciados das questões. Tais enunciados foram resumidos e indicados com o   */
/* seguinte código: "(Cf. Dic.)". Essas questões exigem a Consulta do Dicionário de       */
/* Variáveis para conhecer o enunciado completo.                                                     	  */
/* 							  */
/*******************************************************************************************************/



GET DATA
  /TYPE=TXT
  /FILE="C:\TS_PROFESSOR.csv"
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
  ID_PROFESSOR F7.0
  ID_SERIE F2.0
  SQ_QUESTIONARIO F1.0
  IN_PREENCHIMENTO_QUESTIONARIO F1.0
  IN_PREENCHIMENTO_OUTRA_TURMA F1.0
  TX_Q001 A1
  TX_Q002 F2.0
  TX_Q003 A1
  TX_Q004 A1
  TX_Q005 A1
  TX_Q006 A1
  TX_Q007 A1
  TX_Q008 A1
  TX_Q009 A1
  TX_Q010 A1
  TX_Q011 A1
  TX_Q012 A1
  TX_Q013 A1
  TX_Q014 A1
  TX_Q015 A1
  TX_Q016 A1
  TX_Q017 A1
  TX_Q018 A1
  TX_Q019 A1
  TX_Q020 A1
  TX_Q021 A1
  TX_Q022 A1
  TX_Q023 A1
  TX_Q024 A1
  TX_Q025 A1
  TX_Q026 A1
  TX_Q027 A1
  TX_Q028 A1
  TX_Q029 A1
  TX_Q030 A1
  TX_Q031 A1
  TX_Q032 A1
  TX_Q033 A1
  TX_Q034 A1
  TX_Q035 A1
  TX_Q036 A1
  TX_Q037 A1
  TX_Q038 A1
  TX_Q039 A1
  TX_Q040 A1
  TX_Q041 A1
  TX_Q042 A1
  TX_Q043 A1
  TX_Q044 A1
  TX_Q045 A1
  TX_Q046 A1
  TX_Q047 A1
  TX_Q048 F2.0
  TX_Q049 F2.0
  TX_Q050 A1
  TX_Q051 A1
  TX_Q052 A1
  TX_Q053 F2.0
  TX_Q054 A1
  TX_Q055 F2.0
  TX_Q056 A1
  TX_Q057 A1
  TX_Q058 A1
  TX_Q059 A1
  TX_Q060 A1
  TX_Q061 A1
  TX_Q062 A1
  TX_Q063 A1
  TX_Q064 A1
  TX_Q065 A1
  TX_Q066 A1
  TX_Q067 A1
  TX_Q068 A1
  TX_Q069 A1
  TX_Q070 A1
  TX_Q071 A1
  TX_Q072 A1
  TX_Q073 A1
  TX_Q074 A1
  TX_Q075 A1
  TX_Q076 A1
  TX_Q077 A1
  TX_Q078 A1
  TX_Q079 A1
  TX_Q080 A1
  TX_Q081 A1
  TX_Q082 A1
  TX_Q083 A1
  TX_Q084 A1
  TX_Q085 A1
  TX_Q086 A1
  TX_Q087 A1
  TX_Q088 A1
  TX_Q089 A1
  TX_Q090 A1
  TX_Q091 A1
  TX_Q092 A1
  TX_Q093 A1
  TX_Q094 A1
  TX_Q095 A1
  TX_Q096 A1
  TX_Q097 A1
  TX_Q098 A1
  TX_Q099 A1
  TX_Q100 A1
  TX_Q101 A1
  TX_Q102 A1
  TX_Q103 A1
  TX_Q104 A1
  TX_Q105 A1
  TX_Q106 A1
  TX_Q107 F2.0
  TX_Q108 F3.0
  TX_Q109 A1
  TX_Q110 A1
  TX_Q111 A1
  TX_Q112 A1
  TX_Q113 A1
  TX_Q114 A1
  TX_Q115 A1
  TX_Q116 A1
  TX_Q117 A1
  TX_Q118 A1
  TX_Q119 A1
  TX_Q120 A1
  TX_Q121 A1
  TX_Q122 A1
  TX_Q123 A1
  TX_Q124 A1
  TX_Q125 A1
  TX_Q126 A1
  TX_Q127 A1
  TX_Q128 A1
  TX_Q129 A1
  TX_Q130 A1
  TX_Q131 A1
  TX_Q132 A1
  TX_Q133 A1
  TX_Q134 A1
  TX_Q135 A1
  TX_Q136 A1
  TX_Q137 A1
  TX_Q138 A1
  TX_Q139 A1
  TX_Q140 A1
  TX_Q141 A1
  TX_Q142 A1
  TX_Q143 A1
  TX_Q144 A1
  TX_Q145 A1
  TX_Q146 A1
  TX_Q147 A1
  TX_Q148 A3526.

CACHE.
EXECUTE.
DATASET NAME TS_PROFESSOR WINDOW=FRONT.

VARIABLE LABELS 
  ID_SAEB 'Ano de Aplicação do Saeb'
  ID_REGIAO 'Código da Região'
  ID_UF 'Código da Unidade da Federação'
  ID_MUNICIPIO 'Máscaras dos Códigos de Municípios (são códigos fictícios)'
  ID_AREA 'Área'
  ID_ESCOLA 'Máscaras dos Códigos de Escola (são códigos fictícios)'
  IN_PUBLICA 'Indica se a escola é pública ou não'
  ID_LOCALIZACAO 'Localização'
  ID_TURMA 'Código da turma no Saeb'
  ID_PROFESSOR 'Código do Professor no Saeb'
  ID_SERIE 'Ano Escolar'
  SQ_QUESTIONARIO 'Sequencial do questionário na turma'
  IN_PREENCHIMENTO_QUESTIONARIO 'Indicador de preenchimento do questionário'
  IN_PREENCHIMENTO_OUTRA_TURMA 'Indicador de preenchimento do questionário para outra turma, pelo mesmo professor'
  TX_Q001 'Qual é o seu sexo?'
  TX_Q002 'Qual é a sua idade?'
  TX_Q003 'Qual é a sua cor ou raça?'
  TX_Q004 'Você possui deficiência, transtorno do espectro autista ou superdotação?'
  TX_Q005 'Indique qual é a sua condição: Deficiência.'
  TX_Q006 'Indique qual é a sua condição: Transtorno do espectro autista.'
  TX_Q007 'Indique qual é a sua condição: Altas habilidades/superdotação.'
  TX_Q008 'Leio livros não relacionados à Educação.'
  TX_Q009 'Acesso blogs, Youtube, redes sociais (Twitter, Instagram, Facebook etc.).'
  TX_Q010 'Assisto a filmes.'
  TX_Q011 'Vou a exposições (museus, centros culturais).'
  TX_Q012 'Assisto a espetáculos (teatro, shows, circo, etc.)'
  TX_Q013 'Estudo.'
  TX_Q014 'Assisto a telejornal.'
  TX_Q015 'Tornar-me professor(a) foi a realização de um dos meus sonhos.'
  TX_Q016 'A profissão de professor(a) é valorizada pela sociedade.'
  TX_Q017 'As vantagens de ser professor(a) superam claramente as desvantagens.'
  TX_Q018 'No geral, estou satisfeito(a) com o meu trabalho de professor(a).'
  TX_Q019 'Tenho vontade de desistir da profissão'
  TX_Q020 'Qual é o MAIS ALTO nível de escolaridade que você concluiu?'
  TX_Q021 'Atividades formativas com menos de 20 horas'
  TX_Q022 'Curso com carga horária total de 20 horas até 179 horas.'
  TX_Q023 'Curso com carga horária total com mais de 180 e menos 360 horas'
  TX_Q024 'Considerando as atividades formativas de curta duração (inferiores a 360 horas) das quais participou neste ano, com que frequência estava previsto: Participação de professor(es) da(s) escola(s) em que leciono?'
  TX_Q025 'Considerando as atividades formativas de curta duração (inferiores a 360 horas) das quais participou neste ano, com que frequência estava previsto: Atividades colaborativas de aprendizado?'
  TX_Q026 'Considerando as atividades formativas de curta duração (inferiores a 360 horas) das quais participou neste ano, com que frequência estava previsto: Atividades intercaladas com seu trabalho normal de sala de aula?'
  TX_Q027 'Indique o nível de contribuição das atividades formativas e cursos realizados neste ano para: Aprofundar seus conhecimentos sobre as disciplinas que leciona.'
  TX_Q028 'Indique o nível de contribuição das atividades formativas e cursos realizados neste ano para: Aprimorar os processos avaliativos.'
  TX_Q029 'Indique o nível de contribuição das atividades formativas e cursos realizados neste ano para: Utilizar novas tecnologias para apoiar suas atividades.'
  TX_Q030 'Indique o nível de contribuição das atividades formativas e cursos realizados neste ano para: Colaborar com seus colegas na preparação de atividades e projetos.'
  TX_Q031 'Indique o nível de contribuição das atividades formativas e cursos realizados neste ano para: Aprimorar as metodologias de ensino.'
  TX_Q032 'Indique o nível de contribuição das atividades formativas e cursos realizados neste ano para: Auxiliar na mediação de conflitos.'
  TX_Q033 'Dentre as atividades formativas listadas anteriormente das quais você participou neste ano, a instituição ou Secretaria de Educação financiou:'
  TX_Q034 'Durante este ano, indique se participou de algum dos cursos de pós-graduação listados abaixo:'
  TX_Q035 'Recebeu apoio da Secretaria ou mantenedora para realizá-lo?'
  TX_Q036 'Indique quem pagou por esse curso de pós-graduação:'
  TX_Q037 'Uso de novas tecnologias de informação e comunicação.'
  TX_Q038 'Gestão de conflitos.'
  TX_Q039 'Metodologia de avaliação.'
  TX_Q040 'Metodologia de ensino para o público-alvo da educação especial.'
  TX_Q041 'Utilização de elementos da cultura local na prática pedagógica.'
  TX_Q042 'Identificação de problemas extraescolares.'
  TX_Q043 'Gestão democrática.'
  TX_Q044 'Ensino do conteúdo que leciono.'
  TX_Q045 'Desenvolvimento da aprendizagem.'
  TX_Q046 'Planejamento pedagógico.'
  TX_Q047 'Recursos e práticas pedagógicas.'
  TX_Q048 'Há quantos anos você trabalha como professor(a)?'
  TX_Q049 'Há quantos anos você trabalha como professor(a) nesta escola?'
  TX_Q050 'Além de ser professor(a), você exerce outra atividade remunerada?'
  TX_Q051 'Em quantas escolas você trabalha?'
  TX_Q052 'Qual o seu tipo de vínculo trabalhista nesta escola?'
  TX_Q053 'Qual a sua carga horária semanal total de trabalho como professor(a)?'
  TX_Q054 'Qual é o seu salário bruto como professor(a)? Indique a faixa salarial em que seu salário se encontra.'
  TX_Q055 'Nesta escola, quantas horas você trabalha em uma semana normal (desenvolvendo as atividades pedagógicas, presente em sala, preparando atividades, murais, participando de reuniões etc.)?'
  TX_Q056 'Esta escola, em seu planejamento, prevê um tempo para atividades como preparação de aulas, reuniões, atendimento aos pais etc.?'
  TX_Q057 'Em uma semana normal de trabalho, você costuma levar trabalho desta escola para fazer em casa?'
  TX_Q058 'Tamanho da sala com relação ao número de estudantes.'
  TX_Q059 'Acústica.'
  TX_Q060 'Iluminação natural.'
  TX_Q061 'Ventilação natural.'
  TX_Q062 'Temperatura.'
  TX_Q063 'Instalações elétricas.'
  TX_Q064 'Limpeza.'
  TX_Q065 'Acessibilidade física.'
  TX_Q066 'Mobiliário (mesas, carteiras, armários).'
  TX_Q067 'Infraestrutura (paredes, teto, assoalho, portas, piso).'
  TX_Q068 'Lousa (quadro de giz ou quadro branco).'
  TX_Q069 'Livro didático.'
  TX_Q070 'Televisão.'
  TX_Q071 'Projetor multimídia (datashow).'
  TX_Q072 'Computador (de mesa, portátil, tablet).'
  TX_Q073 'Software.'
  TX_Q074 'Internet.'
  TX_Q075 'Recursos pedagógicos para atendimento educacional especializado.'
  TX_Q076 'Repetir de ano é bom para o(a) estudante que não apresentou desempenho satisfatório.'
  TX_Q077 'A quantidade de avaliações externas (municipais, estaduais ou federais) é excessiva.'
  TX_Q078 'As avaliações externas (municipais, estaduais ou federais) têm direcionado o que deve ser ensinado.'
  TX_Q079 'As avaliações externas têm ajudado a melhorar o processo de ensino e aprendizagem.'
  TX_Q080 'A maior parte dos estudantes apresentam problemas de aprendizagem.'
  TX_Q081 'Propor dever de casa.'
  TX_Q082 'Corrigir com os(as) estudantes o dever de casa.'
  TX_Q083 'Desenvolver trabalhos em grupo com os(as) estudantes.'
  TX_Q084 'Solicitar que os(as) estudantes copiem textos e atividades do livro didático ou da lousa (quadro de giz ou quadro branco).'
  TX_Q085 'Estimular os(as) estudantes a expressarem suas opiniões e a desenvolverem argumentos a partir de temas diversos.'
  TX_Q086 'Propor situações de aprendizagem que sejam familiares ou de interesse dos(as) estudantes.'
  TX_Q087 'Informar aos(às) estudantes, no início do ano, o que será ensinado ou aprendido.'
  TX_Q088 'Perguntar aos(às) estudantes o que sabem sobre o tema, ao iniciar um novo conteúdo.'
  TX_Q089 'Trazer temas do cotidiano para serem debatidos em sala de aula.'
  TX_Q090 'Diversificar as metodologias de ensino conforme as dificuldades dos(as) estudantes.'
  TX_Q091 'Considerar que os resultados das avaliações indicam o quanto os(as) estudantes aprenderam.'
  TX_Q092 'Buscar estratégias para melhorar a aprendizagem dos(as) estudantes com menor desempenho.'
  TX_Q093 'Abordar questões sobre desigualdade racial com os(as) estudantes.'
  TX_Q094 'Abordar questões sobre desigualdade de gênero com os(as) estudantes.'
  TX_Q095 'Abordar questões sobre bullying e outras formas de violência com os(as) estudantes.'
  TX_Q096 'Abordar questões relacionadas ao futuro profissional dos(as) estudantes.'
  TX_Q097 'Há estudantes público-alvo da educação especial nesta escola?'
  TX_Q098 'Indique com que frequência a escola oferece suporte para os estudantes público-alvo da educação especial.'
  TX_Q099 'Há um espaço para atendimento educacional especializado na escola?'
  TX_Q100 'A escola possui Projeto Político-Pedagógico?'
  TX_Q101 'Indique se as situações abaixo se aplicam ou não ao Projeto Político-Pedagógico desta escola. Seu conteúdo é discutido em reuniões?'
  TX_Q102 'Indique se as situações abaixo se aplicam ou não ao Projeto Político-Pedagógico desta escola. Os(As) professores(as) participaram da elaboração.'
  TX_Q103 'Indique se as situações abaixo se aplicam ou não ao Projeto Político-Pedagógico desta escola. Os profissionais não docentes participaram da elaboração?'
  TX_Q104 'Indique se as situações abaixo se aplicam ou não ao Projeto Político-Pedagógico desta escola. Os pais participaram da elaboração?'
  TX_Q105 'Indique se as situações abaixo se aplicam ou não ao Projeto Político-Pedagógico desta escola. Os(As) estudantes participaram da elaboração?'
  TX_Q106 'Há Conselho de Classe na sua escola?'
  TX_Q107 'Quantas vezes o Conselho de Classe se reuniu neste ano?'
  TX_Q108 'Quantos estudantes, NORMALMENTE, participam do Conselho de Classe por reunião?'
  TX_Q109 'Escolha do material didático.'
  TX_Q110 'Metodologia de ensino.'
  TX_Q111 'Conteúdos trabalhados em sala.'
  TX_Q112 'Instrumentos para avaliar os(as) estudantes.'
  TX_Q113 'Peso de cada instrumento de avaliação nas notas finais dos(as) estudantes.'
  TX_Q114 'Seleção de conteúdos usados nas provas.'
  TX_Q115 'O(A) diretor(a) debate as metas educacionais com os(as) professores(as) nas reuniões.'
  TX_Q116 'O(A) diretor(a) e os(as) professores(as) tratam a qualidade de ensino como uma responsabilidade coletiva.'
  TX_Q117 'O(A) diretor(a) informa aos(às) professores(as) sobre as possibilidades de aperfeiçoamento profissional.'
  TX_Q118 'O(A) diretor(a) dá atenção especial a aspectos relacionados à aprendizagem dos(as) estudantes.'
  TX_Q119 'O(A) diretor(a) dá atenção especial a aspectos relacionados às normas administrativas.'
  TX_Q120 'O(A) diretor(a) me anima e me motiva para o trabalho.'
  TX_Q121 'Tenho confiança no(a) diretor(a) como profissional.'
  TX_Q122 'O(A) diretor(a) e os(as) professores(as) asseguram que as questões relacionadas à qualidade da convivência e gestão de conflitos sejam uma responsabilidade coletiva.'
  TX_Q123 'Colaboração da família para superar problemas relacionados aos estudantes (ausências, acompanhamento das atividades escolares etc.).'
  TX_Q124 'Colaboração entre colegas (feedback, trocas, projetos interdisciplinares).'
  TX_Q125 'Colaboração da gestão da instituição (equipe gestora, equipe pedagógica) para superar dificuldades de sala de aula.'
  TX_Q126 'Apoio da Secretaria de Educação para superar as dificuldades do cotidiano escolar.'
  TX_Q127 'Respeitam os acordos estabelecidos em sala.'
  TX_Q128 'São assíduos(as).'
  TX_Q129 'São respeitosos(as) comigo.'
  TX_Q130 'São respeitosos(as) com os(as) colegas da turma.'
  TX_Q131 'Expressam diferentes opiniões.'
  TX_Q132 'Se interessam sobre o que ensinei neste ano.'
  TX_Q133 'Sentem-se motivados(as) para aprender os temas ligados à minha disciplina.'
  TX_Q134 'São capazes de concluir a Educação Básica e prosseguir seus estudos.'
  TX_Q135 'Atentado à vida.'
  TX_Q136 'Lesão corporal.'
  TX_Q137 'Roubo ou furto.'
  TX_Q138 'Tráfico de drogas.'
  TX_Q139 'Permanência de pessoas sob efeito de álcool.'
  TX_Q140 'Permanência de pessoas sob efeito de drogas.'
  TX_Q141 'Porte de arma (revólver, faca, canivete).'
  TX_Q142 'Assédio sexual.'
  TX_Q143 'Discriminação (racial, gênero, orientação sexual, econômica/social, deficiência etc.).'
  TX_Q144 'Bullying (ameaças ou ofensas verbais).'
  TX_Q145 'Invasão do espaço escolar.'
  TX_Q146 'Depredação do patrimônio escolar (vandalismo).'
  TX_Q147 'Tiroteio ou bala perdida.'
  TX_Q148 'Sugestões de melhoria para o instrumento (inclusão de temas, estrutura do questionário etc.).'
  .

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
        0'Privada'
        1'Pública'
    /ID_LOCALIZACAO
        1'Urbana'
        2'Rural'
    /ID_SERIE
        2  '2º Ano do Ensino Fundamental'
        5  '5º Ano do Ensino Fundamental'
        9  '9º Ano do Ensino Fundamental'
        12  '3ª/4ª séries do Ensino Médio Tradicional'
        13  '3ª/4ª séries do Ensino Médio Integrado'
    /SQ_QUESTIONARIO
        0  'Turmas que não participaram da aplicação do questionário eletrônico'
        5  'Professor único - 2º e 5º ano'
        1  'Língua /Literatura Portuguesa' 
        2  'Matemática' 
        3  'Ciências Humanas' 
        4  'Ciências Da Natureza'
    /IN_PREENCHIMENTO_QUESTIONARIO
        0  'Não preenchido'
        1  'Preenchido parcial ou totalmente'
    /IN_PREENCHIMENTO_OUTRA_TURMA
        0  'Não'
        1  'Sim'
    /TX_Q001
        'A' 'Masculino'
        'B' 'Feminino'
        'C' 'Não quero declarar'
    /TX_Q003
        'A' 'Branca'
        'B' 'Preta'
        'C' 'Parda'
        'D' 'Amarela'
        'E' 'Indígena'
        'F' 'Não quero declarar'
    /TX_Q004
        'A' 'Não'
        'B' 'Sim'
    /TX_Q005
        'A' 'Não'
        'B' 'Sim'
    /TX_Q006
        'A' 'Não'
        'B' 'Sim'
    /TX_Q007
        'A' 'Não'
        'B' 'Sim'
    /TX_Q008
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q009
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q010
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q011
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q012
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q013
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q014
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q015
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q016
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q017
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q018
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q019
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q020
        'A' 'Ensino Médio - Magistério'
        'B' 'Graduação'
        'C' 'Especialização'
        'D' 'Mestrado'
        'E' 'Doutorado'
    /TX_Q021
        'A' 'Nenhuma'
        'B' 'Uma'
        'C' 'Duas'
        'D' 'Três ou mais'
    /TX_Q022
        'A' 'Nenhuma'
        'B' 'Uma'
        'C' 'Duas'
        'D' 'Três ou mais'
    /TX_Q023
        'A' 'Nenhuma'
        'B' 'Uma'
        'C' 'Duas'
        'D' 'Três ou mais'
    /TX_Q024
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q025
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q026
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q027
        'A' 'Não contribuiu'
        'B' 'Contribuiu pouco'
        'C' 'Contribuiu razoavelmente'
        'D' 'Contribuiu muito'
    /TX_Q028
        'A' 'Não contribuiu'
        'B' 'Contribuiu pouco'
        'C' 'Contribuiu razoavelmente'
        'D' 'Contribuiu muito'
    /TX_Q029
        'A' 'Não contribuiu'
        'B' 'Contribuiu pouco'
        'C' 'Contribuiu razoavelmente'
        'D' 'Contribuiu muito'
    /TX_Q030
        'A' 'Não contribuiu'
        'B' 'Contribuiu pouco'
        'C' 'Contribuiu razoavelmente'
        'D' 'Contribuiu muito'
    /TX_Q031
        'A' 'Não contribuiu'
        'B' 'Contribuiu pouco'
        'C' 'Contribuiu razoavelmente'
        'D' 'Contribuiu muito'
    /TX_Q032
        'A' 'Não contribuiu'
        'B' 'Contribuiu pouco'
        'C' 'Contribuiu razoavelmente'
        'D' 'Contribuiu muito'
    /TX_Q033
        'A' 'Todas as atividades formativas'
        'B' 'Algumas atividades formativas (ou parte delas)'
        'C' 'Nenhuma atividade formativa'
    /TX_Q034
        'A' 'Não fiz curso de pós-graduação'
        'B' 'Especialização (mínimo de 360 horas)'
        'C' 'Mestrado (acadêmico ou profissional)'
        'D' 'Doutorado'
    /TX_Q035
        'A' 'SEM apoio'
        'B' 'Com apoio parcial'
        'C' 'Com apoio total'
    /TX_Q036
        'A' 'Curso gratuito'
        'B' 'Curso pago por algum órgão ou instituição (total ou parcialmente)'
        'C' 'Eu paguei integralmente o curso'
    /TX_Q037
        'A' 'Nenhuma necessidade'
        'B' 'Pouca necessidade'
        'C' 'Moderada necessidade'
        'D' 'Muita necessidade'
    /TX_Q038
        'A' 'Nenhuma necessidade'
        'B' 'Pouca necessidade'
        'C' 'Moderada necessidade'
        'D' 'Muita necessidade'
    /TX_Q039
        'A' 'Nenhuma necessidade'
        'B' 'Pouca necessidade'
        'C' 'Moderada necessidade'
        'D' 'Muita necessidade'
    /TX_Q040
        'A' 'Nenhuma necessidade'
        'B' 'Pouca necessidade'
        'C' 'Moderada necessidade'
        'D' 'Muita necessidade'
    /TX_Q041
        'A' 'Nenhuma necessidade'
        'B' 'Pouca necessidade'
        'C' 'Moderada necessidade'
        'D' 'Muita necessidade'
    /TX_Q042
        'A' 'Nenhuma necessidade'
        'B' 'Pouca necessidade'
        'C' 'Moderada necessidade'
        'D' 'Muita necessidade'
    /TX_Q043
        'A' 'Nenhuma necessidade'
        'B' 'Pouca necessidade'
        'C' 'Moderada necessidade'
        'D' 'Muita necessidade'
    /TX_Q044
        'A' 'Nenhuma necessidade'
        'B' 'Pouca necessidade'
        'C' 'Moderada necessidade'
        'D' 'Muita necessidade'
    /TX_Q045
        'A' 'Nenhuma necessidade'
        'B' 'Pouca necessidade'
        'C' 'Moderada necessidade'
        'D' 'Muita necessidade'
    /TX_Q046
        'A' 'Nenhuma necessidade'
        'B' 'Pouca necessidade'
        'C' 'Moderada necessidade'
        'D' 'Muita necessidade'
    /TX_Q047
        'A' 'Nenhuma necessidade'
        'B' 'Pouca necessidade'
        'C' 'Moderada necessidade'
        'D' 'Muita necessidade'
    /TX_Q050
        'A' 'Não'
        'B' 'Sim'
    /TX_Q051
        'A' 'Apenas nesta'
        'B' 'Em 2'
        'C' 'Em 3 ou mais'
    /TX_Q052
        'A' 'Concursado/efetivo/estável'
        'B' 'Contrato temporário'
        'C' 'Contrato CLT'
        'D' 'Outra situação trabalhista'
    /TX_Q054
        'A' 'Até R$ 1.320,00'
        'B' 'De R$ 1.320,01 até R$ 2.640,00'
        'C' 'De R$ 2.640,01 até R$ 3.960,00'
        'D' 'De R$ 3.960,01 até R$ 5.280,00'
        'E' 'De R$ 5.280,01 até R$ 6.600,00'
        'F' 'De R$ 6.600,01 até R$ 7.920,00'
        'G' 'De R$ 7.920,01 até R$ 9.240,00'
        'H' 'Acima de R$ 9.240,00'
    /TX_Q056	
        'A' 'Não'
        'B' 'Sim'
    /TX_Q057	
        'A' 'Não'
        'B' 'Sim'
    /TX_Q058
        'A' 'Muito inadequado'
        'B' 'Inadequado'
        'C' 'Adequado'
        'D' 'Muito adequado'
    /TX_Q059
        'A' 'Muito inadequado'
        'B' 'Inadequado'
        'C' 'Adequado'
        'D' 'Muito adequado'
    /TX_Q060
        'A' 'Muito inadequado'
        'B' 'Inadequado'
        'C' 'Adequado'
        'D' 'Muito adequado'
    /TX_Q061	
        'A' 'Muito inadequado'
        'B' 'Inadequado'
        'C' 'Adequado'
        'D' 'Muito adequado'
    /TX_Q062	
        'A' 'Muito inadequado'
        'B' 'Inadequado'
        'C' 'Adequado'
        'D' 'Muito adequado'
    /TX_Q063	
        'A' 'Muito inadequado'
        'B' 'Inadequado'
        'C' 'Adequado'
        'D' 'Muito adequado'
    /TX_Q064	
        'A' 'Muito inadequado'
        'B' 'Inadequado'
        'C' 'Adequado'
        'D' 'Muito adequado'
    /TX_Q065	
        'A' 'Muito inadequado'
        'B' 'Inadequado'
        'C' 'Adequado'
        'D' 'Muito adequado'
    /TX_Q066	
        'A' 'Muito inadequado'
        'B' 'Inadequado'
        'C' 'Adequado'
        'D' 'Muito adequado'
    /TX_Q067	
        'A' 'Muito inadequado'
        'B' 'Inadequado'
        'C' 'Adequado'
        'D' 'Muito adequado'
    /TX_Q068	
        'A' 'Muito inadequado'
        'B' 'Inadequado'
        'C' 'Adequado'
        'D' 'Muito adequado'
    /TX_Q069	
        'A' 'Não tem'
        'B' 'Não uso'
        'C' 'Muito inadequado'
        'D' 'Inadequado'
        'E' 'Adequado'
        'F' 'Muito adequado'
    /TX_Q070	
        'A' 'Não tem'
        'B' 'Não uso'
        'C' 'Muito inadequado'
        'D' 'Inadequado'
        'E' 'Adequado'
        'F' 'Muito adequado'
    /TX_Q071	
        'A' 'Não tem'
        'B' 'Não uso'
        'C' 'Muito inadequado'
        'D' 'Inadequado'
        'E' 'Adequado'
        'F' 'Muito adequado'
    /TX_Q072	
        'A' 'Não tem'
        'B' 'Não uso'
        'C' 'Muito inadequado'
        'D' 'Inadequado'
        'E' 'Adequado'
        'F' 'Muito adequado'
    /TX_Q073	
        'A' 'Não tem'
        'B' 'Não uso'
        'C' 'Muito inadequado'
        'D' 'Inadequado'
        'E' 'Adequado'
        'F' 'Muito adequado'
    /TX_Q074	
        'A' 'Não tem'
        'B' 'Não uso'
        'C' 'Muito inadequado'
        'D' 'Inadequado'
        'E' 'Adequado'
        'F' 'Muito adequado'
    /TX_Q075	
        'A' 'Não tem'
        'B' 'Não uso'
        'C' 'Muito inadequado'
        'D' 'Inadequado'
        'E' 'Adequado'
        'F' 'Muito adequado'
    /TX_Q076	
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q077	
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q078
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q079	
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q080	
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q081	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q082	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q083	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q084	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q085	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q086	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q087	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q088	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q089	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q090	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q091	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q092	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q093	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q094	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q095	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q096	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q097	
        'A' 'Não'
        'B' 'Sim'
    /TX_Q098	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q099	
        'A' 'Não'
        'B' 'Sim'
    /TX_Q100
        'A' 'Não'
        'B' 'Sim'
    /TX_Q101	
        'A' 'Não'
        'B' 'Sim'
        'C' 'Não sei'
    /TX_Q102
        'A' 'Não'
        'B' 'Sim'
        'C' 'Não sei'
    /TX_Q103	
        'A' 'Não'
        'B' 'Sim'
        'C' 'Não sei'
    /TX_Q104	
        'A' 'Não'
        'B' 'Sim'
        'C' 'Não sei'
    /TX_Q105	
        'A' 'Não'
        'B' 'Sim'
        'C' 'Não sei'
    /TX_Q106	
        'A' 'Não'
        'B' 'Sim'
    /TX_Q109	
        'A' 'Docente da turma'
        'B' 'Todo o corpo docente da escola'
        'C' 'Equipe gestora'
        'D' 'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.)'
    /TX_Q110	
        'A' 'Docente da turma'
        'B' 'Todo o corpo docente da escola'
        'C' 'Equipe gestora'
        'D' 'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.)'
    /TX_Q111	
        'A' 'Docente da turma'
        'B' 'Todo o corpo docente da escola'
        'C' 'Equipe gestora'
        'D' 'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.)'
    /TX_Q112	
        'A' 'Docente da turma'
        'B' 'Todo o corpo docente da escola'
        'C' 'Equipe gestora'
        'D' 'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.)'
    /TX_Q113	
        'A' 'Docente da turma'
        'B' 'Todo o corpo docente da escola'
        'C' 'Equipe gestora'
        'D' 'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.)'
    /TX_Q114	
        'A' 'Docente da turma'
        'B' 'Todo o corpo docente da escola'
        'C' 'Equipe gestora'
        'D' 'Decisão externa à escola (Secretaria de Educação, sistema apostilado de ensino etc.)'
    /TX_Q115	
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q116	
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q117	
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q118	
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q119	
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q120	
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q121
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q122	
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q123	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q124	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q125	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q126	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q127	
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q128	
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q129	
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q130	
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q131	
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q132	
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q133	
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q134	
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q135	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q136	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q137	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q138	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q139	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q140	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q141	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q142	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q143	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q144	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q145
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q146	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q147	
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'.



