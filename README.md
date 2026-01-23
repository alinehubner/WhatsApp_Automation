# 🤖📱 Projeto de Automação Mobile

Este repositório contém uma suíte de automação **mobile Android**, organizada por **Page Objects** e preparada para escalar.  
O objetivo é validar fluxos essenciais de aplicativos **WhatsApp** para Cold Start/Warm Start e **Calculadora** para Smoke Test,gerando **relatórios HTML e screenshots**. 

Execução independente de provedor (local e CI/CD) via scripts versionados ; pipeline de referência em GitHub Actions,      
sendo facilmente ajustável para Jenkins, GitLab, Azure, etc.

---

## 📌 Visão Geral do Projeto

#### 🥞 **Stack**
  - **Robot Framework** (test orchestration)
  - **Appium Server 3 + UiAutomator2** (Android driver)
  - **Android SDK + AVD (Emulator)** ou **Device Cloud** (execução)
  - **Python 3.11+**
  - **Node.js LTS** (Appium)

#### 🧱 **Pontos-chave**
> - Arquitetura em **camadas**: `resources/pages` (Page Objects), `resources/support` (keywords/utilidades), `tests/` (suites), `scripts/` (operação).
> - **Desired Capabilities** separadas em `resources/android_caps.resource` para alternar apps/ambientes (emulador local, device cloud).
> - **Relatórios** do Robot (HTML + screenshots) consolidados em `reports/` (**já no `.gitignore`**).
> - **Provider-agnostic**: mesma execução local/CI via **scripts versionados**; template inicial em **GitHub Actions**, com **fácil adaptação** para Jenkins, GitLab, Azure, Bitbucket, etc.

---

## 🗂️ Estrutura do Projeto

```

WhatsApp_Automation/
├─ resources/                         # Tudo reutilizável (caps, páginas, helpers)
│  ├─ android_caps.resource           # CAPS locais (emulador)
│  ├─ android_caps_cloud.resource     # CAPS para device cloud (quando usar)
│  ├─ support/                        # camadas de suporte/utilitários
│  │  ├─ actions.resource             # tap, type, waits, asserções genéricas
│  │  └─ selectors.resource           # padrões de seleção (id/xpath/accessibility)
│  └─ pages/                          # Page Objects (1 tela = 1 arquivo)
│     ├─ BasePage.resource
│     ├─ WhatsAppHome.resource
│     └─ CalculatorPage.resource      # app estável para smoke
├─ tests/
│  ├─ smoke/                          # suites rápidas p/ validar stack
│  │  ├─ calculator_smoke.robot
│  │  └─ whatsapp_smoke.robot
│  ├─ regression/                     # suites mais completas
│  │  └─ README.md
│  └─ data/                           # dados estáticos ou CSV/JSONs
│     └─ sample_contacts.csv
├─ scripts/                           # operacional (ligar/validar/rodar)
│  ├─ start-appium.cmd                # npx appium (porta 4723)
│  ├─ start-emulator.cmd              # sobe AVD com flags estáveis
│  ├─ stop-emulator.cmd               # derruba AVD/adb
│  ├─ validate-env.ps1                # checklist do ambiente (adb, emu, node, robot)
│  ├─ run-smoke.cmd                   # executa apenas smoke e gera evidências
│  └─ run-all.cmd                     # executa tudo
├─ docs/                              # tudo que “vende” o projeto
│  ├─ README.md                       # guia completo (linkado do root)
│  ├─ ADRs/                           # Architecture Decision Records (opcional)
│  │  └─ ADR-001-page-object.md
│  └─ images/                         # diagramas/prints p/ docs
├─ .vscode/
│  └─ settings.json                   # venv e terminal já configurados
├─ .github/
│  └─ workflows/
│     └─ sanity.yml                   # pipeline leve (sem emulador) — portável
├─ reports/                           # evidências do Robot (HTML, screenshots)  ← gitignore
├─ requirements.txt                   # libs Python
├─ .editorconfig                      # padrão de formatação
├─ .gitattributes                     # normalização de fim de linha
├─ .gitignore
└─ README.md                          # resumo + “como rodar rápido”

```

## 📎 Portabilidade CI/CD
Toda a lógica é chamada via scripts do repositório. Qualquer provedor (GitHub/GitLab/Jenkins/Azure/Bitbucket) só precisa chamar os mesmos comandos e publicar `reports/` como artifact.


## Rodada rápida (local)
1. `python -m venv .venv && .\.venv\Scripts\activate`
2. `pip install -r requirements.txt`
3. `scripts\start-appium.cmd`   # mantém aberto
4. `scripts\start-emulator.cmd` # ajusta AVD dentro do arquivo
5. `scripts\run-smoke.cmd`      # gera evidências em /reports


