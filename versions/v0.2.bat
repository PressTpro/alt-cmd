@echo off
cls
color 0a
:: Set Variables
set version=0.2
set ssh-defhost=localhost
set ssh-defusr=root
set ssh-defport=22
:: Build Log File and Errors
echo INIT ALT CMD >>altcmd-log.txt
echo SETTING UP ALT CMD >>altcmd-log.txt
set deferr=An Error Ocurred, Please Check the Log File (altcmd-log.txt) for more info
set clearlog=del altcmd-log.txt
:: Boot ALT CMD

:homepage
:loop
cls
title Alt CMD 0.1
echo Welcome to Alt CMD, What you want to do?
echo 1) Execute Commands
echo 2) Bash Access (If you have WSL)
echo 3) SSH Access
echo 4) Clear Log File
echo HOMEPAGE LOADED SUCEFULLY >>altcmd-log.txt
set /p selection="What will you do? "
if %selection% == 1 goto exec
if %selection% == 2 goto bash
if %selection% == 3 goto ssh
if %selection% == 4 goto cllog
if %selection% == * goto loop
echo SELECTION: %selection% >>altcmd-log.txt
:exec
cls
echo Alt CMD 0.1
echo Alt CMD Aims to be a Windows CMD Based Tool to Execute Commands aiming to have more features
echo Alt CMD Version 0.1 (Released: 08/11/2022)
echo Type your Command below
:exec-l
set /p exec-command=">"
%exec-command%
echo COMMAND "%exec-command%" RUN SUCEFULLY >>altcmd-log.txt
echo Want to execute another command? 
set /p exec-ta="[yes/no] "
if %exec-ta% == yes goto exec-l
if %exec-ta% == no goto homepage
if %exec-ta% == * goto exec-l
echo RESPONSE: %exec-ta% >>altcmd-log.txt
:ssh
cls
echo Alt CMD 0.1 SSH
echo Alt CMD SSH makes SSH Access Easier
set /p ssh-username="SSH Username: "
set /p ssh-host="SSH Server: "
echo Connecting...
echo USER CONNECTING TO %ssh-username%@%ssh-server%
:ssh-l
ssh %ssh-username%@%ssh-host%
echo Want to Execute another SSH Session?
set /p ssh-ta="[yes/no] "
if %ssh-ta% == yes goto ssh-l
if %ssh-ta% == no goto homepage
if %ssh-ta% == * goto ssh-l
:bash
echo Alt CMD 0.1 Bash
echo Alt CMD Bash, Access *nix Bash on Alt CMD
bash
echo USER ACCESSED *NIX BASH >>altcmd-log.txt
pause
goto homepage
:err
echo %deferr%
echo USER GOT ERROR: %deferr% >>altcmd-log.txt
pause
goto loop
:cllog
title Alt CMD
echo Clearing Log... Please Wait
%clearlog%
pause
echo Log Cleared
pause
goto loop
