@echo off
chcp 65001 >nul
title CYBER SQUAD - SYSTEM CONTROL
mode con: cols=100 lines=35
color 0B

:menu
cls
echo.
echo  ====================================================================================================
echo   [ SISTEMA CYBER SQUAD ONLINE ]
echo  ====================================================================================================
echo.
echo     CCCCC  YY  YY BBBBB  EEEEEE RRRRRR   SSSSS QQQQQ  UU  UU  AA  DDDDD
echo    CC      YY  YY BB  BB EE     RR   RR SS     QQ  QQ UU  UU AAAA  DD  DD
echo    CC       YYYY  BBBBB  EEEE   RRRRRR   SSSS  QQ  QQ UU  UU AAAAA DD  DD
echo    CC        YY   BB  BB EE     RR  RR      SS QQ  QQ UU  UU AA  AA DD  DD
echo     CCCCC    YY   BBBBB  EEEEEE RR   RR SSSSS   QQQQQ  UUUUU AA  AA DDDDD
echo.
echo  ====================================================================================================
echo  [ 1 ] DISCORD CLONE/BACKUP (Executar Script)
echo  [ 2 ] FERRAMENTAS DE REDE (Ping/IP)
echo  [ 3 ] INFO DO SISTEMA
echo  [ 4 ] SAIR
echo  ====================================================================================================
echo.
set /p opt="> DIGITE O COMANDO: "

if "%opt%"=="1" goto clone_tool
if "%opt%"=="2" goto net_tools
if "%opt%"=="3" goto sys_info
if "%opt%"=="4" exit
goto menu

:: --- BLOCO 1: CLONE ---
:clone_tool
cls
echo [EXECUTANDO FERRAMENTA DE CLONE...]
:: Aqui você chama o seu arquivo de clone. Se for .py, use: python nome_do_arquivo.py
:: Exemplo: python backup.py
pause
goto menu

:: --- BLOCO 2: REDE ---
:net_tools
cls
echo [FERRAMENTAS DE REDE]
ping google.com
pause
goto menu

:: --- BLOCO 3: INFO ---
:sys_info
cls
echo [INFO DO SISTEMA]
systeminfo | findstr /C:"Nome do host"
pause
goto menu
