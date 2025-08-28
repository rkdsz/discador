# Pacote do Workflow — Build Windows Installer (GitHub Actions)

## O que vem aqui
- `GITHUB_WORKFLOWS_TO_COPY/build-win.yml`  → arquivo do workflow
- `.github/workflows/build-win.yml`         → mesma coisa, no caminho final (pasta oculta)
- `install-workflow-mac.command`            → copia o workflow para o seu projeto (macOS)
- `install-workflow-win.bat`                → copia o workflow para o seu projeto (Windows)

## Como usar no macOS (Finder nao mostra pastas ocultas)
1) Dê duplo clique em **install-workflow-mac.command**.
2) Cole/Informe o caminho da pasta do seu projeto (onde está o **package.json**).
3) O script cria `PROJETO/.github/workflows/` e copia o `build-win.yml` para lá.
4) Abra o **GitHub Desktop**, faça **commit** e **push**.

## Como usar manualmente (se preferir)
- Copie **GITHUB_WORKFLOWS_TO_COPY/build-win.yml** para a pasta do seu projeto:
  `SEU_PROJETO/.github/workflows/build-win.yml`
- Depois faça commit & push.

## Depois do push
- No GitHub → aba **Actions** → workflow **Build Windows Installer** → **Run workflow**.
- Ao concluir, baixe o artifact **power-dialer-windows** com o `.exe` do instalador.
