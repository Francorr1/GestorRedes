#!/bin/bash
#Utilidad para gestionar diferentes configuraciones en el servidor.
#Ruta: /home
#Autores: Mateo Conde, Franco Correa, Darwin Sosa y Juan Salaberry.
#Licencia: GNU GPLv3

clear

echo "Antes de comenzar el gestor, se autenticara con el usuario admin"
read -p "Presione enter para continuar"
clear
sudo apt
clear

while true
do
	clear
	gestor=$(zenity --entry \
		--title="Gestor" \
		--width=350 \
		--ok-label="Aceptar" \
		--cancel-label="Cancelar" \
		--text="Seleccione una gestion
1) Sistema y SA
2) Red
3) Seguridad
4) Usuarios
5) Servicios
6) Procesos y memoria
7) Cerrar la terminal
0) Salir")
	ans=$?
	if [ $ans -eq 1 ]
	then
		exit
	else
	case ${gestor} in
		1)  # Sistema y SA
			while true
			do
			clear
			echo "------------"
			echo "Sistema y SA"
			echo "------------"
			echo "Seleccione una opcion"
			echo "1) Actualizar sistema"
			echo "2) Version SO"
			echo "3) Copiar"
			echo "4) Mover"
			echo "5) Eliminar"
			echo "6) Crear directorio"
			echo "7) Cambiar nombre"
			echo "8) Propiedades"
			echo "9) Ver atributos"
			echo "10) Cambiar permisos"
			echo "11) Cambiar propietario"
			echo "12) Ver unidades"
			echo "0) Volver al menu anterior"
			read optionsub
			case $optionsub in
				1)  # Actualizar sistema
					clear
					echo "------------------"
					echo "Actualizar sistema"
					echo "------------------"
					read -p "Presione enter para actualizar..."
					sudo apt-get update
					clear
					sudo apt-get upgrade
					
				;;
				2)  # Version SO
					clear
					echo "-------------"
					echo "Version de SO"
					echo "-------------"
					neofetch
					read -p "Presione enter para continuar"
					
				;;
				3)  # Copiar
					clear
					echo "------"
					echo "Copiar"
					echo "------"
					echo "Desea copiar un directorio o un fichero?"
					echo "1) Directorio"
					echo "2) Fichero"
					read option3
					case $option3 in
						1)  # Directorio
							clear
							echo "------"
							echo "Copiar"
							echo "------"
							echo "Introduzca la direccion del directorio que quiere copiar"
							read origen
							clear
							echo "------"
							echo "Copiar"
							echo "------"
							echo "Introduzca la direccion a la que quiere copiar el directorio"
							read destino
							clear
							echo "------"
							echo "Copiar"
							echo "------"
							cp -vr $origen $destino
							read -p "Presione enter para continuar"
						;;
						2)
							clear
							echo "------"
							echo "Copiar"
							echo "------"
							echo "Introduzca la direccion del fichero que quiere copiar"
							read origen
							clear
							echo "------"
							echo "Copiar"
							echo "------"
							echo "Introduzca la direccion a la que quiere copiar el fichero"
							read destino
							clear
							echo "------"
							echo "Copiar"
							echo "------"
							cp -v $origen $destino
							read -p "Presione enter para continuar"
						;;
					esac
					
				;;
				4)  # Mover
					clear
					echo "-----"
					echo "Mover"
					echo "-----"
					echo "Desea mover un directorio o un fichero?"
					echo "1) Directorio"
					echo "2) Fichero"
					read option4
					case $option4 in
						1)  # Directorio
							clear
							echo "-----"
							echo "Mover"
							echo "-----"
							echo "Introduzca la direccion del directorio que quiere mover"
							read origen
							clear
							echo "-----"
							echo "Mover"
							echo "-----"
							echo "Introduzca la direccion a la que quiere mover el directorio"
							read destino
							clear
							echo "-----"
							echo "Mover"
							echo "-----"
							mv -v $origen $destino
							read -p "Presione enter para continuar"
						;;
						2)  # Fichero
							clear
							echo "-----"
							echo "Mover"
							echo "-----"
							echo "Introduzca la direccion del fichero que quiere mover"
							read origen
							clear
							echo "-----"
							echo "Mover"
							echo "-----"
							echo "Introduzca la direccion a la que quiere mover el fichero"
							read destino
							clear
							echo "-----"
							echo "Mover"
							echo "-----"
							mv -v $origen $destino
							read -p "Presione enter para continuar"
						;;
					esac
					
				;;
				5)  # Eliminar
					clear
					echo "--------"
					echo "Eliminar"
					echo "--------"
					echo "Desea eliminar un directorio o un fichero?"
					echo "1) Directorio"
					echo "2) Fichero"
					read option5
					case $option5 in
						1)  # Directorio
							clear
							echo "--------"
							echo "Eliminar"
							echo "--------"
							echo "Introduzca la direccion del directorio que quiere eliminar"
							read directorio
							clear
							echo "--------"
							echo "Eliminar"
							echo "--------"
							rm -ivr $directorio
							read -p "Presione enter para continuar"
						;;
						2)  # Fichero
							clear
							echo "--------"
							echo "Eliminar"
							echo "--------"
							echo "Introduzca la direccion del fichero que quiere eliminar"
							read fichero
							clear
							echo "--------"
							echo "Eliminar"
							echo "--------"
							rm -iv $fichero
							read -p "Presione enter para continuar"
						;;
					
					esac
				;;
				6)  # Crear directorio
					clear
					echo "----------------"
					echo "Crear directorio"
					echo "----------------"
					echo "Introduzca la direccion donde quiere crear el directorio (sin / al final)"
					read destino
					clear
					echo "----------------"
					echo "Crear directorio"
					echo "----------------"
					echo "introduzca el nombre que le quiere dar al directorio"
					read nombre
					mkdir $destino/$nombre
				;;
				7)  # Cambiar nombre
					clear
					echo "--------------"
					echo "Cambiar nombre"
					echo "--------------"
					echo "Desea cambiarle el nombre a un directorio o a un fichero?"
					echo "1) Directorio"
					echo "2) Fichero"
					read suboption17
					case $suboption17 in
						1)
							clear
							echo "--------------"
							echo "Cambiar nombre"
							echo "--------------"
							echo "ingrese la direccion anterior al directorio"
							echo "(Por ejemplo, si se desea cambiar el nombre de /home/usr, ingrese /home)"
							read dir
							clear
							echo "--------------"
							echo "Cambiar nombre"
							echo "--------------"
							cd $dir
							ls
							echo "Seleccione el directorio que desea editar"
							read oldname
							clear
							echo "--------------"
							echo "Cambiar nombre"
							echo "--------------"
							echo "Ingrese el nombre nuevo para el directorio"
							read newname
							clear
							echo "--------------"
							echo "Cambiar nombre"
							echo "--------------"
							mv -v $dir/$oldname $dir/$newname
							read -p "Presione enter para continuar"
						;;
						2)
							clear
							echo "--------------"
							echo "Cambiar nombre"
							echo "--------------"
							echo "Ingrese la direccion donde se encuentra el archivo a editar"
							read dir
							clear
							echo "--------------"
							echo "Cambiar nombre"
							echo "--------------"
							cd $dir
							ls
							echo "Escriba el nombre actual del archivo que desea editar (Incluya la extension)"
							read oldname
							clear
							echo "--------------"
							echo "Cambiar nombre"
							echo "--------------"
							echo "Ingrese el nombre nuevo para el archivo (Incluya la extension)"
							read newname
							clear
							echo "--------------"
							echo "Cambiar nombre"
							echo "--------------"
							mv -v $dir/$oldname $dir/$newname
							read -p "Presione enter para continuar"
							clear
						;;
					esac
				;;
				8)  # Ver propiedades
					clear
					echo "---------------"
					echo "Ver propiedades"
					echo "---------------"
					echo "Ingrese la direccion del fichero o directorio para ver sus propiedades"
					read direccion
					clear
					echo "---------------"
					echo "Ver propiedades"
					echo "---------------"
					stat $direccion
					read "Presione enter para continuar"
				;;
				9)  # Ver atributos
					clear
					echo "-------------"
					echo "Ver atributos"
					echo "-------------"
					echo "Ingrese la direccion del fichero o directorio para ver sus atributos"
					read $archivo
					echo "-------------"
					echo "Ver atributos"
					echo "-------------"
					ls -lh $archivo
					read -p "Presione enter para continuar"
				;;
				10)  # Cambiar permisos
					clear
					echo "----------------"
					echo "Cambiar permisos"
					echo "----------------"
					echo "Ingrese la direccion del fichero para cambiarle los permisos"
					read archivo
					clear
					echo "----------------"
					echo "Cambiar permisos"
					echo "----------------"
					echo "Desea quitar o agregar permisos?"
					echo "1) Quitar"
					echo "2) Agregar"
					read accion10
					case $accion10 in
						1)  # Quitar
							clear
							echo "---------------"
							echo "Quitar permisos"
							echo "---------------"
							echo "Ingrese los permisos que desea quitar (Ejemplo: rwx)"
							echo "(w = escribir, r = leer, x = ejecutar)"
							read permisos
							clear
							echo "---------------"
							echo "Quitar permisos"
							echo "---------------"
							chmod -v -$permisos $archivo
							read -p "Presione enter para continuar"
						;;
						2)  # Agregar
							clear
							echo "----------------"
							echo "Agregar permisos"
							echo "----------------"
							echo "Ingrese los permisos que desea agregar (Ejemplo: rwx)"
							echo "(w = escribir, r = leer, x = ejecutar)"
							read permisos
							clear
							echo "----------------"
							echo "Agregar permisos"
							echo "----------------"
							chmod -v +$permisos $archivo
							read -p "Presione enter para continuar"
						;;
					esac
					
				;;
				11)  # Cambiar propietario
					clear
					echo "-------------------"
					echo "Cambiar propietario"
					echo "-------------------"
					echo "Ingrese la direccion del archivo para cambiar su propietario"
					read archivo
					clear
					echo "-------------------"
					echo "Cambiar propietario"
					echo "-------------------"
					echo "Ingrese el nombre del nuevo propietario"
					read newpropietario
					clear
					echo "-------------------"
					echo "Cambiar propietario"
					echo "-------------------"
					sudo chown -v $newpropietario $archivo
					read -p "Presione enter para continuar"
				;;
				12)  # Ver unidades
					clear
					echo "------------"
					echo "Ver unidades"
					echo "------------"
					lsblk
					read -p "Presione enter para continuar"
					
				;;
				0)  # Volver
					break
				;;
				*)
					clear
					echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
					echo "La opcion ingresada es incorrecta"
					echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
					read -p "Presione enter"
				;;
			esac
			done
		;;
		
		2)  # Red
			while true
			do
			clear
			echo "---"
			echo "Red"
			echo "---"
			echo "Seleccione una opcion"
			echo "1) Ver tarjetas en PCI"
			echo "2) Ver datos"
			echo "3) Verificar conectividad"
			echo "4) Resolver nombre de dominio"
			echo "5) Ruteo"
			echo "6) Lista host LAN"
			echo "7) Sniffer"
			echo "8) Configurar red"
			echo "9) Resolver direccion IP"
			echo "0) Volver al menu anterior"
			read optionsub
			case $optionsub in
				1)  # Ver tarjetas en PCI
					clear
					echo "---------------"
					echo "Tarjetas en PCI"
					echo "---------------"
					lspci
					read -p "Presione enter para continuar..."
				;;
				2)  # Ver datos
					clear
					echo "---------"
					echo "Ver datos"
					echo "---------"
					ifconfig
					read -p "Presione enter para continuar..."
				;;
				3)  # Verificar conectividad
					clear
					echo "----------------------"
					echo "Verificar conectividad"
					echo "----------------------"
					echo "Ingrese la dirección con la que quiere comprobar"
					read direccion
					clear
					echo "----------------------"
					echo "Verificar conectividad"
					echo "----------------------"
					echo "Ingrese el tamaño de los paquetes que quiere enviar en bytes"
					read tamano
					clear
					echo "----------------------"
					echo "Verificar conectividad"
					echo "----------------------"
					echo "Ingrese la cantidad de intentos que desea enviar"
					read cantidad
					echo "----------------------"
					echo "Verificar conectividad"
					echo "----------------------"
					ping $direccion -s $tamano -c $cantidad
					read -p "Presione enter para continuar"
				;;
				4)  # Resolver nombre de dominio
					clear
					echo "--------------------------"
					echo "Resolver nombre de dominio"
					echo "--------------------------"
					echo "ngrese el nombre de dominio para resolver"
					read dominio
					clear
					nslookup $dominio
					read -p "Presione enter para continuar..."
					clear
				;;
				5)  # Ruteo
					clear
					echo "-----"
					echo "Ruteo"
					echo "-----"
					route
					read -p "Presione enter para continuar..."
				;;
				6)  # Lista host lan
					clear
					echo "---------------"
					echo "Listar host LAN"
					echo "---------------"
					arp -a
					read -p "Presione enter para continuar..."
				;;
				7)  # Sniffer
					clear
					echo "-------"
					echo "Sniffer"
					echo "-------"
					echo "Se comenzará el Sniffer, para cerrarlo presione ctrl+C"
					read -p "Presione enter para comenzar..."
					sudo tcpdump
					echo "Se cerró el Sniffer"
					read -p "Presione enter para continuar..."
				;;
				8)  # Configurar red
					clear
					echo "--------------"
					echo "Configurar red"
					echo "--------------"
					echo "Se abrirá el editor Nano para configurar Netplan"
					read -P "Presione enter para comenzar..."
					sudo nano /etc/netplan/config.yaml
				;;
				9)  # Resolver direccion IP
					clear
					echo "---------------------"
					echo "Resolver direccion IP"
					echo "---------------------"
					echo "Ingrese una direccion IP"
					read dir
					clear
					IFS=$saveIFS
					IFS="."
					campo=($dir)
					saveIFS=$IFS
					
					if [ ${campo[0]} -ge 0 ] && [ ${campo[0]} -lt 128 ]
					then
						clase='A'
						netmask='255.0.0.0'
						format='R.H.H.H'
						broadcast="${campo[0]}.255.255.255"
					fi
					if [ ${campo[0]} -ge 128 ] && [ ${campo[0]} -lt 192 ]
					then
						clase='B'
						netmask='255.255.0.0'
						format='R.R.H.H'
						broadcast="${campo[0]}.${campo[1]}.255.255"
						
					elif [ ${campo[0]} -ge 192 ] && [ ${campo[0]} -lt 224 ]
					then
						clase='C'
						netmask='255.255.255.0'
						format='R.R.R.H'
						broadcast="${campo[0]}.${campo[1]}.${campo[2]}.255"
						
					elif [ ${campo[0]} -ge 224 ] && [ ${campo[0]} -lt 240 ]
					then
						clase='D'
						netmask='255.255.255.255' 
						format='R.R.R.R'
					elif [ ${campo[0]} -ge 240 ] && [ ${campo[0]} -lt 256 ]
					then
						clase='E'
						netmask='255.255.255.255'
						format='R.R.R.R'	
					fi
					
					#Red
					red="${campo[0]}.${campo[1]}.${campo[2]}.0"
					
					#NetID
					netID="${campo[0]}.${campo[1]}.${campo[2]}"
					
					#HostID
					hostID="${campo[3]}"
					
					#Uso 
					if [ ${campo[3]} -eq "255" ]
					then
						uso='Red'
					elif [ ${campo[3]} -eq "0" ]
					then
						uso='Broadcast'
					else 
						uso='Host'
					fi

					echo "---------------------"
					echo "Resolver direccion IP"
					echo "---------------------"
					echo "Direccion IP: $dir"
					echo "Clase: $clase"
					echo "Formato: $format"
					echo "Mascara de red: $netmask"
					echo "Broadcast: $broadcast"
					echo "Red: $red"
					echo "Net ID: $netID"
					echo "Host ID: $hostID"
					echo "Uso: $uso"
					read -p  "Presione enter para continuar..."

				;;
				0)  # Volver
					break
					
				;;
				*)
					clear
					echo "La opcion ingresada es incorrecta"
					read -p "Presione enter"
				;;
			esac
			done
		;;
		
		3)  #  Seguridad
			while true
			do
			clear
			echo "---------"
			echo "Seguridad"
			echo "---------"
			echo "Seleccione una opcion"
			echo "1) Programar actualizaciones automaticas"
			echo "2) Limpiar navegador"
			echo "3) Configurar UFW"
			echo "0) Volver al menu anterior"
			read optionsub
			case $optionsub in
				1)  # Programar actualizaciones automaticas
					clear
					sudo cp ./K01Actualizaciones /etc/rc6.d/
				;;
				2)  # Limpiar navegador
					clear
					sudo rm ~/.mozilla/firefox/*.default/*.sqlite
					sudo rm ~/.mozilla/firefox/*.default/sessionstore.js
					sudo rm ~/.cache/mozilla/firefox/*.default/*
					
				;;
				3)  # Configurar UFW
					clear
					while true 
					do 
					clear 
					echo "--------------"
					echo "Configurar UFW"
					echo "--------------"
					echo "Seleccione una opción"
					echo "1) Activar o desactivar"
					echo "2) Mostrar estado de UFW"
					echo "3) Listar servicios"
					echo "4) Info de servicios listados"
					echo "5) Permitir o denegar servicios"
					echo "0) Volver al menu anterior"
					read suboption34
					case $suboption34 in
						1)  # Activar o desactivar
							clear
							echo "Seleccione"
							echo "1) Activar"
							echo "2) Desactivar"
							read suboption341
							case $suboption341 in
								1)  # Activar
									clear
									sudo ufw enable
									read -p "Presione enter para continuar"
								;;
								2)  # Desactivar
									clear
									sudo ufw disable
									read -p "Presione enter para continuar"
								;;
							esac
						;;
						2)  # Mostrar estado
							clear
							sudo ufw status
							read -p "Presione enter para continuar"
						;;
						3)  # Listar servicios
							clear
							sudo ufw app list
							read -p "Presione enter para continuar"
						;;
						4)  # Info de servicios
							clear
							echo "Escriba el servicio del que quiere ver la info"
							read servicioinfo
							sudo ufw app info $servicioinfo
							read -p "Presione enter para continuar"
						;;
						5)  # Permitir o denegar servicios
							clear
							echo "Ingrese el puerto del servicio"
							read puertoservicio
							clear
							echo "Desea permitirlo o denegarlo?"
							echo "1) Permitir"
							echo "2) Denegar"
							read accionservicio
							case $accionservicio in
								1)  # Permitir
									clear
									sudo ufw allow $puertoservicio
									read -p "Presione enter para continuar"
								;;
								2)  # Denegar
									clear
									sudo ufw deny $puertoservicio
									read -p "Presione enter para continuar"
								;;
							esac
						;;
						0)  # Volver
							clear
							break
						;;
					esac
					done
				;;
				0)  # Volver
					break
					
				;;
				*)
					clear
					echo "La opcion ingresada es incorrecta"
					read -p "Presione enter"
				;;
			esac
			done
		;;
		
		4)  # Usuarios
			while true
			do
			clear
			echo "--------"
			echo "Usuarios"
			echo "--------"
			echo "Seleccione una opcion"
			echo "1) Crear usuario simple"
			echo "2) Crear usuario completo"
			echo "3) Cambiar nombre de usuario"
			echo "4) Ver usuarios"
			echo "5) Ver datos de un usuario"
			echo "6) Eliminar usuario"
			echo "7) Bloquear usuario"
			echo "8) Desbloquear usuario"
			echo "9) Temporizar usuario"
			echo "10) Añadir usuario al grupo de sudoers"
			echo "0) Volver al menu anterior"
			read optionsub
			case $optionsub in
				1)  # Crear usuario simple
					clear
					echo "--------------------"
					echo "Crear usuario simple"
					echo "--------------------"
					echo "Escriba un nombre para el usuario nuevo (No utilice mayusculas)"
					read nombreusuario
					sudo useradd $nombreusuario
				;;
				2)  # Crear usuario completo
					clear
					echo "----------------------"
					echo "Crear usuario completo"
					echo "----------------------"
					echo "Ingrese un nombre para el usuario nuevo (No utilice mayusculas)"
					read usuarionuevo
					clear
					echo "----------------------"
					echo "Crear usuario completo"
					echo "----------------------"
					echo "Se le pedirá información adicional"
					read -p "Presione enter para comenzar"
					clear
					echo "----------------------"
					echo "Crear usuario completo"
					echo "----------------------"
					sudo adduser $usuarionuevo
				;;
				3)  # Cambiar nombre de usuario
					clear
					echo "-------------------------"
					echo "Cambiar nombre de usuario"
					echo "-------------------------"
					echo "Escriba el nombre del usuario a editar"
					read usuario
					clear
					echo "-------------------------"
					echo "Cambiar nombre de usuario"
					echo "-------------------------"
					echo "Ingrese el nombre nuevo para el usuario"
					read nombrenuevo
					sudo usermod -l $nombrenuevo $usuario
				;;
				4)  # Ver usuarios
					clear
					echo "------------"
					echo "Ver usuarios"
					echo "------------"
					echo "Cargando usuarios disponibles, espere..."
					eval getent passwd {$(awk '/^UID_MIN/ {print $2}' /etc/login.defs)..$(awk '/^UID_MAX/ {print $2}' /etc/login.defs)} | cut -d: -f1
					read -p "Presione enter para continuar..."
				;;
				5)  # Ver datos de un usuario
					clear
					echo "--------------------"
					echo "Ver datos de usuario"
					echo "--------------------"
					echo "Ingrese el usuario del que quiera ver los datos"
					read usuario
					clear
					echo "-----------------"
					echo "Datos del usuario"
					echo "-----------------"
					id $usuario
					read -p "Presione enter para continuar..."
				;;
				6)  # Eliminar usuario
					clear
					echo "----------------"
					echo "Eliminar usuario"
					echo "----------------"
					echo "Ingrese el nombre del usuario que desea eliminar"
					read usuariodel
					clear
					echo "xxxxxxxxxxxxxxxx"
					echo "Eliminar usuario"
					echo "xxxxxxxxxxxxxxxx"
					sudo deluser $usuariodel
					read -p "Presione enter para continuar..."
				;;
				7)  # Bloquear usuario
					clear
					echo "----------------"
					echo "Bloquear usuario"
					echo "----------------"
					echo "Ingrese el nombre del usuario que desea bloquear"
					read usuariobloq
					sudo usermod -L $usuariobloq
				;;
				8)  # Desbloquear usuario
					clear
					echo "-------------------"
					echo "desbloquear usuario"
					echo "-------------------"
					echo "Ingrese el nombre del usuario que desea desbloquear"
					read usuariodesbloq
					sudo usermod -U $usuariodesbloq
				;;
				9)  # Temporizar usuario
					clear
					echo "------------------"
					echo "Temporizar usuario"
					echo "------------------"
					echo "Ingrese el nombre del usuario que desea temporizar"
					read usuariotemp
					clear
					echo "------------------"
					echo "Temporizar usuario"
					echo "------------------"
					echo "Ingrese una fecha (aaaa-mm-dd)"
					read fecha
					sudo usermod -e $fecha $usuariotemp
				;;
				10)  # Añadir usuario al grupo sudoers
					clear
					echo "-------------------------------"
					echo "Añadir usuario al grupo sudoers"
					echo "-------------------------------"
					echo "Ingrese el nombre del usuario que desea temporizar"
					read usuariosu
					sudo usermod -aG sudo $usuariosu
				;;
				0)  # Volver al menu anterior
					break
					
				;;
				*)
					clear
					echo "La opcion ingresada es incorrecta"
					read -p "Presione enter"
				;;
			esac
			done
		;;
		
		5)  # Servicios
			while true
			do
			clear
			echo "---------"
			echo "Servicios"
			echo "---------"
			echo "Seleccione una opcion"
			echo "1) Instalar servicio"
			echo "2) Editar servicios/configuracion"
			echo "3) Reiniciar"
			echo "4) Detener"
			echo "5) Arrancar"
			echo "0) Volver al menu anterior"
			read optionsub
			case $optionsub in
				1)  # Instalar servicio
					clear
					echo "-----------------"
					echo "Instalar servicio"
					echo "-----------------"
					echo "Ingrese el nombre del paquete del servicio que desea instalar"
					read paquete
					clear
					sudo apt install $paquete
					read -p "Presione enter para continuar..."
				;;
				2)  # Editar servicio
					clear
					echo "---------------"
					echo "Editar servicio"
					echo "---------------"
					echo "Ingrese el archivo del servicio que desea editar (incluir ruta)"
					read rutaservicio
					sudo nano $rutaservicio
				;;
				3)  # Reiniciar
					clear
					echo "-------------------"
					echo "Reiniciar servicios"
					echo "-------------------"
					echo "Introduzca el nombre del servicio que desee reiniciar"
					read servicio
					sudo systemctl restart $servicio
				;;
				4)  # Detener
					clear
					echo "-----------------"
					echo "Detener servicios"
					echo "-----------------"
					echo "Introduzca el nombre del servicio que desee detener"
					read servicio
					sudo systemctl stop $servicio
				;;
				5)  # Arrancar
					clear
					echo "------------------"
					echo "Arrancar servicios"
					echo "------------------"
					echo "Introduzca el nombre del servicio que desee arrancar"
					read servicio
					sudo systemctl start $servicio
				;;
				0)
					break
					
				;;
				*)
					clear
					echo "La opcion ingresada es incorrecta"
					read -p "Presione enter"
				;;
			esac
			done
		;;
		
		6)  # Procesos y memoria
			while true
			do
			clear
			echo "------------------"
			echo "Procesos y memoria"
			echo "------------------"
			echo "Seleccione una opcion"
			echo "1) Ver memoria RAM total y libre"
			echo "2) Ver uso del procesador"
			echo "3) Ver procesos"
			echo "4) Eliminar procesos"
			echo "5) Uso de las particiones"
			echo "0) Volver al menu anterior"
			read optionsub
			case $optionsub in
				1)  # Ver RAM
					clear
					echo "-------"
					echo "Ver RAM"
					echo "-------"
					free
					read -p "Presione enter para continuar..."
				;;
				2)  # Ver CPU
					clear
					echo "-------"
					echo "Ver CPU"
					echo "-------"
					mpstat
					read -p "Presione enter para continuar..."
				;;
				3)  # Ver procesos
					clear
					echo "------------"
					echo "Ver procesos"
					echo "------------"
					ps -a
					echo -p "Presione enter para continuar..."
				;;
				4)  # Eliminar procesos
					clear
					echo "-----------------"
					echo "Eliminar procesos"
					echo "-----------------"
					echo "Escriba el nombre del proceso que desea eliminar"
					read proceso
					sudo killall $proceso
				;;
				5)  # Ver particiones
					clear
					echo "---------------"
					echo "Ver particiones"
					echo "---------------"
					lsblk
					read -p "Presione enter para continuar"
				;;
				0)
					break
					
				;;
				*)
					clear
					echo "La opcion ingresada es incorrecta"
					read -p "Presione enter"
				;;
			esac
			done
		;;
		
		0)  #  Salir
			clear
			echo "-----"
			echo "Salir"
			echo "-----"
			read -p "Presione enter para salir..."
			clear
			break
		;;
		
		7)  # Cerrar la terminal
			clear
			echo "------------------"
			echo "Cerrar la terminal"
			echo "------------------"
			read -p "Presione enter para cerrar la terminal..."
			exit
		;;	
		
		*)
			clear
			echo "La opcion ingresada es incorrecta"
			read -p "Presione enter"
		
	esac
	fi
done
