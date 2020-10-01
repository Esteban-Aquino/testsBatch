@echo off
color A
title Buscar programa
tasklist /FI "IMAGENAME eq calc.exe" 2>NUL | find /I /N "calc.exe">NUL
if "%ERRORLEVEL%"=="0" (goto corridendo) else (goto nocorriendo)

:corridendo
echo El programa se esta ejecutando
timeout /t 3 >nul
exit

:nocorriendo
echo Iniciando el programa
start calc.exe&exit
exit
