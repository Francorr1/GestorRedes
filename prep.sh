#!/bin/bash

clear

echo "Este programa preparará el equipo para correr el gestor"
echo "Se instalará lo siguiente:"
echo "neofetch"
echo "sysstat"
sudo apt
clear
sudo apt update
sudo apt -y install neofetch
sudo apt -y install sysstat
sudo apt -y install ifconfig
