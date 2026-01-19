@echo off
for /f "tokens=5" %%p in ('netstat -ano ^| find ":4723" ^| find "LISTENING"') do taskkill /PID %%p /F >nul 2>&1
echo Appium -> http://127.0.0.1:4723/wd/hub
npx -y appium@latest --base-path /wd/hub
