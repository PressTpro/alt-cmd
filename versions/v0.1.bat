@echo off
cls
color 0a
:homepage
:loop
cls
title Alt CMD 0.1
echo Welcome to Alt CMD, What you want to do?
echo 1) Execute Commands
echo 2) Bash Access (If you have WSL)
echo 3) SSH Access
set /p selection="What will you do? "
if %selection% == 1 goto exec
if %selection% == 2 goto bash
if %selection% == 3 goto ssh
:exec
cls
echo Alt CMD 0.1
echo Alt CMD Aims to be a Windows CMD Based Tool to Execute Commands aiming to have more features
echo Alt CMD Version 0.1 (Released: 08/11/2022)
echo Type your Command below
:exec-l
set /p exec-command=">"
%exec-command%
echo Want to execute another command? 
set /p exec-ta="[yes/no] "
if %exec-ta% == yes goto exec-l
if %exec-ta% == no goto homepage
:ssh
cls
echo Alt CMD 0.1 SSH
echo Alt CMD SSH makes SSH Access Easier
set /p ssh-username="SSH Username: "
set /p ssh-host="SSH Server: "
echo Connecting...
:ssh-l
ssh %ssh-username%@%ssh-host%
echo Want to Execute another SSH Command?
set /p ssh-ta="[yes/no] "
if %ssh-ta% == yes goto ssh-l
if %ssh-ta% == no goto homepage
:bash
echo Alt CMD 0.1 Bash
echo Alt CMD Bash, Access *nix Bash on Alt CMD
bash
pause
goto homepage
