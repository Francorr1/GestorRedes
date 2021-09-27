#!/bin/bash
#  Mateo
while true
do
	
	echo "Bienvenido al gestor del Sistema operativo"
	echo
	echo "1) Sistema y sistema de archivos"
	echo "2) Red"
	echo "3) Seguridad"
	echo "4) Usuarios"
	echo "5) Procesos y memoria"
	echo "6) Servicios"
	echo "0) Salir"
	read option
	
	case $option in
		
		1)
			while true
			do
			
				clear
				echo "Bienvenido al gestor del sistema y el sistema de archivos"
				echo
				echo "1) Actualizar sistema"
				echo "2) Versión del Sistema Operativo"
				echo "3) Crear directorio"
				echo "4) Mover"
				echo "5) Copiar"
				echo "6) Eliminar"
				echo "7) Cambiar nombre"
				echo "8) Tamaño o propiedades"
				echo "9) Ver atributos"
				echo "10) Cambiar permisos"
				echo "11) Cambiar propietario"
				echo "12) Ver unidades"
				echo "0) Volver"
				read option1
				
				case $option1 in
					
					1)
					;;
					2)
					;;
					3)
					;;
					4)
					;;
					5)
					;;
					6)
					;;
					7)
					;;
					8)
					;;
					9)
					;;
					10)
					;;
					11)
					;;
					12)
					;;
					0)
						echo "Volviendo al menú anterior..."
						sleep 1s
						break
					;;
					*)
						clear
						echo "La opción ingresada no es correcta"
						echo "Inténtelo de nuevo"
					;;			
					
				esac
			done
		;;
		2)
			while true
			do
				clear
				echo "Bienvenido al gestor de red"
				echo 
				echo "1) Ver tarjetas en puertos PCI"
				echo "2) Ver datos"
				echo "3) Verificar conectvidad"
				echo "4) Resolver nombre de dominio"
				echo "5) Ruteo"
				echo "6) Listar host en red LAN"
				echo "7) Sniffer"
				echo "8) Configurar red"
				echo "9) Resolver dirección IP"
				echo "0) Volver"
				read option2
				
				case $option2 in
					
					1)
					;;
					2)
					;;
					3)
					;;
					4)
					;;
					5)
					;;
					6)
					;;
					7)
					;;
					8)
					;;
					9)
					;;
					0)
						echo "Volviendo al menú anterior..."
						sleep 1s
						break
					;;
					*)
						clear
						echo "La opción ingresada no es correcta"
						echo "Inténtelo de nuevo"
					;;	
					
				esac
			done
		;;
		3)
			while true
			do
				
				clear
				echo "Bienvenido al gestor de la seguridad"
				echo
				echo "1) Actualizar seguridad"
				echo "2) Limpiar navegador"
				echo "3) Establecer política de firewall"
				echo "4) Agregar regla al firewall"
				echo "5) Activar FWD"
				echo "6) Permitir servicio"
				echo "7) Ver APP"
				echo "8) CAmbiar permisos"
				echo "0) Volver"
				read option3
				
				case $option3 in
					
					1)
					;;
					2)
					;;
					3)
					;;
					4)
					;;
					5)
					;;
					6)
					;;
					7)
					;;
					8)
					;;
					0)
						echo "Volviendo al menú anterior..."
						sleep 1s
						break
					;;
					*)
						clear
						echo "La opción ingresada no es correcta"
						echo "Inténtelo de nuevo"
					;;
					
				esac
				
			done
		;;
		4)
			while true
			do
				
				clear
				echo "Bienvenido al gestor de usuarios"
				echo
				echo "1) Configuración de usuarios"
				echo "2) Configuración de grupos"
				echo "0) Volver"
				read option4
				
				case $option4 in
					
					1)
						clear
						while true
						do
							
							echo "Bienveido a la configuración de usuarios"
							echo
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
							echo "0) Volver"
							read subOption4
							
							case $subOption4 in
								
								1)
									echo "Ingrese el nombre del usuario a añadir (Sin utilizar eltras mayúsculas)"
									read nombreUsuario

									sudo useradd $nombreUsuario
								;;
								2)
									echo "Ingrese el nombre del usuario a añadir"
									read nombreUsuario
									echo "Se le solicitará la información necesaria"
									sleep 1s
								;;
								3)
									echo "Ingrese el nombre actual del usuario"
									read usuarioActual
									echo "Ingrese el nombre que le desea poner al usuario"
									read usuarioQuerido

									sudo usermod -l $usuarioQuerido $usuarioActual
								;;
								4)
									echo "Se mostrarán todos los usuarios"
	
									tac /etc/passwd | head -n 5
									read -p "Presione enter para continuar..."
								;;
								5)
									echo "Ingrese el nombre del usuario sobre el que quiera mostar los datos"
									read nombreUsuario
									
									id $nombreUsuario
									read -p "Presione enter para continuar..."
								;;
								6)
									echo "Ingrese el nombre del usuario que quiera eliminar"
									read nombreUsuario

									sudo deluser $nombreUsuario
								;;
								7)
									echo "Ingrese el nombre del usuario a bloquear"
									read nombreUsuario

									sudo usermod -L $nombreUsuario
								;;
								8)
									echo "Ingrese el nombre del usuario a desbloquear"
									read nombreUsuario

									sudo usermod -U $nombreUsuario
								;;
								10)
									echo "Ingrese el nombre del usuario que quiera añadir al grupo de sudoers"
									read nombreUsuario

									sudo usermod -aG sudo $nombreUsuario
								;;
								0)
									echo "Volviendo al menú anterior..."
									sleep 1s
									break
								;;
								*)
									clear
									echo "La opción ingresada no es correcta"
									echo "Inténtelo de nuevo"
								;;
								
							esac
							
						done
					;;
					2)
						while true
						do
							
							clear
							echo "Bienvenido a la configuración de grupos"
							echo
							echo "1) Crear grupo"
							echo "2) Eliminar grupo"
							echo "3) Añadir un usuario a un grupo"
							echo "0) Volver"
							read subOption42
							
							case $subOption42 in
								
								1)
									echo "Ingrese el nombre del grupo que se desea crear"
									read nombreGrupo

									sudo addgroup $nombreGrupo
								;;
								2)
									echo "Ingrese el nombre del grupo que quiera eliminar"
									read nombreGrupo

									sudo delgroup $nombreGrupo
								;;
								3)
									echo "Ingrese el nombre del usuario"
									read nombreUsuario
									echo "Ingrese el nombre del grupo al que se quiere añadir el usuario anterior"
									read nombreGrupo
									echo "¿Desearía eliminar a ese usuario de todos los demás grupos que no sean el especificado? (s/n)"
									read miniopcion
									
									if $miniopcion == 's'
									then
										sudo usermod -aG $nombreGrupo $nombreUsuario
									else
										sudo usermod -G $nombreGrupo $nombreUsuario
									fi
								;;
								0)
									echo "Volviendo al menú anterior..."
									sleep 1s
									break
								;;
								*)
									clear
									echo "La opción ingresada no es correcta"
									echo "Inténtelo de nuevo"
								;;
								
							esac
							
						done
					;;
					0)
						echo "Volviendo al menú anterior..."
						sleep 1s
						break
					;;
					*)
						clear
						echo "La opción ingresada no es correcta"
						echo "Inténtelo de nuevo"
					;;
					
				esac	
				
				
			done			
		;;
		5)
			while true
			do
				
				clear
				echo "Bienvenido al gestor de procesos y memoria"
				echo 
				echo "1) Ver memoria ram total y disponible"
				echo "2) Ver uso del procesador"
				echo "3) Ver procesos"
				echo "4) Eliminar procesos"
				echo "5) Uso de las particiones"
				echo "0) Volver"
				read option5
				
				case $option5 in
					
					1)
					;;
					2)
					;;
					3)
					;;
					4)
					;;
					5)
					;;
					0)
						echo "Volviendo al menú anterior..."
						sleep 1s
						break
					;;
					*)
						clear
						echo "La opción ingresada no es correcta"
						echo "Inténtelo de nuevo"
					;;	
					
				esac
				
			done
		;;
		6)
			while true
			do
				
				clear
				echo "Bienvenido al gestor de servicios"
				echo
				echo "1) Instalar"
				echo "2) Configuración"
				echo "3) Reiniciar"
				echo "4) Detener"
				echo "5) Iniciar"
				echo "0) Volver"
				read option6
				
				case $option6 in
					
					1)
					;;
					2)
					;;
					3)
					;;
					4)
					;;
					5)
					;;
					0)
						echo "Volviendo al menú anterior..."
						sleep 1s
						break
					;;
					*)
						clear
						echo "La opción ingresada no es correcta"
						echo "Inténtelo de nuevo"
					;;
					
				esac
				
			done
		;;
		0)
			clear
			echo "Gracias por utilizar este programa"
			sleep 1.5s
			exit
		;;
		*)
			clear
			echo "La opción ingresada no es correcta"
			echo "Inténtelo de nuevo"
		;;
		
	esac
	
done
