@echo off
chcp 65001 >nul
title CYBER SQUAD - HUB DE OPERAÇÕES
mode con: cols=100 lines=35
color 0B

:menu
cls
echo.
echo  ====================================================================================================
echo   [ SISTEMA CYBER SQUAD ONLINE - VERSAO 1.0 ]
echo  ====================================================================================================
echo.
echo     CCCCC  YY  YY BBBBB  EEEEEE RRRRRR   SSSSS QQQQQ  UU  UU  AA  DDDDD
echo    CC      YY  YY BB  BB EE     RR   RR SS     QQ  QQ UU  UU AAAA  DD  DD
echo    CC       YYYY  BBBBB  EEEE   RRRRRR   SSSS  QQ  QQ UU  UU AAAAA DD  DD
echo    CC        YY   BB  BB EE     RR  RR      SS QQ  QQ UU  UU AA  AA DD  DD
echo     CCCCC    YY   BBBBB  EEEEEE RR   RR SSSSS   QQQQQ  UUUUU AA  AA DDDDD
echo.
echo  ====================================================================================================
echo  [ 1 ] DISCORD CLONE/BACKUP
echo  [ 2 ] FERRAMENTAS DE REDE (PING)
echo  [ 3 ] INFO DO SISTEMA
echo  [ 4 ] ACESSAR GITHUB DO PROJETO
echo  [ 5 ] SAIR
echo  ====================================================================================================
echo.
set /p opt="> ESCOLHA UMA OPCAO: "

if "%opt%"=="1" goto clone_tool
if "%opt%"=="2" goto net_tools
if "%opt%"=="3" goto sys_info
if "%opt%"=="4" goto github
if "%opt%"=="5" exit
goto menu

:: --- BLOCO 1: CLONE ---
:clone_tool
cls
echo [INICIANDO SCRIPT DE CLONE...]
echo.
if exist cloner.py (
    python cloner.py
) else (
    echo [ERRO] O arquivo 'cloner.py' nao foi encontrado nesta pasta.
    echo Certifique-se de que ele esta na mesma pasta do menu.bat.
)
pause
goto menu

:: --- BLOCO 2: REDE ---
:net_tools
cls
echo [TESTANDO CONEXAO COM O GOOGLE...]
ping google.com -n 4
pause
goto menu

:: --- BLOCO 3: INFO ---
:sys_info
cls
echo [COLETANDO DADOS DO SISTEMA...]
systeminfo | findstr /C:"Nome do host" /C:"Processador" /C:"Memória física total"
pause
goto menu

:: --- BLOCO 4: GITHUB ---
:github
echo [ABRINDO REPOSITORIO NO NAVEGADOR...]
:: Substitua o link abaixo pelo seu link real
start https://github.com/SEU_USUARIO/NOME_DO_SEU_REPO
goto menu
