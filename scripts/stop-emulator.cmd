@echo off
for /f "tokens=2 delims= " %%a in ('adb devices ^| find "emulator-"') do adb -s %%a emu kill
taskkill /F /IM emulator.exe /IM qemu-system* /IM adb.exe >nul 2>&1
