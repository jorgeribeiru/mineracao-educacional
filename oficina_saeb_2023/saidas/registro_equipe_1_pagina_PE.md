# Registro da Equipe — Oficina de Exploração do Saeb 2023

**Integrantes:** _(preencher nomes da equipe)_  
**Edição e Recorte:** Saeb 2023 · 9º ano do Ensino Fundamental (`TS_ALUNO_9EF.csv`) · **Pernambuco (PE, `ID_UF = 26`)** · **109,542 estudantes** em **1,450 escolas** e **185 municípios mascarados** (`1 linha = 1 estudante`).

---

## 1. As 5 Variáveis e Primeira Evidência (PE — Saeb 2023)

| Coluna | O que registra | Resumo no Recorte (PE) | Ausências / Códigos Especiais |
|---|---|---|---|
| `TX_RESP_Q07a` | Mora com mãe ou madrasta | **Sim:** 87,9% · **Não:** 12,1% _(válidos = 90.355)_ | Branco (`.`): 18.297 · Nulo (`*`): 890 |
| `TX_RESP_Q07b` | Mora com pai ou padrasto | **Sim:** 68,5% · **Não:** 31,5% _(válidos = 86.232)_ | Branco (`.`): 22.820 · Nulo (`*`): 490 |
| `TX_RESP_Q13b` | Rede Wi-Fi em casa | **Sim:** 91,0% · **Não:** 9,0% _(válidos = 90.322)_ | Branco (`.`): 18.642 · Nulo (`*`): 578 |
| `NU_TIPO_NIVEL_INSE` | Nível Socioeconômico (1 a 8) | Concentração nos Níveis II–V (87,2%) _(válidos `IN_INSE=1` = 91.362)_ | `IN_INSE = 0` (não calculado): 18.180 |
| `PROFICIENCIA_MT_SAEB` | Proficiência em Matemática | **N válidos:** 96.313 · **Média:** 248,59 · **Mín:** 108,84 · **Máx:** 419,96 _(ponderada: 255,14)_ | Ausentes (`NaN`): 13.229 (12,1%) |

- **Presença dos pais × Matemática (`N = 84.457`):** Com pai e com mãe = **253,36** (65,2%) · Sem pai e com mãe = **250,62** (22,5%) · Com pai e sem mãe = **243,12** (3,3%) · Sem pai e sem mãe = **240,60** (9,0%; **−12,76 pts**).
- **Wi-Fi em casa × Matemática:** Com Wi-Fi = **250,38** (`N = 81.922`) vs. Sem Wi-Fi = **239,18** (`N = 8.147`) → **+11,20 pts**.

---

## 2. Achado, Dúvida e Limites
- **Achado:** Em Pernambuco (Saeb 2023, 9º ano EF), o nível socioeconômico (`NU_TIPO_NIVEL_INSE`) apresenta o maior gradiente em Matemática (**238,75** no Nível 1 até **287,52** no Nível 8; **+48,77 pts**), seguido pela presença dos pais em casa (**−12,76 pts** para quem não mora com pai nem mãe) e Wi-Fi domiciliar (**+11,20 pts**). Mesmo dentro do mesmo nível do INSE, estudantes sem mãe em casa (*Com pai e sem mãe* e *Sem pai e sem mãe*) mantêm médias inferiores.
- **Dúvida:** Ao aplicar `PESO_ALUNO_MT` e controlar simultaneamente por `NU_TIPO_NIVEL_INSE`, `TX_RESP_Q13b` e localização (`ID_LOCALIZACAO`), quanto da diferença em Matemática permanece associada à ausência parental?
- **Limites:** (1) Diferenças entre grupos não provam causalidade; (2) `Q07a`/`Q07b` medem coabitação (incluem madrasta/padrasto) e não estado civil dos pais; (3) médias simples descrevem o recorte — estimativas populacionais exigem `PESO_ALUNO_MT`; (4) códigos de escola/município no Saeb são mascarados (`6...`, LGPD), impedindo cruzamento direto por escola com o Censo Escolar 2023.

---

## 3. Duas Perguntas para Continuar, Prioridade e Primeira Ação
1. **[PRIORIDADE]** *Como varia a proficiência em Matemática (`PROFICIENCIA_MT_SAEB`) entre os quatro perfis de presença dos pais (`TX_RESP_Q07a`, `TX_RESP_Q07b`) e acesso a Wi-Fi (`TX_RESP_Q13b`) dentro de cada nível do `NU_TIPO_NIVEL_INSE` em PE, usando `PESO_ALUNO_MT`?*  
   - *Motivação / Recorte / Fonte:* Separar o peso do contexto familiar e da conectividade do efeito socioeconômico; PE (9º EF, Saeb 2023, `IN_INSE=1`); fonte: `TS_ALUNO_9EF.csv`.
2. *A desigualdade em Matemática associada à falta de Wi-Fi (`TX_RESP_Q13b`) e ao `NU_TIPO_NIVEL_INSE` é maior na zona rural que na urbana em PE, e como isso dialoga com a infraestrutura escolar do Censo Escolar 2023?*  
   - *Motivação / Recorte / Fonte:* Conectar a *Escada Tecnológica* do Censo ao Saeb; PE (2023); fontes: `TS_ALUNO_9EF.csv` e `microdados_ed_basica_2023.csv`. *Pendência de compatibilidade:* comparar apenas por agregações compatíveis (UF, Urbana/Rural, Pública/Privada), pois `ID_ESCOLA` e `ID_MUNICIPIO` são mascarados no Saeb.

- **Justificativa da prioridade:** A Pergunta 1 usa uma única base (`TS_ALUNO_9EF.csv`), testa diretamente as 5 variáveis escolhidas com peso amostral e independe do cruzamento de chaves mascaradas.
- **Primeira ação:** Validar o cálculo ponderado com `PESO_ALUNO_MT` por faixa de `NU_TIPO_NIVEL_INSE` e auditar o perfil das não respostas em `Q07a`, `Q07b` e `Q13b`.
