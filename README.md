# WhatsApp Automation (Robot + Appium + Android)

Projeto real de automação mobile Android com Robot Framework + Appium, arquitetura por Page Objects, scripts operacionais e pronto para CI.

## Rodada rápida (local)
1. `python -m venv .venv && .\.venv\Scripts\activate`
2. `pip install -r requirements.txt`
3. `scripts\start-appium.cmd`   # mantém aberto
4. `scripts\start-emulator.cmd` # ajusta AVD dentro do arquivo
5. `scripts\run-smoke.cmd`      # gera evidências em /reports

## Estrutura
- Page Objects em `resources/pages`
- Ações genéricas em `resources/support`
- Suites em `tests/*`
- Scripts operacionais em `scripts/*`

## Portabilidade CI/CD
Toda a lógica é chamada via scripts do repositório. Qualquer provedor (GitHub/GitLab/Jenkins/Azure/Bitbucket) só precisa chamar os mesmos comandos e publicar `reports/` como artifact.
