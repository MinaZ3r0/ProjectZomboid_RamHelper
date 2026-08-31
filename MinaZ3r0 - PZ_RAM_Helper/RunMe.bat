@echo off
:: Check for Admin Privileges
net session >nul 2>&1
if %errorLevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

@echo off
powershell.exe -ExecutionPolicy Bypass -File "%~dp0Runner.ps1"
pause
