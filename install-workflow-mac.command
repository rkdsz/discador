#!/usr/bin/env bash
# Double‑click this file on macOS to install the workflow into your repo.
set -euo pipefail

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "=== Power Dialer — Installer do workflow (macOS) ==="
echo "Informe o caminho da pasta do seu projeto (onde fica o package.json):"
read -r TARGET

if [ ! -d "$TARGET" ]; then
  echo "Erro: pasta nao encontrada: $TARGET"
  exit 1
fi

mkdir -p "$TARGET/.github/workflows"
cp -f "$SCRIPT_DIR/GITHUB_WORKFLOWS_TO_COPY/build-win.yml" "$TARGET/.github/workflows/build-win.yml"

echo "OK! Workflow instalado em: $TARGET/.github/workflows/build-win.yml"
echo "Abra o projeto no GitHub Desktop e faca commit & push."
