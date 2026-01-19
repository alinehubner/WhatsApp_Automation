@echo off
setlocal
if not exist ".venv\Scripts\python.exe" (
  echo Crie a venv: python -m venv .venv && exit /b 1
)
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
.\.venv\Scripts\python.exe -m robot -d reports tests\smoke
