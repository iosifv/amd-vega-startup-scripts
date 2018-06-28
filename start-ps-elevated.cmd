PowerShell -Command "Set-ExecutionPolicy Unrestricted" >> "C:\windowsScripts\StartupLog.txt" 2>&1
PowerShell C:\windowsScripts\re-boot-vegas.ps1 >> "C:\windowsScripts\StartupLog.txt" 2>&1
