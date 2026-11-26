/*************************************************************************************************** */
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação-Geral de Medidas da Educação Básica (CGMEB) 	                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_DIRETOR.sps                                                                 */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DO QUESTIONÁRIO DO DIRETOR        */
/*                     DO SAEB 2023                                                                                */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* TS_DIRETOR.CSV no diretório C:\ do computador.	                        	 */
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
  /FILE="C:\TS_DIRETOR.csv"
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
  IN_PREENCHIMENTO_QUESTIONARIO F1.0
  ID_SERIE F2.0
  ESTRATO F9.0
  VL_PESO_ESCOLA COMMA12.7
  TX_Q001 A1
  TX_Q002 A1
  TX_Q003 A1
  TX_Q004 A1
  TX_Q005 A1
  TX_Q006 A1
  TX_Q007 A1
  TX_Q008 F2.0
  TX_Q009 A1
  TX_Q010 A1
  TX_Q011 A1
  TX_Q012 A1
  TX_Q013 A1
  TX_Q014 A1
TX_Q015_A F2.0
  TX_Q015_B A1
  TX_Q016 F2.0
  TX_Q017 F2.0
  TX_Q018 F2.0
  TX_Q019 F2.0
  TX_Q020 F2.0  
  TX_Q021 F2.0
  TX_Q022 F2.0
  TX_Q023 F2.0
  TX_Q024 F2.0
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
  TX_Q089 A1308
  TX_Q090 F3.0
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
  TX_Q107 A1
  TX_Q108 A1
  TX_Q109 A1
  TX_Q110 A1
  TX_Q111 F2.0
  TX_Q112 A1
  TX_Q113 F2.0
  TX_Q114 F2.0
  TX_Q115 A1
  TX_Q116 F2.0
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
  TX_Q148 A1
  TX_Q149 A1
  TX_Q150 A1
  TX_Q151 A1
  TX_Q152 A1
  TX_Q153 A1
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
  TX_Q168 A2496
  TX_Q169 A1
  TX_Q170 A1
  TX_Q171 A1
  TX_Q172 A1
  TX_Q173 A1
  TX_Q174 A1
  TX_Q175 A1
  TX_Q176 A1
  TX_Q177 A1
  TX_Q178 A1
  TX_Q179 A1
  TX_Q180 A1
  TX_Q181 A1
  TX_Q182 A1
  TX_Q183 A1
  TX_Q184 A1
  TX_Q185 A1
  TX_Q186 A1
  TX_Q187 A1
  TX_Q188 A1
  TX_Q189 A1
  TX_Q190 A1
  TX_Q191 A1
  TX_Q192 A1
  TX_Q193 A1
  TX_Q194 A1
  TX_Q195 A1
  TX_Q196 A1
  TX_Q197 A1
  TX_Q198 A1
  TX_Q199 A1
  TX_Q200 A1
  TX_Q201 A1
  TX_Q202 A1
  TX_Q203 A1
  TX_Q204 A1
  TX_Q205 A1
  TX_Q206 A1
  TX_Q207 A1
  TX_Q208 A1
  TX_Q209 A1
  TX_Q210 A1
  TX_Q211 A6749
  TX_Q212 A1
  TX_Q213 A1
  TX_Q214 A1
  TX_Q215 A1
  TX_Q216 A1
  TX_Q217 A1
  TX_Q218 A1
  TX_Q219 A1
  TX_Q220 A1
  TX_Q221 A1
  TX_Q222 A1
  TX_Q223 A1
  TX_Q224 A3436.

VARIABLE LABELS
  ID_SAEB 'Ano de aplicação do Saeb'
  ID_REGIAO 'Código da Região'
  ID_UF 'Código da Unidade da Federação'
  ID_MUNICIPIO 'Máscaras dos Códigos de Municípios (são códigos fictícios)'
  ID_AREA 'Área'
  ID_ESCOLA 'Máscaras dos Códigos de Escola (são códigos fictícios)'
  IN_PUBLICA 'Indica se a escola é pública ou não'
  ID_LOCALIZACAO 'Localização'
  IN_PREENCHIMENTO_QUESTIONARIO 'Indicador de preenchimento do questionário'
  ID_SERIE 'Ano escolar para o qual a escola participou do Saeb'
  ESTRATO 'Descrição dos estratos'
  VL_PESO_ESCOLA 'Peso da Escola para análise do questionário de Diretor, por ano escolar avaliado'
  TX_Q001 'Educação Infantil - Creche (0 a 3 anos)'
  TX_Q002 'Educação Infantil - Pré-escola (4 e 5 anos)'
  TX_Q003 'Anos Iniciais do Ensino Fundamental'
  TX_Q004 'Anos Finais do Ensino Fundamental'
  TX_Q005 'Ensino Médio'
  TX_Q006 'Sua escola é'
  TX_Q007 'Qual é o seu sexo?'
  TX_Q008 'Qual é a sua idade?'
  TX_Q009 'Qual é a sua cor ou raça?'
  TX_Q010 'Você possui deficiência, transtorno do espectro autista ou superdotação?'
  TX_Q011 'Indique qual a sua condição. Deficiência'
  TX_Q012 'Indique qual a sua condição. Transtorno do espectro autista'
  TX_Q013 'Indique qual a sua condição. Altas habilidades/superdotação'
  TX_Q014 'Qual é o MAIS ALTO nível de escolaridade que você concluiu?'
  TX_Q015_A 'Quanto anos você trabalhou como professor(a) antes de se tornar diretor(a)?'
  TX_Q015_B 'Quanto anos você trabalhou como professor(a) antes de se tornar diretor(a)? Nunca trabalhei'
  TX_Q016 'Há quantos anos você exerce a função de diretor(a) de escola?'
  TX_Q017 'Há quantos anos você é diretor(a) desta escola?'
  TX_Q018 'Em uma semana normal de trabalho, quantas HORAS, no total, você gasta com TODAS as atividades de direção da escola?'
  TX_Q019 'Coordenar a gestão curricular, os métodos de aprendizagem, a avaliação e o planejamento pedagógico'
  TX_Q020 'Liderar as equipes de trabalho (reunião com professores, delegar tarefas para outros profissionais etc.)'
  TX_Q021 'Gerenciar os recursos financeiros (prestação de contas etc.) e as atividades administrativas (merenda, segurança, manutenção predial etc.)'
  TX_Q022 'Atendimento à comunidade escolar – pais ou responsáveis, professores(as) e estudantes, colaboradores etc.'
  TX_Q023 'Outras atividades'
  TX_Q024 'Qual a sua carga horária semanal total de trabalho como diretor(a)?'
  TX_Q025 'Qual é o seu salário bruto como diretor(a)?'
  TX_Q026 'Você possui outra atividade remunerada?'
  TX_Q027 'Repetir de ano é bom para o(a) estudante que não apresentou desempenho satisfatório'
  TX_Q028 'As avaliações externas (municipais, estaduais ou federais) têm direcionado o que deve ser ensinado'
  TX_Q029 'As avaliações externas (federais, estaduais ou municipais) têm ajudado a melhorar o processo de ensino e aprendizagem'
  TX_Q030 'A maioria dos estudantes da escola apresenta problemas de aprendizagem'
  TX_Q031 'Eu acredito que a totalidade dos(as) estudantes da escola são capazes de concluir a Educação Básica e prosseguir seus estudos'
  TX_Q032 'Televisão'
  TX_Q033 'Projetor multimídia (datashow)'
  TX_Q034 'Computador (de mesa ou portátil)'
  TX_Q035 'Softwares educacionais'
  TX_Q036 'Internet banda larga'
  TX_Q037 'Recursos pedagógicos para atendimento educacional especializado'
  TX_Q038 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Bebedouro ao alcance das crianças'
  TX_Q039 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Chuveiro para as crianças'
  TX_Q040 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Área sombreada'
  TX_Q041 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Área externa coberta'
  TX_Q042 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Vegetação e jardim'
  TX_Q043 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Horta'
  TX_Q044 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Tanque de areia'
  TX_Q045 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Gira-gira'
  TX_Q046 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Gangorra'
  TX_Q047 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Escorregador'
  TX_Q048 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Casinha'
  TX_Q049 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Balanço'
  TX_Q050 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Brinquedo para escalar'
  TX_Q051 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Banheiro infantil'
  TX_Q052 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Espaço destinado à amamentação'
  TX_Q053 'Avalie, abaixo, as condições dos EQUIPAMENTOS da sua escola: Condições para armazenamento de leite materno'
  TX_Q054 'Caso sua escola ofereça Ensino Fundamental e/ou Médio, a área externa (pátio, área verde e parque) é utilizada em horários diferenciados pelos(as) alunos(as) da Educação Infantil?'
  TX_Q055 'Os recursos financeiros foram suficientes'
  TX_Q056 'Houve atraso no repasse de recursos financeiros para pagamento de pessoal'
  TX_Q057 'O quadro de professores estava completo'
  TX_Q058 'Havia quantidade suficiente de pessoal de apoio (serviços gerais)'
  TX_Q059 'Havia quantidade suficiente de pessoal administrativo (secretaria)'
  TX_Q060 'Havia quantidade suficiente de pessoal para apoio pedagógico (coordenador e orientador)'
  TX_Q061 'Recebi apoio da Secretaria de Educação'
  TX_Q062 'Os(As) professores(as) foram assíduos(as)'
  TX_Q063 'As substituições das ausências de professores(as) foram facilmente realizadas'
  TX_Q064 'Os(As) estudantes foram assíduos(as)'
  TX_Q065 'A comunidade apoiou a gestão da escola'
  TX_Q066 'A comunidade executou trabalhos voluntários na escola'
  TX_Q067 'As famílias contribuíram com o trabalho pedagógico.'
  TX_Q068 'Os(As) estudantes com deficiência, transtorno do espectro autista ou com altas habilidades/superdotação receberam atendimento educacional especializado (AEE).'
  TX_Q069 'No início do ano letivo, todos(as) os(as) estudantes receberam os livros didáticos.'
  TX_Q070 'Neste ano, houve a necessidade de profissionais para atendimento educacional especializado?'
  TX_Q071 'Caso tenha havido necessidade, indique se a quantidade de profissionais foi suficiente ou insuficiente para a necessidade da escola. Professor(a) de Braille.'
  TX_Q072 'Caso tenha havido necessidade, indique se a quantidade de profissionais foi suficiente ou insuficiente para a necessidade da escola. Professor(a) bilíngue para surdos.'
  TX_Q073 'Caso tenha havido necessidade, indique se a quantidade de profissionais foi suficiente ou insuficiente para a necessidade da escola. Professor ou Instrutor de Libras'
  TX_Q074 'Caso tenha havido necessidade, indique se a quantidade de profissionais foi suficiente ou insuficiente para a necessidade da escola. Guia-interprete'
  TX_Q075 'Caso tenha havido necessidade, indique se a quantidade de profissionais foi suficiente ou insuficiente para a necessidade da escola. Professor(a) da sala de recursos multifuncionais.'
  TX_Q076 'Caso tenha havido necessidade, indique se a quantidade de profissionais foi suficiente ou insuficiente para a necessidade da escola. Professor(a) itinerante.'
  TX_Q077 'Caso tenha havido necessidade, indique se a quantidade de profissionais foi suficiente ou insuficiente para a necessidade da escola. Monitor(a) de apoio à educação especial.'
  TX_Q078 'Falta de água.'
  TX_Q079 'Falta de energia.'
  TX_Q080 'Falta de merenda.'
  TX_Q081 'Greve de professores.'
  TX_Q082 'Episódios de violência.'
  TX_Q083 'Problemas de infraestrutura predial.'
  TX_Q084 'Paralisação do transporte.'
  TX_Q085 'Eventos climáticos (inundação, desmoronamento etc.).'
  TX_Q086 'Eventos comemorativos.'
  TX_Q087 'Problemas de saúde pública.'
  TX_Q088 'Outros.'
  TX_Q089 '[Descreva os outros problemas].'
  TX_Q090 'Em relação a todas as interrupções que assinalou, por quantos dias o calendário escolar de 2023 foi interrompido?'
  TX_Q091 'Sobre os episódios listados abaixo, indique a frequência com que ocorreram neste ano, nesta escola: Atentado à vida.'
  TX_Q092 'Sobre os episódios listados abaixo, indique a frequência com que ocorreram neste ano, nesta escola: Lesão corporal.'
  TX_Q093 'Sobre os episódios listados abaixo, indique a frequência com que ocorreram neste ano, nesta escola: Roubo ou furto.'
  TX_Q094 'Sobre os episódios listados abaixo, indique a frequência com que ocorreram neste ano, nesta escola: Tráfico de drogas.'
  TX_Q095 'Sobre os episódios listados abaixo, indique a frequência com que ocorreram neste ano, nesta escola: Permanência de pessoas sob efeito de álcool.'
  TX_Q096 'Sobre os episódios listados abaixo, indique a frequência com que ocorreram neste ano, nesta escola: Permanência de pessoas sob efeito de drogas.'
  TX_Q097 'Sobre os episódios listados abaixo, indique a frequência com que ocorreram neste ano, nesta escola: Porte de arma (revólver, faca, canivete).'
  TX_Q098 'Sobre os episódios listados abaixo, indique a frequência com que ocorreram neste ano, nesta escola: Assédio sexual.'
  TX_Q099 'Sobre os episódios listados abaixo, indique a frequência com que ocorreram neste ano, nesta escola: Discriminação (racial, gênero, orientação sexual, econômica/social, deficiência).'
  TX_Q100 'Sobre os episódios listados abaixo, indique a frequência com que ocorreram neste ano, nesta escola: Bullying (ameaças ou ofensas verbais).'
  TX_Q101 'Sobre os episódios listados abaixo, indique a frequência com que ocorreram neste ano, nesta escola: Invasão do espaço escolar.'
  TX_Q102 'Sobre os episódios listados abaixo, indique a frequência com que ocorreram neste ano, nesta escola: Depredação do patrimônio escolar (vandalismo).'
  TX_Q103 'Sobre os episódios listados abaixo, indique a frequência com que ocorreram neste ano, nesta escola: Tiroteio ou bala perdida.'
  TX_Q104 'Condições de segurança na entrada e saída da escola.'
  TX_Q105 'Muros e/ou grades que isolam a escola do ambiente externo.'
  TX_Q106 'Identificação externa que caracterize o prédio como uma instituição escolar.'
  TX_Q107 'O acesso à entrada principal adequado ao público-alvo da educação especial (rampas, marcadores no chão).'
  TX_Q108 'Condições de uso dos equipamentos da área externa de recreação (parque infantil, pátio, quadra poliesportiva).'
  TX_Q109 'O acesso dos(as) estudantes público-alvo da educação especial à área externa de recreação (parque infantil, pátio, quadra poliesportiva).'
  TX_Q110 'Há Conselho Escolar na sua escola?'
  TX_Q111 'Quantas vezes o Conselho Escolar se reuniu neste ano?'
  TX_Q112 'Há Conselho de Classe na sua escola?'
  TX_Q113 'Quantas vezes o Conselho de Classe se reuniu neste ano?'
  TX_Q114 'Quantos estudantes participam do Conselho de Classe?'
  TX_Q115 'Existe Associação de Pais e Mestres – APM (ou caixa escolar) nesta escola?'
  TX_Q116 'Quantas vezes a APM se reuniu neste ano?'
  TX_Q117 'Há grêmio estudantil na sua escola?'
  TX_Q118 'O grêmio estudantil está:'
  TX_Q119 'Com relação à gestão da escola: A escola é militar ou militarizada.'
  TX_Q120 'Com relação à gestão da escola: A escola é confessional ou segue uma orientação religiosa.'
  TX_Q121 'A escola desenvolve REGULARMENTE trabalhos em conjunto com: Serviços de saúde (postos de saúde).'
  TX_Q122 'A escola desenvolve REGULARMENTE trabalhos em conjunto com: Serviços de assistência social (CRAS e outros).'
  TX_Q123 'A escola desenvolve REGULARMENTE trabalhos em conjunto com: Segurança pública (polícia militar, guarda municipal e outros).'
  TX_Q124 'A escola desenvolve REGULARMENTE trabalhos em conjunto com: Conselho Tutelar (Ministério Público e outros).'
  TX_Q125 'A escola desenvolve REGULARMENTE trabalhos em conjunto com: Instituições de apoio ao público-alvo da educação especial (Apae).'
  TX_Q126 'A escola desenvolve REGULARMENTE trabalhos em conjunto com: Instituições de ensino superior (faculdades, universidades, IFs).'
  TX_Q127 'A escola desenvolve REGULARMENTE trabalhos em conjunto com: Instituições privadas (empresas, ONGs, corporações).'
  TX_Q128 'A escola desenvolve REGULARMENTE trabalhos em conjunto com: Outros órgãos da prefeitura ou do governo estadual ou federal.'
  TX_Q129 'Quais as fontes de financiamento da escola? Recursos federais (Programa Dinheiro Direto na Escola etc.).'
  TX_Q130 'Quais as fontes de financiamento da escola? Recursos estaduais ou municipais.'
  TX_Q131 'Quais as fontes de financiamento da escola? Eventos da escola (festa, rifa etc.).'
  TX_Q132 'Quais as fontes de financiamento da escola? Empresas que apoiam a escola.'
  TX_Q133 'Quais as fontes de financiamento da escola? Organizações sem fins lucrativos que apoiam a escola.'
  TX_Q134 'Quais as fontes de financiamento da escola? Contribuições dos familiares dos(as) estudantes.'
  TX_Q135 'Quais as fontes de financiamento da escola? Contribuições dos(as) profissionais da escola.'
  TX_Q136 'Como a escola adquire os seguintes recursos: Brinquedos.'
  TX_Q137 'Como a escola adquire os seguintes recursos: Recursos pedagógicos.'
  TX_Q138 'Como a escola adquire os seguintes recursos: Materiais de higiene pessoal.'
  TX_Q139 'A escola oferece merenda aos(às) estudantes?'
  TX_Q140 'Quantas refeições são oferecidas nesta escola em relação ao tempo de permanência dos(as) estudantes? Para estudantes que permanecem até 4 horas na escola:'
  TX_Q141 'Quantas refeições são oferecidas nesta escola em relação ao tempo de permanência dos(as) estudantes? Para estudantes que permanecem mais que 4 e menos que 7 horas na escola:'
  TX_Q142 'Quantas refeições são oferecidas nesta escola em relação ao tempo de permanência dos(as) estudantes? Para estudantes que permanecem 7 horas ou mais na escola:'
  TX_Q143 'Em relação à merenda escolar, como você avalia os seguintes aspectos: A quantidade de alimentos é suficiente para todos(as).'
  TX_Q144 'Em relação à merenda escolar, como você avalia os seguintes aspectos: Os alimentos são de boa qualidade.'
  TX_Q145 'Em relação à merenda escolar, como você avalia os seguintes aspectos: Há dietas específicas para estudantes com restrições alimentares.'
  TX_Q146 'Em relação à merenda escolar, como você avalia os seguintes aspectos: A cozinha atende as necessidades do preparo da merenda.'
  TX_Q147 'Em relação à merenda escolar, como você avalia os seguintes aspectos: O local de alimentação é adequado.'
  TX_Q148 'Em relação à merenda escolar, como você avalia os seguintes aspectos: O acesso ao local de alimentação é livre para estudantes com mobilidade reduzida.'
  TX_Q149 'Em relação à merenda escolar, como você avalia os seguintes aspectos: Há pias para higienização das mãos próximas ao local de alimentação.'
  TX_Q150 'A merenda escolar é preparada na própria instituição?'
  TX_Q151 'A escola possui Projeto Político-Pedagógico?'
  TX_Q152 'Indique se as situações abaixo se aplicam ou não ao Projeto Político-Pedagógico desta escola. Seu conteúdo é discutido em reuniões?'
  TX_Q153 'Indique se as situações abaixo se aplicam ou não ao Projeto Político-Pedagógico desta escola. Os(As) professores(as) participaram da elaboração?'
  TX_Q154 'Indique se as situações abaixo se aplicam ou não ao Projeto Político-Pedagógico desta escola. Os profissionais não docentes participaram da elaboração?'
  TX_Q155 'Indique se as situações abaixo se aplicam ou não ao Projeto Político-Pedagógico desta escola. Os pais participaram da elaboração?'
  TX_Q156 'Indique se as situações abaixo se aplicam ou não ao Projeto Político-Pedagógico desta escola. Os(As) estudantes participaram da elaboração?'
  TX_Q157 'Indique se as situações abaixo se aplicam ou não ao Projeto Político-Pedagógico desta escola. Estabelece metas de aprendizagem?'
  TX_Q158 'Indique se as situações abaixo se aplicam ou não ao Projeto Político-Pedagógico desta escola. Considera os resultados de avaliações externas (Saeb, estaduais, municipais etc.)?'
  TX_Q159 'Indique se as situações abaixo se aplicam ou não ao Projeto Político-Pedagógico desta escola. Há metas de alcance de indicadores externos (Ideb, índices estaduais ou municipais)?'
  TX_Q160 'Neste ano e nesta escola, todos que solicitaram vagas conseguiram se matricular?'
  TX_Q161 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola: Sorteio.'
  TX_Q162 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola: Local de moradia.'
  TX_Q163 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola: Prova de conhecimentos.'
  TX_Q164 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola: Ordem da inscrição/lista de espera.'
  TX_Q165 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola: Características socioeconômicas.'
  TX_Q166 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola: Desempenho do(a) estudante no ano anterior.'
  TX_Q167 'Quais foram os critérios de seleção para novas matrículas neste ano e nesta escola: Outros critérios definidos pela Secretaria de Educação ou pelo Órgão Gestor de Educação.'
  TX_Q168 'Descreva os critérios.'
  TX_Q169 'Idade.'
  TX_Q170 'Capacidade física da sala de aula.'
  TX_Q171 'Manter estudantes na mesma etapa de ensino.'
  TX_Q172 'Manter as turmas existentes do ano anterior.'
  TX_Q173 'Critérios disciplinares.'
  TX_Q174 'Desempenho escolar.'
  TX_Q175 'Disponibilidade de vagas na turma.'
  TX_Q176 'Ordem da matrícula.'
  TX_Q177 'Atendimento à solicitação dos pais/responsáveis.'
  TX_Q178 'Preferência dos(as) professores(as).'
  TX_Q179 'Tempo de serviço.'
  TX_Q180 'Cursos de formação continuada realizados.'
  TX_Q181 'Professores(as) experientes nas turmas com facilidade de aprendizagem.'
  TX_Q182 'Professores(as) experientes nas turmas com dificuldade de aprendizagem.'
  TX_Q183 'Manutenção do(a) professor(a) com a mesma turma.'
  TX_Q184 'Revezamento dos(as) professores(as) entre séries/anos.'
  TX_Q185 'Atribuição pela gestão da escola.'
  TX_Q186 'Neste ano, a escola realizou as seguintes ações para redução da REPETÊNCIA ESCOLAR? Caso tenham sido realizadas, indique a eficácia das seguintes ações: Oferta de reforço escolar.'
  TX_Q187 'Neste ano, a escola realizou as seguintes ações para redução da REPETÊNCIA ESCOLAR? Oferta de atendimento educacional especializado para estudantes com deficiência, transtornos do espectro autista ou com altas habilidades/superdotação.'
  TX_Q188 'Neste ano, a escola realizou as seguintes ações para redução da REPETÊNCIA ESCOLAR? Os(As) estudantes são estimulados(as) a apoiar uns(umas) aos(às) outros(as).'
  TX_Q189 'Neste ano, a escola realizou as seguintes ações para redução da REPETÊNCIA ESCOLAR? Revisão dos procedimentos de avaliação.'
  TX_Q190 'Neste ano, a escola realizou as seguintes ações para redução da REPETÊNCIA ESCOLAR? Revisão das práticas pedagógicas.'
  TX_Q191 'Neste ano, a escola realizou as seguintes ações para redução do ABANDONO ESCOLAR? Caso tenham sido realizadas, indique a eficácia das seguintes ações: Entrar em contato com os familiares/responsáveis do(a) estudante.'
  TX_Q192 'Neste ano, a escola realizou as seguintes ações para redução do ABANDONO ESCOLAR? Ir à residência do(a) estudante.'
  TX_Q193 'Neste ano, a escola realizou as seguintes ações para redução do ABANDONO ESCOLAR? Informar ao Conselho Tutelar.'
  TX_Q194 'Nesta escola, há projetos com as seguintes temáticas: Ciência e tecnologia.'
  TX_Q195 'Nesta escola, há projetos com as seguintes temáticas: Combate à discriminação (racial, gênero, orientação sexual, econômica/social, deficiência, religiosa).'
  TX_Q196 'Nesta escola, há projetos com as seguintes temáticas: Combate à violência (física, verbal, bullying, entre outras).'
  TX_Q197 'Nesta escola, há projetos com as seguintes temáticas: Direitos humanos (de idosos, pessoas com deficiência, mulheres, crianças, adolescentes e outros).'
  TX_Q198 'Nesta escola, há projetos com as seguintes temáticas: Educação ambiental e consumo sustentável.'
  TX_Q199 'Nesta escola, há projetos com as seguintes temáticas: Educação para o trânsito.'
  TX_Q200 'Nesta escola, há projetos com as seguintes temáticas: Mundo do trabalho (direitos, relações, entre outros).'
  TX_Q201 'Nesta escola, há projetos com as seguintes temáticas: Nutrição e alimentação.'
  TX_Q202 'Nesta escola, há projetos com as seguintes temáticas: Promoção da democracia e da cidadania.'
  TX_Q203 'Nesta escola, há projetos com as seguintes temáticas: Uso de drogas.'
  TX_Q204 'Nesta escola, há projetos com as seguintes temáticas: Sexualidade.'
  TX_Q205 'Preparação dos(as) estudantes para os testes de avaliação externos.'
  TX_Q206 'Inscrição dos(as) estudantes em olímpiadas de conhecimento.'
  TX_Q207 'Feira de ciências.'
  TX_Q208 'Feira de artes'
  TX_Q209 'Campeonatos esportivos.'
  TX_Q210 'Outros.'
  TX_Q211 '[Descreva os outros tipos de ações.]'
  TX_Q212 'Conteúdo e compreensão dos conceitos da(s) área(s) de ensino.'
  TX_Q213 'Avaliação da aprendizagem.'
  TX_Q214 'Avaliação em larga escala.'
  TX_Q215 'Metodologias de ensino.'
  TX_Q216 'Base Nacional Comum Curricular – BNCC.'
  TX_Q217 'Gestão da sala de aula.'
  TX_Q218 'Educação especial.'
  TX_Q219 'Novas tecnologias educacionais.'
  TX_Q220 'Gestão e administração escolar.'
  TX_Q221 'Ensino híbrido.'
  TX_Q222 'Alfabetização e letramento.'
  TX_Q223 'Gestão democrática.'
  TX_Q224 'Sugestões de melhoria para o instrumento (inclusão de temas, estrutura do questionário etc.)'
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
    /IN_PREENCHIMENTO_QUESTIONARIO
        0'Não preenchido'
        1'Preenchido parcial ou totalmente'
    /ID_SERIE
        2  '2º ano do Ensino Fundamental'
        5  '5º ano do Ensino Fundamental'
        9  '9º ano do Ensino Fundamental'
        12  '3ª/4ª séries do Ensino Médio Tradicional'
        13  '3ª/4ª séries do Ensino Médio Integrado'
 /TX_Q001
        'A' 'Não'
        'B' 'Sim'
    /TX_Q002
        'A' 'Não'
        'B' 'Sim'
    /TX_Q003
        'A' 'Não'
        'B' 'Sim'
    /TX_Q004
        'A' 'Não'
        'B' 'Sim'
    /TX_Q005
        'A' 'Não'
        'B' 'Sim'
    /TX_Q006
        'A' 'Pública'
        'B' 'Privada'
    /TX_Q007
        'A' 'Masculino'
        'B' 'Feminino'
        'C' 'Não quero declarar'
    /TX_Q009
        'A' 'Branca'
        'B' 'Preta'
        'C' 'Parda'
        'D' 'Amarela'
        'E' 'Indígena'
        'F' 'Não quero declarar'
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
        'A' 'Ensino Fundamental'
        'B' 'Ensino Médio'
        'C' 'Graduação'
        'D' 'Especialização'
        'E' 'Mestrado'
        'F' 'Doutorado'
    /TX_Q025
        'A' 'Até R$ 1.320,00'
        'B' 'De R$ 1.320,01 até R$ 2.640,00'
        'C' 'De R$ 2.640,01 até R$ 3.960,00'
        'D' 'De R$ 3.960,01 até R$ 5.280,00'
        'E' 'De R$ 5.280,01 até R$ 6.600,00'
        'F' 'De R$ 6.600,01 até R$ 7.920,00'
        'G' 'De R$ 7.920,01 até R$ 9.240,00'
        'H' 'Acima de R$ 9.240,00'
    /TX_Q026
        'A' 'Não'
        'B' 'Sim'
    /TX_Q027
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q028
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q029
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q030
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q031
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q032
        'A' 'Não tem'
        'B' 'Muito inadequado'
        'C' 'Inadequado'
        'D' 'Adequado'
        'E' 'Muito adequado'
    /TX_Q033
        'A' 'Não tem'
        'B' 'Muito inadequado'
        'C' 'Inadequado'
        'D' 'Adequado'
        'E' 'Muito adequado'
    /TX_Q034
        'A' 'Não tem'
        'B' 'Muito inadequado'
        'C' 'Inadequado'
        'D' 'Adequado'
        'E' 'Muito adequado'
    /TX_Q035
        'A' 'Não tem'
        'B' 'Muito inadequado'
        'C' 'Inadequado'
        'D' 'Adequado'
        'E' 'Muito adequado'
    /TX_Q036
        'A' 'Não tem'
        'B' 'Muito inadequado'
        'C' 'Inadequado'
        'D' 'Adequado'
        'E' 'Muito adequado'
    /TX_Q037
        'A' 'Não tem'
        'B' 'Muito inadequado'
        'C' 'Inadequado'
        'D' 'Adequado'
        'E' 'Muito adequado'
    /TX_Q038
        'A' 'Não tem'
        'B' 'Muito inadequado'
        'C' 'Inadequado'
        'D' 'Adequado'
        'E' 'Muito adequado'
    /TX_Q039
        'A' 'Não tem'
        'B' 'Muito inadequado'
        'C' 'Inadequado'
        'D' 'Adequado'
        'E' 'Muito adequado'
    /TX_Q040
        'A' 'Não tem'
        'B' 'Muito inadequado'
        'C' 'Inadequado'
        'D' 'Adequado'
        'E' 'Muito adequado'
    /TX_Q041
        'A' 'Não tem'
        'B' 'Muito inadequado'
        'C' 'Inadequado'
        'D' 'Adequado'
        'E' 'Muito adequado'
    /TX_Q042
        'A' 'Não tem'
        'B' 'Muito inadequado'
        'C' 'Inadequado'
        'D' 'Adequado'
        'E' 'Muito adequado'
    /TX_Q043
        'A' 'Não tem'
        'B' 'Muito inadequado'
        'C' 'Inadequado'
        'D' 'Adequado'
        'E' 'Muito adequado'
    /TX_Q044
        'A' 'Não tem'
        'B' 'Muito inadequado'
        'C' 'Inadequado'
        'D' 'Adequado'
        'E' 'Muito adequado'
    /TX_Q045
        'A' 'Não tem'
        'B' 'Muito inadequado'
        'C' 'Inadequado'
        'D' 'Adequado'
        'E' 'Muito adequado'
    /TX_Q046
        'A' 'Não tem'
        'B' 'Muito inadequado'
        'C' 'Inadequado'
        'D' 'Adequado'
        'E' 'Muito adequado'
    /TX_Q047
        'A' 'Não tem'
        'B' 'Muito inadequado'
        'C' 'Inadequado'
        'D' 'Adequado'
        'E' 'Muito adequado'
    /TX_Q048
        'A' 'Não tem'
        'B' 'Muito inadequado'
        'C' 'Inadequado'
        'D' 'Adequado'
        'E' 'Muito adequado'
    /TX_Q049
        'A' 'Não tem'
        'B' 'Muito inadequado'
        'C' 'Inadequado'
        'D' 'Adequado'
        'E' 'Muito adequado'
    /TX_Q050
        'A' 'Não tem'
        'B' 'Muito inadequado'
        'C' 'Inadequado'
        'D' 'Adequado'
        'E' 'Muito adequado'
    /TX_Q051
        'A' 'Não tem'
        'B' 'Muito inadequado'
        'C' 'Inadequado'
        'D' 'Adequado'
        'E' 'Muito adequado'
    /TX_Q052
        'A' 'Não tem'
        'B' 'Muito inadequado'
        'C' 'Inadequado'
        'D' 'Adequado'
        'E' 'Muito adequado'
    /TX_Q053
        'A' 'Não tem'
        'B' 'Muito inadequado'
        'C' 'Inadequado'
        'D' 'Adequado'
        'E' 'Muito adequado'
    /TX_Q054
        'A' 'A escola não oferece Ensino Fundamental e/ou Médio'
        'B' 'Os(As) alunos(as) da Educação Infantil utilizam a área externa em horário diferenciado'
        'C' 'Os(As) alunos(as) da Educação Infantil utilizam a área externa no mesmo horário'
    /TX_Q055
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q056
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q057
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q058
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q059
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q060
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q061
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q062
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q063
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q064
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q065
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q066
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q067
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q068
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q069
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q070
        'A' 'Não'
        'B' 'Sim'
    /TX_Q071
        'A' 'Suficiente'
        'B' 'Insuficiente'
    /TX_Q072
        'A' 'Suficiente'
        'B' 'Insuficiente'
    /TX_Q073
        'A' 'Suficiente'
        'B' 'Insuficiente'
    /TX_Q074
        'A' 'Suficiente'
        'B' 'Insuficiente'
    /TX_Q075
        'A' 'Suficiente'
        'B' 'Insuficiente'
    /TX_Q076
        'A' 'Suficiente'
        'B' 'Insuficiente'
    /TX_Q077
        'A' 'Suficiente'
        'B' 'Insuficiente'
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
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q098
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q099
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q100
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q101
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q102
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q103
        'A' 'Nunca'
        'B' 'Poucas vezes'
        'C' 'Muitas vezes'
        'D' 'Sempre'
    /TX_Q104
        'A' 'Muito inadequado'
        'B' 'Inadequado'
        'C' 'Adequado'
        'D' 'Muito adequado'
    /TX_Q105
        'A' 'Muito inadequado'
        'B' 'Inadequado'
        'C' 'Adequado'
        'D' 'Muito adequado'
    /TX_Q106
        'A' 'Muito inadequado'
        'B' 'Inadequado'
        'C' 'Adequado'
        'D' 'Muito adequado'
    /TX_Q107
        'A' 'Muito inadequado'
        'B' 'Inadequado'
        'C' 'Adequado'
        'D' 'Muito adequado'
    /TX_Q108
        'A' 'Muito inadequado'
        'B' 'Inadequado'
        'C' 'Adequado'
        'D' 'Muito adequado'
    /TX_Q109
        'A' 'Muito inadequado'
        'B' 'Inadequado'
        'C' 'Adequado'
        'D' 'Muito adequado'
    /TX_Q110
        'A' 'Não'
        'B' 'Sim'
    /TX_Q112
        'A' 'Não'
        'B' 'Sim'
    /TX_Q115
        'A' 'Não'
        'B' 'Sim'
    /TX_Q117
        'A' 'Não'
        'B' 'Sim'
    /TX_Q118
        'A' 'Ativo'
        'B' 'Inativo'
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
    /TX_Q127
        'A' 'Não'
        'B' 'Sim'
    /TX_Q128
        'A' 'Não'
        'B' 'Sim'
    /TX_Q129
        'A' 'Não'
        'B' 'Sim'
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
        'A' 'Aquisição pela escola'
        'B' 'Doação'
        'C' 'Solicitação às famílias'
    /TX_Q137
        'A' 'Aquisição pela escola'
        'B' 'Doação'
        'C' 'Solicitação às famílias'
    /TX_Q138
        'A' 'Aquisição pela escola'
        'B' 'Doação'
        'C' 'Solicitação às famílias'
    /TX_Q139
        'A' 'Não'
        'B' 'Sim'
    /TX_Q140
        'A' 'Uma vez'
        'B' 'Duas vezes'
        'C' 'Três vezes ou mais'
        'D' 'Não se aplica'
    /TX_Q141
        'A' 'Uma vez'
        'B' 'Duas vezes'
        'C' 'Três vezes ou mais'
        'D' 'Não se aplica'
    /TX_Q142
        'A' 'Uma vez'
        'B' 'Duas vezes'
        'C' 'Três vezes ou mais'
        'D' 'Não se aplica'
    /TX_Q143
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q144
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q145
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q146
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q147
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q148
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q149
        'A' 'Discordo fortemente'
        'B' 'Discordo'
        'C' 'Concordo'
        'D' 'Concordo fortemente'
    /TX_Q150
        'A' 'Não'
        'B' 'Sim'
    /TX_Q151
        'A' 'Não'
        'B' 'Sim'
    /TX_Q152
        'A' 'Não'
        'B' 'Sim'
        'C' 'Não sei'
    /TX_Q153
        'A' 'Não'
        'B' 'Sim'
        'C' 'Não sei'
    /TX_Q154
        'A' 'Não'
        'B' 'Sim'
        'C' 'Não sei'
    /TX_Q155
        'A' 'Não'
        'B' 'Sim'
        'C' 'Não sei'
    /TX_Q156
        'A' 'Não'
        'B' 'Sim'
        'C' 'Não sei'
    /TX_Q157
        'A' 'Não'
        'B' 'Sim'
        'C' 'Não sei'
    /TX_Q158
        'A' 'Não'
        'B' 'Sim'
        'C' 'Não sei'
    /TX_Q159
        'A' 'Não'
        'B' 'Sim'
        'C' 'Não sei'
    /TX_Q160
        'A' 'Não'
        'B' 'Sim'
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
        'B' 'Sim'
    /TX_Q176
        'A' 'Não'
        'B' 'Sim'
    /TX_Q177
        'A' 'Não'
        'B' 'Sim'
    /TX_Q178
        'A' 'Não'
        'B' 'Sim'
    /TX_Q179
        'A' 'Não'
        'B' 'Sim'
    /TX_Q180
        'A' 'Não'
        'B' 'Sim'
    /TX_Q181
        'A' 'Não'
        'B' 'Sim'
    /TX_Q182
        'A' 'Não'
        'B' 'Sim'
    /TX_Q183
        'A' 'Não'
        'B' 'Sim'
    /TX_Q184
        'A' 'Não'
        'B' 'Sim'
    /TX_Q185
        'A' 'Não'
        'B' 'Sim'
    /TX_Q186
        'A' 'Não foi realizada esta ação'
        'B' 'Nada efetiva'
        'C' 'Pouco efetiva'
        'D' 'Efetiva'
        'E' 'Muito efetiva'
    /TX_Q187
        'A' 'Não foi realizada esta ação'
        'B' 'Nada efetiva'
        'C' 'Pouco efetiva'
        'D' 'Efetiva'
        'E' 'Muito efetiva'
    /TX_Q188
        'A' 'Não foi realizada esta ação'
        'B' 'Nada efetiva'
        'C' 'Pouco efetiva'
        'D' 'Efetiva'
        'E' 'Muito efetiva'
    /TX_Q189
        'A' 'Não foi realizada esta ação'
        'B' 'Nada efetiva'
        'C' 'Pouco efetiva'
        'D' 'Efetiva'
        'E' 'Muito efetiva'
    /TX_Q190
        'A' 'Não foi realizada esta ação'
        'B' 'Nada efetiva'
        'C' 'Pouco efetiva'
        'D' 'Efetiva'
        'E' 'Muito efetiva'
    /TX_Q191
        'A' 'Não foi realizada esta ação'
        'B' 'Nada efetiva'
        'C' 'Pouco efetiva'
        'D' 'Efetiva'
        'E' 'Muito efetiva'
    /TX_Q192
        'A' 'Não foi realizada esta ação'
        'B' 'Nada efetiva'
        'C' 'Pouco efetiva'
        'D' 'Efetiva'
        'E' 'Muito efetiva'
    /TX_Q193
        'A' 'Não foi realizada esta ação'
        'B' 'Nada efetiva'
        'C' 'Pouco efetiva'
        'D' 'Efetiva'
        'E' 'Muito efetiva'
    /TX_Q194
        'A' 'Não'
        'B' 'Sim'
    /TX_Q195
        'A' 'Não'
        'B' 'Sim'
    /TX_Q196
        'A' 'Não'
        'B' 'Sim'
    /TX_Q197
        'A' 'Não'
        'B' 'Sim'
    /TX_Q198
        'A' 'Não'
        'B' 'Sim'
    /TX_Q199
        'A' 'Não'
        'B' 'Sim'
    /TX_Q200
        'A' 'Não'
        'B' 'Sim'
    /TX_Q201
        'A' 'Não'
        'B' 'Sim'
    /TX_Q202
        'A' 'Não'
        'B' 'Sim'
    /TX_Q203
        'A' 'Não'
        'B' 'Sim'
    /TX_Q204
        'A' 'Não'
        'B' 'Sim'
    /TX_Q205
        'A' 'Não'
        'B' 'Sim'
    /TX_Q206
        'A' 'Não'
        'B' 'Sim'
    /TX_Q207
        'A' 'Não'
        'B' 'Sim'
    /TX_Q208
        'A' 'Não'
        'B' 'Sim'
    /TX_Q209
        'A' 'Não'
        'B' 'Sim'
    /TX_Q210
        'A' 'Não'
        'B' 'Sim'
    /TX_Q212
        'A' 'Não'
        'B' 'Sim'
    /TX_Q213
        'A' 'Não'
        'B' 'Sim'
    /TX_Q214
        'A' 'Não'
        'B' 'Sim'
    /TX_Q215
        'A' 'Não'
        'B' 'Sim'
    /TX_Q216
        'A' 'Não'
        'B' 'Sim'
    /TX_Q217
        'A' 'Não'
        'B' 'Sim'
    /TX_Q218
        'A' 'Não'
        'B' 'Sim'
    /TX_Q219
        'A' 'Não'
        'B' 'Sim'
    /TX_Q220
        'A' 'Não'
        'B' 'Sim'
    /TX_Q221
        'A' 'Não'
        'B' 'Sim'
    /TX_Q222
        'A' 'Não'
        'B' 'Sim'
    /TX_Q223
        'A' 'Não'
        'B' 'Sim'.

CACHE.
EXECUTE.
DATASET NAME TS_DIRETOR WINDOW=FRONT.
