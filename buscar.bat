@echo off
color A
title Buscar programa
tasklist /FI "IMAGENAME eq calc.exe" 2>NUL | find /I /N "calc.exe">NUL
if "%ERRORLEVEL%"=="0" (goto corridendo) else (goto nocorriendo)

:corridendo
echo Program is running
timeout /t 5 >nul
exit

:nocorriendo
start calc.exe&exit
exit
