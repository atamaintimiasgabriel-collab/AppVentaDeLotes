@echo off
setlocal

cd /d "%~dp0"

if not exist ".\node_modules\.bin\expo.cmd" (
  echo No se encontro Expo local en node_modules.
  echo Ejecuta npm install dentro de esta carpeta.
  exit /b 1
)

call ".\node_modules\.bin\expo.cmd" start %*