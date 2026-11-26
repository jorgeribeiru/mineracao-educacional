# Registro da Equipe — Oficina de Exploração do Saeb 2023

**Integrantes:** _(preencher nomes da equipe)_  
**Edição e Recorte:** Saeb 2023 · 9º ano do Ensino Fundamental (`TS_ALUNO_9EF.csv`) · Território: **Pernambuco (PE, `ID_UF = 26`, Região Nordeste)** · Tamanho: **109,542 estudantes** em **1,450 escolas** e **185 municípios mascarados** (`1 linha = 1 estudante`).

---

## 1. Síntese das 5 Variáveis e Primeira Evidência

| Variável | Descrição | Resumo no Recorte (PE) | Ausências / Códigos Especiais |
|---|---|---|---|
| `TX_RESP_Q13b` | Rede Wi-Fi em casa | **Sim:** 91.0% · **Não:** 9.0% _(denominador válido = 90,322)_ | Branco (`.`): 18,642 · Nulo (`*`): 578 |
| `TX_RESP_Q12b` | Computador/notebook em casa | **Nenhum:** 67.4% · **1+:** 32.6% _(denominador válido = 87,081)_ | Branco (`.`): 19,256 · Nulo (`*`): 3,205 |
| `TX_RESP_Q12g` | Smartphone c/ internet em casa | **1+:** 97.8% · **Nenhum:** 2.2% _(denominador válido = 90,797)_ | Branco (`.`): 18,557 · Nulo (`*`): 188 |
| `PROFICIENCIA_MT_SAEB` | Proficiência em Matemática (escala Saeb) | **N válidos:** 96,313 · **Média simples:** 248.59 · **Mín:** 108.84 · **Máx:** 419.96 _(ponderada: 255.14)_ | Ausentes (`NaN`): 13,229 (12.1%) |
| `PROFICIENCIA_LP_SAEB` | Proficiência em Língua Portuguesa (escala Saeb) | **N válidos:** 96,313 · **Média simples:** 250.98 · **Mín:** 125.11 · **Máx:** 379.45 _(ponderada: 257.50)_ | Ausentes (`NaN`): 13,229 (12.1%) |

- **Comparação por Wi-Fi em casa (`TX_RESP_Q13b`):**
  - **Matemática:** Com Wi-Fi = **250.38** (N válido = 81,922) vs. Sem Wi-Fi = **239.18** (N válido = 8,147) → **+11.20 pontos**.
  - **Língua Portuguesa:** Com Wi-Fi = **253.00** (N válido = 81,922) vs. Sem Wi-Fi = **239.10** (N válido = 8,147) → **+13.90 pontos**.

---

## 2. Achado, Dúvida e Limite
- **Achado:** No recorte de Pernambuco (PE) do Saeb 2023 (9º ano EF, N = 109,542 estudantes em 1,450 escolas), 91.0% dos respondentes válidos têm Wi-Fi em casa e 97.8% têm smartphone com internet, mas 67.4% não possuem computador/notebook. Ter Wi-Fi em casa está associado a maiores médias simples tanto em Matemática (250.38 vs. 239.18; diferença de +11.20 pontos; N válidos = 81,922 e 8,147) quanto em Língua Portuguesa (253.00 vs. 239.10; diferença de +13.90 pontos; N válidos = 81,922 e 8,147). Na correlação exploratória de Spearman, possuir computador/notebook mostrou associação mais forte que apenas Wi-Fi (MT: r = 0.111 vs. 0.064; LP: r = 0.123 vs. 0.081).
- **Dúvida:** A não resposta ao questionário (17.0% em branco em TX_RESP_Q13b) e a ausência na prova (12.1% sem nota em MT e 12.1% em LP) podem afetar de forma desigual escolas rurais e estudantes de menor nível socioeconômico? Além disso, quando controlamos pelo INSE (INSE_ALUNO) e aplicamos os pesos amostrais (PESO_ALUNO_MT e PESO_ALUNO_LP), a associação da internet em casa continua maior em Língua Portuguesa ou em Matemática?
- **Limite:** 1) Causalidade: a diferença de proficiência entre estudantes com e sem Wi-Fi/computador não comprova relação causal, pois a conectividade domiciliar está fortemente correlacionada à renda e escolaridade familiar (INSE). 2) Alcance das medidas: médias simples e correlações sem peso descrevem os registros do recorte; estimativas populacionais oficiais exigem o uso de PESO_ALUNO_MT / PESO_ALUNO_LP e critérios de inclusão. 3) Cruzamento com o Censo 2023: devido ao mascaramento LGPD de ID_ESCOLA e ID_MUNICIPIO (iniciados por '6'), o arquivo não permite ligar o estudante diretamente à infraestrutura da mesma escola no Censo Escolar 2023.

---

## 3. Perguntas para Continuar (Matemática vs. Língua Portuguesa), Prioridade e Primeira Ação
1. **[PRIORIDADE] Contexto de Matemática (Saeb 2023):** *Qual é a correlação entre o acesso à internet e dispositivos digitais em casa (`TX_RESP_Q13b`, `TX_RESP_Q12b`, `TX_RESP_Q12g`) e a proficiência em Matemática (`PROFICIENCIA_MT_SAEB`) dos estudantes do 9º ano de Pernambuco, controlando por `INSE_ALUNO`, `ID_LOCALIZACAO` e usando `PESO_ALUNO_MT`?*  
   - *Motivação / Recorte / Fonte:* Verificar se a associação digital se mantém em Matemática após controlar o nível socioeconômico; recorte PE (9º EF, Saeb 2023, `IN_SITUACAO_CENSO = 1`); fonte: `TS_ALUNO_9EF.csv`.
2. **Contexto de Língua Portuguesa (Saeb 2023):** *Qual é a correlação entre o acesso à internet e dispositivos digitais em casa (`TX_RESP_Q13b`, `TX_RESP_Q12b`, `TX_RESP_Q12g`) e a proficiência em Língua Portuguesa (`PROFICIENCIA_LP_SAEB`) dos estudantes do 9º ano de Pernambuco, controlando por `INSE_ALUNO` e usando `PESO_ALUNO_LP`, e como ela difere da observada em Matemática?*  
   - *Motivação / Recorte / Fonte:* Avaliar se o consumo de leitura/textos digitais gera associação distinta em Língua Portuguesa frente à Matemática; mesmo recorte PE (9º EF, Saeb 2023); fonte: `TS_ALUNO_9EF.csv`.

- **Justificativa da prioridade:** Iniciar por **Matemática** (Pergunta 1) prioriza a disciplina com maior defasagem histórica no 9º ano e estabelece a metodologia ponderada e controlada por INSE, que será replicada na sequência para **Língua Portuguesa** (Pergunta 2) com comparabilidade direta.
- **Primeira ação:** Auditar o perfil de ausências (`IN_PRESENCA_MT`, `IN_PRESENCA_LP`, `IN_INSE`), criar uma variável combinada de perfil de conectividade domiciliar (ex.: *Sem internet*, *Só celular*, *Wi-Fi sem PC*, *Wi-Fi + PC*) e validar o cálculo ponderado com `PESO_ALUNO_MT` e `PESO_ALUNO_LP`.
