@echo off
title Menu en batch
color A
mode 120, 50
:inicio
echo.
echo.
echo *************************************
echo *               MENU                *
echo *************************************
echo *                                   *
echo * 1 - Calculadora                   *
echo * 2 - Buscar en Youtube             *
echo * 3 - Salir                         *
echo *                                   *
echo *************************************
echo.
echo.
set /p menu=Opcion= 
echo selecciono opcion: %menu%
if "%menu%"=="1" goto op1
if "%menu%"=="2" goto op2
if "%menu%"=="3" goto salir

:op1
cls
start calc.exe
pause>nul
cls
goto inicio

:op2
cls
set /p buscar=Buscar=
start https://www.youtube.com/results?search_query=%buscar%
pause>nul
cls
goto inicio

:salir
cls&exit