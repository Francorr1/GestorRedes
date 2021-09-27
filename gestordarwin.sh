#!/bin/bash
#Primera parte del proyecto de programa gestor del SO
#  Darwin
while true
do
	clear
	echo
	echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	echo "                    Bienvenido al Gestor del SO"
	echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	echo "Elija una rama de la gestión"
	echo "1- Sistema y Sistema de Archivos"
	echo "2- Red"
	echo "3- Seguridad"
	echo "4- Usuarios"
	echo "5- Servicios"
	echo "6- Procesos y Memoria"
	echo "7- ?"
	echo "8- Cerrar terminal"
	echo "0- Salir"

	read opcion
	case $opcion in
		1)
			while true
			do
				clear
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
				echo "    Bienvenido al Gestor del Sistema y Sistema de Archivos"
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
          			echo
				echo "En este gestor hay múltiples funciones"
          			echo "Elija una acción"
          			echo "1- Actualizar Sistema"
          			echo "2- Ver Versión de SO"
          			echo "3- Copiar Archivos"
          			echo "4- Mover Archivos"
          			echo "5- Eliminar Archivos"
          			echo "6- Crear Directorio"
          			echo "7- Cambiar Nombre"
          			echo "8- Tamaño o Propiedades"
          			echo "9- Ver Atributos"
          			echo "10- Cambiar permisos"
          			echo "11- Cambiar propietario"
          			echo "12- Ver Unidades"
          			echo "0- Salir"
         			read opcion_1
        			case $opcion_1 in
					1)
						clear
						echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
						echo "		   Se comenzara a buscar actualizaciones"
						echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
						echo "Se buscaran acutalizaciones..."
						sudo apt-get upgrade
					;;

					2)
						clear	
					;;

					3)
						clear
					;;

					4)
						clear
					;;

					5)
						clear
					;;

					6)
						clear
					;;

					7)
						clear
					;;

					8)
						clear
					;;

					9)
						clear
					;;

					10)
						clear
					;;

					11)
						clear
					;;

					12)
						clear
					;;

					0)
						clear
						echo "Regresando al Gestor Principal"
						sleep 1.5s
						clear
						break
						;;
					*)
						clear
						echo "La opción ingresada es incorrecta."
						echo "Por favor inténtelo de nuevo"
						sleep 3s
						clear
					;;
				esac
			done
		;;

		2)
			while true
			do
				clear
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
				echo "              Bienvenido al Gestor de la Red"
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
          			echo
				echo "En este gestor hay múltiples funciones"
          			echo "Elija una acción"
          			echo "1- Ver Tarjetas PCi"
          			echo "2- Ver Datos"
				echo "3- Verificación de conexión"
			        echo "4- Resolver Nombre de Dominio"
          			echo "5- Ruteo"
          			echo "6- Lista de Host LAN"
          			echo "7- Sniffer"
          			echo "8- Configurar Red"
          			echo "9- Resolver Dirección IP"
          			echo "0- Salir"
         			read opcion_1
        			case $opcion_1 in
					1)
						clear
					;;

					2)
						clear
					;;

					3)
						clear
					;;

					4)
						clear
					;;

					5)
						clear
					;;

					6)
						clear
					;;

					7)
						clear
					;;

					8)
						clear
					;;

					9)
						echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
						echo "                    Resolver dirección IP"
						echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
						echo
						echo "Ingrese dirección IP"
						read dir
						
						IFS=$saveIFS
						IFS="."
						campo=($dir)
						saveIFS=$IFS
						
						
						if [ ${campo[0]} -ge 0 ] && [ ${campo[0]} -lt 128 ]
						then
							clase='A'
							netmask='255.0.0.0'
							format='R.H.H.H'
						fi
						if [ ${campo[0]} -ge 128 ] && [ ${campo[0]} -lt 192 ]
						then
							clase='B'
							netmask='255.255.0.0'
							format='R.R.H.H'
							
						elif [ ${campo[0]} -ge 192 ] && [ ${campo[0]} -lt 224 ]
						then
							clase='C'
							netmask='255.255.255.0'
							format='R.R.R.H'
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
						
						#else
						#	echo "Ip no valida"
						#	sleep 1.5s
						#	exit #break	
						fi
						
						#Broadcast.
						broadcast="${campo[0]}.${campo[1]}.${campo[2]}.255"
						
						#Red
						red="${campo[0]} ${campo[1]} ${campo[2]} 0"
						
						#NetID
						netID="${campo[0]}.${campo[1]}.${campo[2]}"
						
						#HostID
						hostID="${campo[3]}"

						#Uso 
						if [ ${campo[3]} -eq "255" ] #error
						then
							uso='Red'
						elif [ ${campo[3]} -eq "0" ] #error
						then
							uso='Broadcast'
						fi
						
						echo 'Dirección ip|Clase|Formato |Máscara de red|Broadcast|   Red   |  NetID  |HostID|  Uso  '
						echo $dir + $clase + $format + $netmask + $broadcast + $red + $netID + $hostID + $uso
						read -p  "Presione enter para continuar..."
					;;

					0)
						clear
						echo "Regresando al Gestor Principal"
						sleep 1.5s
						clear
						break
					;;

					*)
						clear
						echo "La opción ingresada es incorrecta."
						echo "Por favor inténtelo de nuevo"
						sleep 3s
						clear
					;;
				esac
			done
		;;

		3)
			while true
			do
				clear
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
				echo "            Bienvenido al Gestor de Seguridad"
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
          			echo
				echo "En este gestor hay múltiples funciones"
          			echo "Elija una acción"
          			echo "1- Actualizar Seguridad"
          			echo "2- Limpiar Navegador ( Cookies / Historial)"
          			echo "3- Establecer Política en el Firewall"
          			echo "4- Agregar Regla al Firewall"
          			echo "5- Activar FWD"
          			echo "6- Permitir Servicio"
          			echo "7- Ver App"
          			echo "8- Cambiar permisos"
          			echo "0- Salir"
         			read opcion_1
        			case $opcion_1 in
					1)
						clear
					;;

					2)
						clear
					;;

					3)
						clear
					;;

					4)
						clear
					;;

					5)
						clear
					;;

					6)
						clear
					;;

					7)
						clear
					;;

					8)
						clear
					;;

					0)
						clear
						echo "Regresando al Gestor Principal"
						sleep 1.5s
						clear
						break
					;;

					*)
						clear
						echo "La opción ingresada es incorrecta."
						echo "Por favor inténtelo de nuevo"
						sleep 3s
						clear
					;;
				esac
			done
		;;

		4)
			while true
			do
				clear
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
				echo "           Bienvenido al Gestor de los Usuarios"
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
          			echo
				echo "En este gestor hay múltiples funciones"
         	 		echo "Elija una acción"
          			echo "1- Crear Usuario"
          			echo "2- Eliminar Usuario"
          			echo "3- Crear Grupo"
          			echo "4- Eliminar Grupo"
          			echo "5- Agregar Usuario a un Grupo"
          			echo "6- Bloquear Usuario"
          			echo "7- Desbloquear Usuario"
          			echo "8- Temporizar Usuario"
          			echo "9- Ver datos Usuarios"
          			echo "10- Agregar Grupo de Super Usuarios ( Sudoers )"
          			echo "11- Cambiar nombre a un usuario"
          			echo "0- Salir"
         			read opcion_1
        			case $opcion_1 in
					1)
						while true
						do
							clear
							echo "==================================================================="
						        echo "                        Crear Usuario"		#Título de la opción
						        echo "==================================================================="
							echo "Seleccione modalidad de creado"
							echo "1- Rápido"
							echo "2- Con más datos"
							echo "0- Salir"
							read opcion_2
							case $opcion_2 in
								1)
									echo "Modo Rápido"
									echo "Ingrese el nombre de Usuario a crear"
									read nombre #Captura el nombre que introduce el usuario
									sudo useradd $nombre #Agrega un usuario con el nombre que se obtuvo
								;;
								2)
									echo "Modo Con Datos"
									echo "Ingrese el nombre de Usuario a crear" #Le indica al usuario lo que debe hacer
									read nombre #Captura el nombre que introduce el usuario
									sudo adduser $nombre #Agrega un usuario con el nombre que se obtuvo
								;;
								0)
									clear
									echo "Volviendo al Gestor de Usuario"
									sleep 1.5s
									clear
									break
								;;

								*)
									clear
									echo "La opción ingresada es incorrecta."
									echo "Por favor inténtelo de nuevo"
									sleep 3s
									clear
								;;
							esac
						done
					;;

					2)
						clear #Limpia la pantalla para que el usuario pueda ver mejor
						echo "==================================================================="
						echo "                        Eliminar Grupo"		#Título de la opción
						echo "==================================================================="
						echo "Ingrese el nombre de Usuario o Grupo con el que se trabajara" #Le indica al usuario lo que debe hacer
						read nombre #Captura el nombre que introduce el usuario
						sudo delgroup $nombre #Elimina un grupo con el nombre que se obtuvo
					;;

					3)
						clear #Limpia la pantalla para que el usuario pueda ver mejor
						echo "==================================================================="
						echo "                        Crear Grupo"		#Título de la opción
						echo "==================================================================="
						echo "Ingrese el nombre de Usuario o Grupo con el que se trabajara" #Le indica al usuario lo que debe hacer
						read nombre #Captura el nombre que introduce el usuario
						sudo addgroup $nombre #Agrega un grupo con el nombre que se obtuvo
					;;

					4)
						clear #Limpia la pantalla para que el usuario pueda ver mejor
						echo "==================================================================="
						echo "                        Eliminar Grupo"		#Título de la opción
						echo "==================================================================="
						echo "Ingrese el nombre de Usuario o Grupo con el que se trabajara" #Le indica al usuario lo que debe hacer
						read nombre #Captura el nombre que introduce el usuario
						sudo delgroup $nombre #Elimina un grupo con el nombre que se obtuvo
					;;

					5)
						clear
						echo "==================================================================="
						echo "                        Agregar a Grupo"		#Título de la opción
						echo "==================================================================="
						echo "Ingrese el nombre de Usuario"
						read usuario
						echo "Ahora ingrese el nombre del grupo al que se le va a agregar"
						read group
						sudo addgroup $usuario $group
						echo "El usuario " $usuario " fue agregado al grupo " $group
					;;

					6)
						clear #Limpia la pantalla para que el usuario pueda ver mejor
						echo "==================================================================="
						echo "                         Bloquear Usuario"	#Título de la opción
						echo "==================================================================="
						echo "Ingrese el nombre de Usuario o Grupo con el que se trabajara" #Le indica al usuario lo que debe hacer
						read nombre #Captura el nombre que introduce el usuario
						sudo usermod -L $nombre #Bloquea al usuario con el nombre que se obtuvo
					;;

					7)
						clear #Limpia la pantalla para que el usuario pueda ver mejor
						echo "==================================================================="
						echo "                       Desbloquear Usuario"	#Título de la opción
						echo "==================================================================="
						echo "Ingrese el nombre de Usuario o Grupo con el que se trabajara" #Le indica al usuario lo que debe hacer
						read nombre #Captura el nombre que introduce el usuario
						sudo usermod -U $nombre #Desbloquea al usuario con el nombre que se obtuvo
					;;

					8)
						clear #Limpia la pantalla para que el usuario pueda ver mejor
						echo "==================================================================="
						echo "                       Desbloquear Usuario"	#Título de la opción
						echo "==================================================================="
						echo "Ingrese el nombre de Usuario o Grupo con el que se trabajara" #Le indica al usuario lo que debe hacer
						read usuaio
						echo "Ingrese fecha de bloqueo con guiones (ejemplo año-mes-día)"
						read fecha
						sudo usermod -e $fecha $usuario
						echo "Listo"
					;;

					9)
						while true
						do
							clear #Limpia la pantalla para que el usuario pueda ver mejor
							echo "==================================================================="
							echo "                        Datos de los usuario"	#Título de la opción
							echo "==================================================================="
							echo "Ingrese opcion"
							echo "1- Datos en el fichero de usuarios"
							echo "2- Datos de un usuario en especifico"
							echo "0- Salir"
							read opcion_2
							case $opcion_2 in
								1)
									tac /etc/passwd|head -n 10 #Muestra en pantalla el documento passwd, donde se guarda la información de todos los usuarios, de abajo para arriba
									 echo  #Luego, solo muestra las primeras 10 líneas, que es donde se encuentra la información de los usuarios
									 echo "Presione una tecla" #Le indica al usuario como continuar
									 read #Permite esperar a que el usuario presione una tecla antes de volver al menú principal
								;;
								2)
									echo "Ingrese el nombre del usuario al que se le quieren ver los datos"
									read usario
									id $usuario
								;;
								0)
									clear
									echo "Volviendo al Gestor de Usuario"
									sleep 1.5s
									clear
									break
								;;

								*)
									clear
									echo "La opción ingresada es incorrecta."
									echo "Por favor inténtelo de nuevo"
									sleep 3s
									clear
								;;
							esac
						done
					;;

					10)
						clear
						clear #Limpia la pantalla para que el usuario pueda ver mejor
						echo "==================================================================="
						echo "                        Hacer SUDO"	#Título de la opción
						echo "==================================================================="
						echo "Ingrese nombre del usuario que se quiere dar el permiso de sudo"
						read usuario
						sudo usermod -aG sudo $usuario
						echo "El usuario " $usuario " ahora es un super usuario"
					;;
					11)
						clear #Limpia la pantalla para que el usuario pueda ver mejor
						echo "==================================================================="
						echo "                    Cambiar nombre de Usuario"		#Título de la opción
						echo "==================================================================="
						
					;;

					0)
						clear
						echo "Regresando al Gestor Principal"
						sleep 1.5s
						clear
						break
					;;

					*)
						clear
						echo "La opción ingresada es incorrecta."
						echo "Por favor inténtelo de nuevo"
						sleep 3s
						clear
					;;
				esac
			done
		;;

		5)
			while true
			do
				clear
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
				echo "          Bienvenido al Gestor de los Servicios"
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
        			echo
				echo "En este gestor hay múltiples funciones"
          			echo "Elija una acción"
         		 	echo "1- Instalar Servicios"
          			echo "2- Editar o Configurar Servicios"
          			echo "3- Reiniciar Servicio"
          			echo "4- Detener Servicio"
          			echo "5- Arrancar Servicio"
          			echo "0- Salir"
         			read opcion_1
        			case $opcion_1 in
					1)
						clear
					;;

					2)
						clear
					;;

					3)
						clear
					;;

					4)
						clear
					;;

					5)
						clear
					;;

					0)
						clear
						echo "Regresando al Gestor Principal"
						sleep 1.5s
						clear
						break
					;;
					*)
						clear
						echo "La opción ingresada es incorrecta."
						echo "Por favor inténtelo de nuevo"
						sleep 3s
						clear
					;;
				esac
			done
		;;

		6)
			while true
			do
				clear
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
				echo "    Bienvenido al Gestor de los Procesos y Memoria"
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
          			echo
				echo "En este gestor hay múltiples funciones"
          			echo "Elija una acción"
          			echo "1- Ver Memoria Ram total y Disponible"
          			echo "2- Ver uso del Procesador"
          			echo "3- Ver Procesos"
          			echo "4- Eliminar Procesos"
          			echo "5- Uso de las particiones"
          			echo "0- Salir"
         			read opcion_1
        			case $opcion_1 in
					1)
						clear
					;;

					2)
						clear
					;;

					3)
						clear
					;;

					4)
						clear
					;;

					5)
						clear
					;;

					0)
						clear
						echo "Regresando al Gestor Principal"
						sleep 1.5s
						clear
						break
					;;

					*)
						clear
						echo "La opción ingresada es incorrecta."
						echo "Por favor inténtelo de nuevo"
						sleep 3s
						clear
					;;
				esac
			done
		;;

		7)
			while true
			do
				clear
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
				echo "    Bienvenido al Gestor de ?"
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
          			echo
				echo "En este gestor no hay múltiples funciones"
          			echo "Elija una acción"
          			echo "0- Salir"
			        read opcion_1
			        case $opcion_1 in
					0)
						clear
						echo "Regresando al Gestor Principal"
						sleep 1.5s
						clear
						break
					;;
					*)
						clear
						echo "La opción ingresada es incorrecta."
						echo "Por favor inténtelo de nuevo"
						sleep 3s
						clear
					;;
				esac
			done
		;;
		8)
			clear
			echo "¡Gracias por utilizar el programa!"
			sleep 1s
			clear
			exit
		;;

		0)
			clear
			echo "¡Gracias por utilizar el programa!"
			sleep 1.5s
			clear
			break
		;;

		*)
			clear
			echo "La opción ingresada es incorrecta."
			echo "Por favor inténtelo de nuevo"
			sleep 3s
			clear
		;;
	esac
done
