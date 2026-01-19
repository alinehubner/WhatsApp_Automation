@echo off
set SDK=%LOCALAPPDATA%\Android\Sdk
set AVD=Pixel6_API34_Play
start "" "%SDK%\emulator\emulator.exe" -avd %AVD% -no-snapshot-load -gpu angle_indirect -scale 0.85
timeout /t 10 >nul
"%SDK%\platform-tools\adb.exe" start-server
"%SDK%\platform-tools\adb.exe" devices
@echo off
for /f "tokens=5" %%p in ('netstat -ano ^| find ":4723" ^| find "LISTENING"') do taskkill /PID %%p /F >nul 2>&1
echo Appium -> http://127.0.0.1:4723/wd/hub
npx -y appium@latest --base-path /wd/hub
