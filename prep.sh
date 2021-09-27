#!/bin/bash

clear

echo "Este programa preparará el equipo para correr el gestor"
echo "Se instalará lo siguiente:"
echo "neofetch"

echo "También se indexará a los usuarios existentes"
read -p "Presione enter para comenzar o ctrl+C para cancelar"
clear
sudo apt
clear
echo "Listando usuarios, espere..."
echo "root" > ./usuarios.txt
eval getent passwd {$(awk '/^UID_MIN/ {print $2}' /etc/login.defs)..$(awk '/^UID_MAX/ {print $2}' /etc/login.defs)} | cut -d: -f1 >> ./usuarios.txt
sudo apt -y install neofetch
