/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação-Geral de Medidas da Educação Básica (CGMEB) 		 */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_SECRETARIO_MUNICIPAL.sps                                        */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DO QUESTIONÁRIO DO SECRETÁRIO  */
/*                     MUNICIPAL DE EDUCAÇÃO DO SAEB 2023                                     */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* TS_SECRETARIO_MUNICIPAL.CSV no diretório C:\ do computador.	                	 */
/*							 */ 
/* Ao terminar esses procedimentos execute o programa salvo utilizando                      */
/* as variáveis de interesse.                                                                                       */
/******************************************************************************************************/
/*                                                   ATENÇÃO                                                          */ 
/******************************************************************************************************/
/* Este programa abre a base de dados com os rótulos das variáveis de	                    */
/* acordo com o dicionário de dados que compõem os microdados. Para abrir                */
/* os dados sem os rótulos basta importar diretamente no SPSS.		  */
/* 							  */                                                            
/* Algumas variáveis do questionário do Diretor envolvem regras de validação e                */
/* dependência. O entendimento dessas questões exigem consulta ao Dicionário de       */
/* Variáveis para conhecer as regras de cada questão.                                                  */
/* 							  */
/*******************************************************************************************************/


GET DATA
  /TYPE=TXT
  /FILE="C:\TS_SECRETARIO_MUNICIPAL.csv"
  /DELCASE=LINE
  /DELIMITERS=";"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  ID_SAEB F4.0
  ID_REGIAO F1.0
  ID_UF F2.0
  CO_MUNICIPIO F7.0
  ID_AREA F1.0
  IN_PREENCHIMENTO F1.0
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
  TX_Q018 F2.0 
  TX_Q019 F2.0 
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
  TX_Q032 F3.0
  TX_Q033 F3.0
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
  TX_Q048 A1
  TX_Q049 A1
  TX_Q050 A1
  TX_Q051 A1
  TX_Q052 A1
  TX_Q053 A1
  TX_Q054 A1
  TX_Q055 A1
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
  TX_Q067 A3500
  TX_Q068 F1.0
  TX_Q069 F1.0
  TX_Q070 F1.0
  TX_Q071 F1.0
  TX_Q072 F1.0
  TX_Q073 F1.0
  TX_Q074 F1.0
  TX_Q075 F1.0
  TX_Q076 F1.0
  TX_Q077 F1.0
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
  TX_Q093 F3.0
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
  TX_Q107 A1
  TX_Q108 A1
  TX_Q109 A1
  TX_Q110 A1
  TX_Q111 A1
  TX_Q112 A1
  TX_Q113 A1
  TX_Q114 A1
  TX_Q115 A1
  TX_Q116 A1
  TX_Q118 A1
  TX_Q117 F3.0
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
  TX_Q145 F1.0
  TX_Q146 F1.0
  TX_Q147 F1.0
  TX_Q148 F1.0
  TX_Q149 F1.0
  TX_Q150 F1.0
  TX_Q151 F1.0
  TX_Q152 F1.0
  TX_Q153 F1.0
  TX_Q154 A1
  TX_Q155 A1
  TX_Q156 A1
  TX_Q157 A1
  TX_Q158 A1
  TX_Q159 A1
  TX_Q160 A1
  TX_Q161 A1
  TX_Q162 A1
  TX_Q163 A1
  TX_Q164 A1
  TX_Q165 A1
  TX_Q166 A1
  TX_Q167 A1
  TX_Q168 A1
  TX_Q169 A1
  TX_Q170 A1
  TX_Q171 A1
  TX_Q172 A1
  TX_Q173 A1
  TX_Q174 A1
  TX_Q175 A1
  TX_Q176 A3500.

CACHE.
EXECUTE.
DATASET NAME TS_SECRETARIO_MUNICIPAL WINDOW=FRONT.

VARIABLE LABELS
  ID_SAEB 'Ano de aplicação do Saeb'
  ID_REGIAO 'Código da Região'
  ID_UF 'Código da Unidade da Federação'
  CO_MUNICIPIO 'Código do Município'
  ID_AREA 'Área'
  IN_PREENCHIMENTO 'Indicador de preenchimento válido do questionário'
  TX_Q001 'Qual é o seu sexo?'
  TX_Q002 'Qual é a sua idade?'
  TX_Q003 'Qual é a sua cor ou raça?'
  TX_Q004 'Você possui deficiência, transtorno do espectro autista ou superdotação?'
  TX_Q005 'Indique qual é a sua condição: Deficiência.'
  TX_Q006 'Indique qual é a sua condição: Transtorno do espectro autista.'
  TX_Q007 'Indique qual é a sua condição: Altas habilidades/superdotação.'
  TX_Q008 'Qual é o MAIS ALTO nível de escolaridade que você concluiu?'
  TX_Q009 'Este mais alto nível de escolaridade é relacionado ao campo educacional?'
  TX_Q010 'Além de Secretário (a) Municipal de Educação neste município, você exerceu alguma outra função na área de educação?'
  TX_Q011 'Indique as funções que exerceu: Professor(a) da Educação Básica.'
  TX_Q012 'Indique as funções que exerceu: Professor(a) da Educação Superior.'
  TX_Q013 'Indique as funções que exerceu: Diretor(a) ou vice-diretor(a) de escola de Educação Básica.'
  TX_Q014 'Indique as funções que exerceu: Membro de equipe pedagógica de escola de Educação Básica.'
  TX_Q015 'Indique as funções que exerceu: Membro de equipe da Secretaria de Educação ou Órgão Gestor de Educação municipal ou estadual (direção, pedagógico, administrativo etc.).'
  TX_Q016 'Indique as funções que exerceu: Membro de equipe de Instituição de Educação Superior (direção, pedagógico, administrativo etc.).'
  TX_Q017 'Indique as funções que exerceu: Secretário (a) Municipal de Educação em outra rede.'
  TX_Q018 'Qual o seu tempo total de experiência, em ano, na área de educação?'
  TX_Q019 'Qual o seu tempo de experiência, em ano, como Secretário (a) Municipal de Educação neste ou em outro município?'
  TX_Q020 'Você ocupa o cargo de Secretário (a) Municipal de Educação desde o início da gestão do atual prefeito?'
  TX_Q021 'Além de atividades como Secretário (a) Municipal de Educação, você exerce OUTRA atividade profissional?'
  TX_Q022 'Repetir de ano é bom para o(a) estudante que não apresentou desempenho satisfatório.'
  TX_Q023 'As avaliações externas (municipais, estaduais ou federais) têm direcionado o que deve ser ensinado na rede municipal.'
  TX_Q024 'As avaliações externas (federal, estadual ou municipal) têm ajudado a melhorar o processo de ensino e aprendizagem na rede municipal.'
  TX_Q025 'A maioria dos estudantes da rede municipal apresenta problemas de aprendizagem.'
  TX_Q026 'Eu acredito que a totalidade dos estudantes da rede municipal são capazes de concluir a Educação Básica e prosseguir seus estudos.'
  TX_Q027 'Autonomia em relação ao Conselho Estadual de Educação?'
  TX_Q028 'Sistema Municipal de Ensino (define normas municipais, regras de funcionamento da rede, acompanha a execução dos programas do órgão gestor etc.)?'
  TX_Q029 'Plano Municipal de Educação?'
  TX_Q030 'Fórum Permanente ou Municipal de Educação?'
  TX_Q031 'Conselho Municipal de Educação?'
  TX_Q032 'Quantos servidores/funcionários SEM FUNÇÕES DOCENTES estão lotados na sede da Secretaria de Educação ou do Órgão Gestor de Educação?'
  TX_Q033 'Quantos servidores/funcionários SEM FUNÇÕES DOCENTES lotados na sede da Secretaria de Educação ou Órgão Gestor de Educação desenvolvem atividades de apoio pedagógico às escolas?'
  TX_Q034 'O(A) Secretário (a) Municipal de Educação determina quanto, quando e como usar os recursos financeiros disponíveis no orçamento anual da educação?'
  TX_Q035 'O município repassa recursos municipais diretamente às suas escolas?'
  TX_Q036 'Serviços de saúde (postos de saúde etc.).'
  TX_Q037 'Serviços de assistência social (CRAS etc.).'
  TX_Q038 'Segurança pública (polícia militar, guarda municipal etc.).'
  TX_Q039 'Conselho Tutelar (Ministério Público e outros).'
  TX_Q040 'Instituições de apoio ao público-alvo da educação especial (APAE etc.).'
  TX_Q041 'Instituições de ensino superior (faculdades, universidades etc.).'
  TX_Q042 'Instituições privadas (empresas, ONGs, corporações etc.).'
  TX_Q043 'Outros órgãos da prefeitura ou dos governos estadual ou federal.'
  TX_Q044 'Livre indicação pelo Executivo (prefeito, Secretário (a) Municipal de Educação etc.).'
  TX_Q045 'Concurso público para o cargo de diretor(a).'
  TX_Q046 'Consulta pública/eleição.'
  TX_Q047 'Nenhum critério técnico.'
  TX_Q048 'Titulação acadêmica.'
  TX_Q049 'Participação/aprovação em curso de formação para diretor(a) escolar.'
  TX_Q050 'Tempo de serviço.'
  TX_Q051 'Experiência em gestão.'
  TX_Q052 'Os critérios utilizados para o provimento ao cargo, ou função, de diretor(a) de escola estão definidos em legislação municipal?'
  TX_Q053 'O município possui legislação que disciplina a gestão democrática da educação pública?'
  TX_Q054 'Conteúdo e compreensão dos conceitos da(s) área(s) de ensino.'
  TX_Q055 'Avaliação da aprendizagem.'
  TX_Q056 'Avaliação em larga escala.'
  TX_Q057 'Metodologias de ensino.'
  TX_Q058 'Base Nacional Comum Curricular – BNCC.'
  TX_Q059 'Gestão da sala de aula.'
  TX_Q060 'Educação especial.'
  TX_Q061 'Novas tecnologias educacionais.'
  TX_Q062 'Gestão e administração escolar.'
  TX_Q063 'Ensino híbrido.'
  TX_Q064 'Alfabetização e letramento.'
  TX_Q065 'Gestão democrática.'
  TX_Q066 'Outros.'
  TX_Q067 'Descreva outros cursos de formação continuada.'
  TX_Q068 'Construção de escolas.'
  TX_Q069 'Reforma de escolas (melhoria e/ou adequação do espaço físico etc.).'
  TX_Q070 'Aquisição de mobiliário para as escolas (carteiras, armários etc.).'
  TX_Q071 'Aquisição de material de higiene, limpeza e equipamento de proteção individual (álcool, sabonete, máscara etc).'
  TX_Q072 'Aquisição de material pedagógico (livros, software, material audiovisual etc.).'
  TX_Q073 'Aquisição de equipamentos para estudantes e/ou professores (computador, tablet, celular, chip para internet etc.).'
  TX_Q074 'Produção de material didático audiovisual ou impresso.'
  TX_Q075 'Contratação de profissionais para a educação.'
  TX_Q076 'Distribuição da alimentação para os estudantes.'
  TX_Q077 'Formação continuada dos(as) professores(as) da rede.'
  TX_Q078 'Garantia da liberdade religiosa.'
  TX_Q079 'Inclusão das pessoas público-alvo da educação especial.'
  TX_Q080 'Combate ao abuso e à violência sexual.'
  TX_Q081 'Combate ao preconceito ou à discriminação baseada no sexo ou no gênero.'
  TX_Q082 'Combate ao racismo.'
  TX_Q083 'Mediação de conflitos ou problemas de relacionamento na escola.'
  TX_Q084 'Combate ao bullying e outras formas de violência.'
  TX_Q085 'Promoção da cultura da paz e da não violência.'
  TX_Q086 'Levantamento de conhecimentos prévios dos estudantes antes de iniciar um conteúdo curricular.'
  TX_Q087 'Apresentação aos estudantes do currículo e das atividades a serem executadas.'
  TX_Q088 'Incentivo aos estudantes para perguntar, comentar, sugerir e divergir durante as aulas.'
  TX_Q089 'Estímulo aos estudantes para dialogar e tirar dúvidas com colegas durante as aulas.'
  TX_Q090 'Organização de trabalhos em grupo nas aulas.'
  TX_Q091 'Diversificação das metodologias de ensino conforme as dificuldades que os(as) estudantes evidenciam.'
  TX_Q092 'A Secretaria de Educação ou Órgão Gestor de Educação possui instituições de Educação Infantil sob sua responsabilidade direta ou indireta?'
  TX_Q093 'Para responder a esta questão, considere os funcionários/servidores que trabalham EXCLUSIVAMENTE na sede da Secretaria de Educação ou do Órgão Gestor de Educação. Quantos servidores/funcionários SEM FUNÇÕES DOCENTES (cf. dic.)'
  TX_Q094 'Para a EDUCAÇÃO INFANTIL, o município possui: Cálculo da demanda por vagas?'
  TX_Q095 'Para a EDUCAÇÃO INFANTIL, o município possui: Supervisão escolar?'
  TX_Q096 'Para a EDUCAÇÃO INFANTIL, o município possui: Programa de formação de professores?'
  TX_Q097 'Para a EDUCAÇÃO INFANTIL, o município possui: Busca ativa de crianças para a pré-escola?'
  TX_Q098 'Para a EDUCAÇÃO INFANTIL, o município possui: Comitê Intersetorial de Políticas Públicas para a Primeira Infância?'
  TX_Q099 'Para a EDUCAÇÃO INFANTIL, o município possui: Transporte escolar?'
  TX_Q100 'Para a EDUCAÇÃO INFANTIL, o município possui: Ações para atingir metas de matrícula (garantia de acesso)?'
  TX_Q101 'O município possui currículo municipal para a Educação Infantil?'
  TX_Q102 'O currículo municipal da educação infantil está atualizado conforme a BNCC - Base Nacional Comum Curricular?'
  TX_Q103 'Creche - Crianças de 0 a 3 anos?'
  TX_Q104 'Pré-escola - Crianças 4 a 5 anos?'
  TX_Q105 'As instituições conveniadas e/ou aquelas que celebram parcerias com o município são selecionadas através de chamada pública?'
  TX_Q106 'Existem normas para o funcionamento das conveniadas e/ou aquelas que celebram parcerias com o município?'
  TX_Q107 'Com relação à maior parte das instituições conveniadas e/ou aquelas que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: Propriedade das instalações.'
  TX_Q108 'Com relação à maior parte das instituições conveniadas e/ou aquelas que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: Manutenção das instalações.'
  TX_Q109 'Com relação à maior parte das instituições conveniadas e/ou aquelas que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: Pagamento dos professores.'
  TX_Q110 'Com relação à maior parte das instituições conveniadas e/ou aquelas que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: Capacitação dos professores.'
  TX_Q111 'Com relação à maior parte das instituições conveniadas e/ou aquelas que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: Fornecimento de recursos pedagógicos.'
  TX_Q112 'Com relação à maior parte das instituições conveniadas e/ou aquelas que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: Oferta de merenda.'
  TX_Q113 'Com relação à maior parte das instituições conveniadas e/ou aquelas que celebram parcerias com o município, indique o principal responsável pelas ações abaixo: Transporte escolar.'
  TX_Q114 'A Secretaria de Educação ou Órgão Gestor de Educação possui escolas de Ensino Fundamental?'
  TX_Q115 'O Ensino Fundamental é oferecido em ciclos?'
  TX_Q116 'A rede municipal de ensino utiliza um sistema apostilado desenvolvido por empresa, ONG ou instituição?'
  TX_Q117 'Para responder a esta questão, considere os funcionários/servidores que trabalham EXCLUSIVAMENTE na sede da Secretaria de Educação ou do Órgão Gestor de Educação. Quantos servidores/funcionários SEM FUNÇÕES DOCENTES (cf. dic.)'
  TX_Q118 'Para o ENSINO FUNDAMENTAL, o município possui: Cálculo da demanda por vagas?'
  TX_Q119 'Para o ENSINO FUNDAMENTAL, o município possui: Supervisão escolar?'
  TX_Q120 'Para o ENSINO FUNDAMENTAL, o município possui: Programa de formação de professores?'
  TX_Q121 'Para o ENSINO FUNDAMENTAL, o município possui: Busca ativa de crianças e jovens para o Ensino Fundamental?'
  TX_Q122 'Para o ENSINO FUNDAMENTAL, o município possui: Transporte escolar?'
  TX_Q123 'Para o ENSINO FUNDAMENTAL, o município possui: Ações para atingir metas de matrícula (garantia de acesso)?'
  TX_Q124 'O município possui currículo municipal para o Ensino Fundamental?'
  TX_Q125 'O currículo municipal está atualizado conforme a BNCC – Base Nacional Comum Curricular?'
  TX_Q126 'Auxiliares e assistentes da Educação Infantil.'
  TX_Q127 'Professores(as) da Educação Infantil.'
  TX_Q128 'Professores(as) do Ensino Fundamental.'
  TX_Q129 'Profissionais não docentes.'
  TX_Q130 'Até 20 horas semanais.'
  TX_Q131 'De 21 a 30 horas semanais.'
  TX_Q132 'De 31 a 40 horas semanais.'
  TX_Q133 'Mais de 40 horas semanais.'
  TX_Q134 'Para os(as) professores(as), está previsto o limite máximo de 2/3 da jornada de trabalho semanal em sala de aula?'
  TX_Q135 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Tempo de efetivo exercício no cargo.'
  TX_Q136 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Qualificação.'
  TX_Q137 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Titulação.'
  TX_Q138 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Assiduidade.'
  TX_Q139 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Avaliação de desempenho.'
  TX_Q140 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Prova de conhecimentos para professores.'
  TX_Q141 'Quais critérios de progressão ou promoção são utilizados no plano de carreira do magistério? Desempenho dos alunos em avaliações externas.'
  TX_Q142 'Para os(as) professores(as) com jornada de trabalho de 40 HORAS SEMANAIS, o VENCIMENTO INICIAL é igual ou superior a R$ 4.420,55?'
  TX_Q143 'O VENCIMENTO INICIAL dos(as) professores(as) de EDUCAÇÃO INFANTIL, comparado com o dos(as) professores(as) do Ensino Fundamental:'
  TX_Q144 'A Secretaria utiliza os resultados do IDEB?'
  TX_Q145 'Indique o grau de importância que tem o Ideb para que a Secretaria de Educação ou Órgão Gestor de Educação do seu município possa desenvolver cada uma das seguintes ações: Coletar informações para a formação continuada de professores.'
  TX_Q146 'Indique o grau de importância que tem o Ideb para que a Secretaria de Educação ou Órgão Gestor de Educação do seu município possa desenvolver cada uma das seguintes ações: Avaliar programas ou projetos da Secretaria (cf. dic.)'
  TX_Q147 'Indique o grau de importância que tem o Ideb para que a Secretaria de Educação ou Órgão Gestor de Educação do seu município possa desenvolver cada uma das seguintes ações: Produzir materiais didáticos e pedagógicos (cf. dic.)'
  TX_Q148 'Indique o grau de importância que tem o Ideb para que a Secretaria de Educação ou Órgão Gestor de Educação do seu município possa desenvolver cada uma das seguintes ações: Adquirir materiais didáticos e pedagógicos (cf. dic.)'
  TX_Q149 'Indique o grau de importância que tem o Ideb para que a Secretaria de Educação ou Órgão Gestor de Educação do seu município possa desenvolver cada uma das seguintes ações: Premiar escolas com melhores resultados.'
  TX_Q150 'Indique o grau de importância que tem o Ideb para que a Secretaria de Educação ou Órgão Gestor de Educação do seu município possa desenvolver cada uma das seguintes ações: Desenvolver ações pedagógicas voltadas (cf. dic.)'
  TX_Q151 'Indique o grau de importância que tem o Ideb para que a Secretaria de Educação ou Órgão Gestor de Educação do seu município possa desenvolver cada uma das seguintes ações: Definir pagamento de bonificação para professores.'
  TX_Q152 'Indique o grau de importância que tem o Ideb para que a Secretaria de Educação ou Órgão Gestor de Educação do seu município possa desenvolver cada uma das seguintes ações: Definir remanejamento de diretores.'
  TX_Q153 'Indique o grau de importância que tem o Ideb para que a Secretaria de Educação ou Órgão Gestor de Educação do seu município possa desenvolver cada uma das seguintes ações: Autoavaliação da rede municipal de ensino.'
  TX_Q154 'O município aplica PROVAS EXTERNAS, preparadas pela Secretaria de Educação ou pelo Órgão Gestor de Educação ou por instituição contratada, aos estudantes da rede municipal?'
  TX_Q155 'Para cada etapa da Educação Básica, indique se são aplicadas, ou não, PROVAS EXTERNAS aos estudantes da rede municipal. Pré-escola'
  TX_Q156 'Quem é responsável por elaborar as PROVAS EXTERNAS aplicadas aos estudantes da pré-escola?'
  TX_Q157 'Indique as etapas da Educação Básica nas quais são aplicadas as provas preparadas pela secretaria ou instituição contratada: Ensino Fundamental – Anos Iniciais'
  TX_Q158 'Quem é responsável por elaborar as PROVAS EXTERNAS aplicadas aos estudantes dos anos iniciais do Ensino Fundamental?'
  TX_Q159 'Indique as etapas da Educação Básica nas quais são aplicadas as provas preparadas pela secretaria ou instituição contratada: Ensino Fundamental - Anos Finais'
  TX_Q160 'Quem é responsável por elaborar as PROVAS EXTERNAS aplicadas aos estudantes dos anos finais do Ensino Fundamental?'
  TX_Q161 'Indique a periodicidade da aplicação das PROVAS EXTERNAS elaboradas pela Secretaria de Educação ou pelo Órgão Gestor de Educação ou por instituição contratada: Mensal'
  TX_Q162 'Indique a periodicidade da aplicação das PROVAS EXTERNAS elaboradas pela Secretaria de Educação ou pelo Órgão Gestor de Educação ou por instituição contratada: Bimestral'
  TX_Q163 'Indique a periodicidade da aplicação das PROVAS EXTERNAS elaboradas pela Secretaria de Educação ou pelo Órgão Gestor de Educação ou por instituição contratada: Trimestral'
  TX_Q164 'Indique a periodicidade da aplicação das PROVAS EXTERNAS elaboradas pela Secretaria de Educação ou pelo Órgão Gestor de Educação ou por instituição contratada: Semestral'
  TX_Q165 'Indique a periodicidade da aplicação das PROVAS EXTERNAS elaboradas pela Secretaria de Educação ou pelo Órgão Gestor de Educação ou por instituição contratada: Anual'
  TX_Q166 'Indique a periodicidade da aplicação das PROVAS EXTERNAS elaboradas pela Secretaria de Educação ou pelo Órgão Gestor de Educação ou por instituição contratada: Bianual'
  TX_Q167 'A Secretaria de Educação ou Órgão Gestor de Educação realiza PERIODICAMENTE monitoramento ou avaliação da sua rede de ensino?'
  TX_Q168 'Para cada uma das ações a seguir, indique se são, ou não, PERIODICAMENTE realizadas para monitorar ou avaliar a sua rede: Autoavaliação das escolas.'
  TX_Q169 'Para cada uma das ações a seguir, indique se são, ou não, PERIODICAMENTE realizadas para monitorar ou avaliar a sua rede: Avaliação do Projeto Pedagógico das escolas.'
  TX_Q170 'Para cada uma das ações a seguir, indique se são, ou não, PERIODICAMENTE realizadas para monitorar ou avaliar a sua rede: Desempenho dos(as) professores(as).'
  TX_Q171 'Para cada uma das ações a seguir, indique se são, ou não, PERIODICAMENTE realizadas para monitorar ou avaliar a sua rede: Desempenho dos(as) diretores(as) das escolas.'
  TX_Q172 'Para cada uma das ações a seguir, indique se são, ou não, PERIODICAMENTE realizadas para monitorar ou avaliar a sua rede: Infraestrutura das escolas.'
  TX_Q173 'Para cada uma das ações a seguir, indique se são, ou não, PERIODICAMENTE realizadas para monitorar ou avaliar a sua rede: Transporte escolar.'
  TX_Q174 'Para cada uma das ações a seguir, indique se são, ou não, PERIODICAMENTE realizadas para monitorar ou avaliar a sua rede: Merenda escolar.'
  TX_Q175 'Para cada uma das ações a seguir, indique se são, ou não, PERIODICAMENTE realizadas para monitorar ou avaliar a sua rede: Organização administrativa das escolas.'
  TX_Q176 'Sugestões de melhoria para o instrumento (inclusão de temas, estrutura do questionário etc.)'
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
    /IN_PREENCHIMENTO
        0  'Não preenchido'
        1  'Preenchido parcial ou totalmente'
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
        'A' 'Ensino Fundamental'
        'B' 'Ensino Médio'
        'C' 'Graduação'
        'D' 'Especialização'
        'E' 'Mestrado'
        'F' 'Doutorado'
    /TX_Q009
        'A' 'Não'
        'B' 'Sim'
    /TX_Q010
        'A' 'Não'
        'B' 'Sim'
    /TX_Q011
        'A' 'Não'
        'B' 'Sim'
    /TX_Q012
        'A' 'Não'
        'B' 'Sim'
    /TX_Q013
        'A' 'Não'
        'B' 'Sim'
    /TX_Q014
        'A' 'Não'
        'B' 'Sim'
    /TX_Q015
        'A' 'Não'
        'B' 'Sim'
    /TX_Q016
        'A' 'Não'
        'B' 'Sim'
    /TX_Q017
        'A' 'Não'
        'B' 'Sim'
    /TX_Q020
        'A' 'Não'
        'B' 'Sim'
    /TX_Q021
        'A' 'Não'
        'B' 'Sim'
    /TX_Q022
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q023
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q024
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q025
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q026
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q027
        'A' 'Não'
        'B' 'Sim'
    /TX_Q028
        'A' 'Não'
        'B' 'Sim'
    /TX_Q029
        'A' 'Não'
        'B' 'Sim'
    /TX_Q030
        'A' 'Não'
        'B' 'Sim'
    /TX_Q031
        'A' 'Não'
        'B' 'Sim'
    /TX_Q034
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q035
        'A' 'Não'
        'B' 'Sim'
    /TX_Q036
        'A' 'Não'
        'B' 'Sim'
    /TX_Q037
        'A' 'Não'
        'B' 'Sim'
    /TX_Q038
        'A' 'Não'
        'B' 'Sim'
    /TX_Q039
        'A' 'Não'
        'B' 'Sim'
    /TX_Q040
        'A' 'Não'
        'B' 'Sim'
    /TX_Q041
        'A' 'Não'
        'B' 'Sim'
    /TX_Q042
        'A' 'Não'
        'B' 'Sim'
    /TX_Q043
        'A' 'Não'
        'B' 'Sim'
    /TX_Q044
        'A' 'Não'
        'B' 'Sim'
    /TX_Q045
        'A' 'Não'
        'B' 'Sim'
    /TX_Q046
        'A' 'Não'
        'B' 'Sim'
    /TX_Q047
        'A' 'Não'
        'B' 'Sim'
    /TX_Q048
        'A' 'Não'
        'B' 'Sim'
    /TX_Q049
        'A' 'Não'
        'B' 'Sim'
    /TX_Q050
        'A' 'Não'
        'B' 'Sim'
    /TX_Q051
        'A' 'Não'
        'B' 'Sim'
    /TX_Q052
        'A' 'Sim, a legislação contempla todos os critérios utilizados'
        'B' 'Sim, a legislação contempla uma parte dos critérios utilizados'
        'C' 'Não, não há legislação municipal para escolha dos(as) diretores(as)'
    /TX_Q053
        'A' 'Não sei'
        'B' 'Não'
        'C' 'Sim'
    /TX_Q054
        'A' 'Não'
        'B' 'Sim'
    /TX_Q055
        'A' 'Não'
        'B' 'Sim'
    /TX_Q056
        'A' 'Não'
        'B' 'Sim'
    /TX_Q057
        'A' 'Não'
        'B' 'Sim'
    /TX_Q058
        'A' 'Não'
        'B' 'Sim'
    /TX_Q059
        'A' 'Não'
        'B' 'Sim'
    /TX_Q060
        'A' 'Não'
        'B' 'Sim'
    /TX_Q061
        'A' 'Não'
        'B' 'Sim'
    /TX_Q062
        'A' 'Não'
        'B' 'Sim'
    /TX_Q063
        'A' 'Não'
        'B' 'Sim'
    /TX_Q064
        'A' 'Não'
        'B' 'Sim'
    /TX_Q065
        'A' 'Não'
        'B' 'Sim'
    /TX_Q066
        'A' 'Não'
        'B' 'Sim'
    /TX_Q078
        'A' 'Não'
        'B' 'Sim'
    /TX_Q079
        'A' 'Não'
        'B' 'Sim'
    /TX_Q080
        'A' 'Não'
        'B' 'Sim'
    /TX_Q081
        'A' 'Não'
        'B' 'Sim'
    /TX_Q082
        'A' 'Não'
        'B' 'Sim'
    /TX_Q083
        'A' 'Não'
        'B' 'Sim'
    /TX_Q084
        'A' 'Não'
        'B' 'Sim'
    /TX_Q085
        'A' 'Não'
        'B' 'Sim'
    /TX_Q086
        'A' 'Não'
        'B' 'Sim'
    /TX_Q087
        'A' 'Não'
        'B' 'Sim'
    /TX_Q088
        'A' 'Não'
        'B' 'Sim'
    /TX_Q089
        'A' 'Não'
        'B' 'Sim'
    /TX_Q090
        'A' 'Não'
        'B' 'Sim'
    /TX_Q091
        'A' 'Não'
        'B' 'Sim'
    /TX_Q092
        'A' 'Não'
        'B' 'Sim'
    /TX_Q094
        'A' 'Não'
        'B' 'Sim'
    /TX_Q095
        'A' 'Não'
        'B' 'Sim'
    /TX_Q096
        'A' 'Não'
        'B' 'Sim'
    /TX_Q097
        'A' 'Não'
        'B' 'Sim'
    /TX_Q098
        'A' 'Não'
        'B' 'Sim'
    /TX_Q099
        'A' 'Não'
        'B' 'Sim'
    /TX_Q100
        'A' 'Não'
        'B' 'Sim'
    /TX_Q101
        'A' 'Não'
        'B' 'Sim'
    /TX_Q102
        'A' 'Não'
        'B' 'Sim'
    /TX_Q103
        'A' 'Não'
        'B' 'Sim'
    /TX_Q104
        'A' 'Não'
        'B' 'Sim'
    /TX_Q105
        'A' 'Não'
        'B' 'Sim'
    /TX_Q106
        'A' 'Não'
        'B' 'Sim'
    /TX_Q107
        'A' 'Município'
        'B' 'Instituições'
    /TX_Q108
        'A' 'Município'
        'B' 'Instituições'
    /TX_Q109
        'A' 'Município'
        'B' 'Instituições'
    /TX_Q110
        'A' 'Município'
        'B' 'Instituições'
    /TX_Q111
        'A' 'Município'
        'B' 'Instituições'
    /TX_Q112
        'A' 'Município'
        'B' 'Instituições'
    /TX_Q113
        'A' 'Município'
        'B' 'Instituições'
    /TX_Q114
        'A' 'Não'
        'B' 'Sim'
    /TX_Q115
        'A' 'Não'
        'B' 'Sim'
    /TX_Q116
        'A' 'Não'
        'B' 'Sim'
    /TX_Q118
        'A' 'Não'
        'B' 'Sim'
    /TX_Q119
        'A' 'Não'
        'B' 'Sim'
    /TX_Q120
        'A' 'Não'
        'B' 'Sim'
    /TX_Q121
        'A' 'Não'
        'B' 'Sim'
    /TX_Q122
        'A' 'Não'
        'B' 'Sim'
    /TX_Q123
        'A' 'Não'
        'B' 'Sim'
    /TX_Q124
        'A' 'Não'
        'B' 'Sim'
    /TX_Q125
        'A' 'Não'
        'B' 'Sim'
    /TX_Q126
        'A' 'Não'
        'B' 'Sim'
        'C' 'Não se aplica'
    /TX_Q127
        'A' 'Não'
        'B' 'Sim'
        'C' 'Não se aplica'
    /TX_Q128
        'A' 'Não'
        'B' 'Sim'
        'C' 'Não se aplica'
    /TX_Q129
        'A' 'Não'
        'B' 'Sim'
        'C' 'Não se aplica'
    /TX_Q130
        'A' 'Não'
        'B' 'Sim'
    /TX_Q131
        'A' 'Não'
        'B' 'Sim'
    /TX_Q132
        'A' 'Não'
        'B' 'Sim'
    /TX_Q133
        'A' 'Não'
        'B' 'Sim'
    /TX_Q134
        'A' 'Não'
        'B' 'Sim'
    /TX_Q135
        'A' 'Não'
        'B' 'Sim'
    /TX_Q136
        'A' 'Não'
        'B' 'Sim'
    /TX_Q137
        'A' 'Não'
        'B' 'Sim'
    /TX_Q138
        'A' 'Não'
        'B' 'Sim'
    /TX_Q139
        'A' 'Não'
        'B' 'Sim'
    /TX_Q140
        'A' 'Não'
        'B' 'Sim'
    /TX_Q141
        'A' 'Não'
        'B' 'Sim'
    /TX_Q142
        'A' 'Não'
        'B' 'Sim'
    /TX_Q143
        'A' 'É inferior ao dos(as) professores(as) do Ensino Fundamental'
        'B' 'É equivalente ao dos(as) professores(as) do Ensino Fundamental'
        'C' 'É superior ao dos(as) professores(as) do Ensino Fundamental'
        'D' 'Não existe este profissional na rede'
    /TX_Q144
        'A' 'Não'
        'B' 'Sim'
    /TX_Q154
        'A' 'Não'
        'B' 'Sim'
    /TX_Q155
        'A' 'Aplicam-se provas externas'
        'B' 'Não se aplicam provas externas'
    /TX_Q156
        'A' 'Secretaria de Educação ou Órgão Gestor de Educação'
        'B' 'Instituição contratada'
    /TX_Q157
        'A' 'Aplicam-se provas externas'
        'B' 'Não se aplicam provas externas'
    /TX_Q158
        'A' 'Secretaria de Educação ou Órgão Gestor de Educação'
        'B' 'Instituição contratada'
    /TX_Q159
        'A' 'Aplicam-se provas externas'
        'B' 'Não se aplicam provas externas'
    /TX_Q160
        'A' 'Secretaria de Educação ou Órgão Gestor de Educação'
        'B' 'Instituição contratada'
    /TX_Q161
        'A' 'Não'
        'B' 'Sim'
    /TX_Q162
        'A' 'Não'
        'B' 'Sim'
    /TX_Q163
        'A' 'Não'
        'B' 'Sim'
    /TX_Q164
        'A' 'Não'
        'B' 'Sim'
    /TX_Q165
        'A' 'Não'
        'B' 'Sim'
    /TX_Q166
        'A' 'Não'
        'B' 'Sim'
    /TX_Q167
        'A' 'Não'
        'B' 'Sim'
    /TX_Q168
        'A' 'Não'
        'B' 'Sim'
    /TX_Q169
        'A' 'Não'
        'B' 'Sim'
    /TX_Q170
        'A' 'Não'
        'B' 'Sim'
    /TX_Q171
        'A' 'Não'
        'B' 'Sim'
    /TX_Q172
        'A' 'Não'
        'B' 'Sim'
    /TX_Q173
        'A' 'Não'
        'B' 'Sim'
    /TX_Q174
        'A' 'Não'
        'B' 'Sim'
    /TX_Q175
        'A' 'Não'
        'B' 'Sim'.



