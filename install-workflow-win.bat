@echo off
title Power Dialer — Instalar workflow (Windows)
echo Informe o caminho COMPLETO da pasta do seu projeto (onde esta o package.json):
set /p TARGET=

if not exist "%TARGET%" (
  echo ERRO: pasta nao encontrada: %TARGET%
  pause
  exit /b 1
)

if not exist "%TARGET%\.github\workflows" mkdir "%TARGET%\.github\workflows"
copy /Y "%~dp0GITHUB_WORKFLOWS_TO_COPY\build-win.yml" "%TARGET%\.github\workflows\build-win.yml"

echo OK! Workflow instalado em: %TARGET%\.github\workflows\build-win.yml
echo Abra o GitHub Desktop nesta pasta e faca commit & push.
pause
