#!/bin/bash

#Colours
gC="\e[0;32m\033[1m"
endC="\033[0m\e[0m"
rC="\e[0;31m\033[1m"
bC="\e[0;34m\033[1m"
yC="\e[0;33m\033[1m"
pC="\e[0;35m\033[1m"
tuC="\e[0;36m\033[1m"
grC="\e[0;37m\033[1m"



#Variables

trap ctrl_c INT

#Funciones

function ctrl_c(){
	echo -e "\n\n${rC} [!] ${endC}${gC}Saliendo ...${endC}"
	tput cnorm;exit 0
}

function help(){
	echo -e "\n ${rC}[-]${endC} ${grC}Uso $0:${endC}"
	echo -e "\n ${yC}[!]${endC} ${bC}Opciones:${endC} ${grC}$0${endC}"
	echo -e "\t ${bC}s)${endC} ${gC}Start Mode:${endC}"
	echo -e "\t\t${tuC}- Ej: -s ${endC}"
	echo -e "\t ${bC}h)${endC} ${gC}Helper Menu:${endC}"
	echo -e "\t\t${tuC}- Ej: -h ${endC}"
}

function clamav(){

	clear
	echo -e "\n\n${rC} [Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
	echo -e "\n\n${yC} [*]${endC}${grC} Verificando Dependecia clamav:${endC}"
	echo -e "\n\t${bC} [-]${endC}${grC} Buscando${endC}"
	sleep .5
	clear
	echo -e "\n\n${rC} [Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
	echo -e "\n\n${yC} [*]${endC}${grC} Verificando Dependecia clamav:${endC}"
	echo -e "\n\t${bC} [/]${endC}${grC} Buscando .${endC}"
	sleep .5
	clear
	echo -e "\n\n${rC} [Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
	echo -e "\n\n${yC} [*]${endC}${grC} Verificando Dependecia clamav:${endC}"
	echo -e "\n\t${bC} [|]${endC}${grC} Buscando ..${endC}"
	sleep .5
	clear
	echo -e "\n\n${rC} [Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
	echo -e "\n\n${yC} [*]${endC}${grC} Verificando Dependecia clamav:${endC}"
	echo -e "\n\t${bC} [\]${endC}${grC} Buscando ...${endC}"
	sleep .5

	which clamscan >/dev/null 2>&1
	checkClam=$?

	if [[ $checkClam == "0" ]]; then
		clear
		echo -e "\n\n${rC} [Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
		echo -e "\n\n${yC} [*]${endC}${grC} Verificando Dependencia clamav:${endC} ${yC} ...... ${endC}${bC}[V]${endC}"

		echo -e "\n\t${rC}[*]${endC} ${gC}La Dependencia ${endC}${bC}Clamav${endC} ${gC}esta instalado.${endC}"

		sleep 4

		clear
		echo -e "\n\n${rC}[Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
		echo -e "\n\t${rC}[-]${endC} ${gC}Deteniendo el servicio ${endC}${bC}Clamav${endC} ${gC}.${endC}"
		sleep 1
		clear
		echo -e "\n\n${rC}[Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
		echo -e "\n\t${rC}[\]${endC} ${gC}Deteniendo el servicio ${endC}${bC}Clamav${endC} ${gC}.${endC}"
		sleep 1
		clear
		echo -e "\n\n${rC}[Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
		echo -e "\n\t${rC}[|]${endC} ${gC}Deteniendo el servicio ${endC}${bC}Clamav${endC} ${gC}..${endC}"
		sleep 1
		clear
		echo -e "\n\n${rC}[Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
		echo -e "\n\t${rC}[/]${endC} ${gC}Deteniendo el servicio ${endC}${bC}Clamav${endC} ${gC}...${endC}"
		sleep 1

		service clamav-freshclam stop >/dev/null 2>&1
		service clamd stop && systemctl disable clamd >/dev/null 2>&1

		clear
		echo -e "\n\n${rC}[Â¡]${endC} ${grC}Sistema Operativo:${endC}${pC} $osc${endC}"
		echo -e "\n\t${rC}[/]${endC} ${gC} El servicio ${endC}${bC}Clamav${endC} ${gC} se detuvo con exito.${endC}"

		clear
		echo -e "\n\n${rC}[Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
		echo -e "\n\t${rC}[-]${endC} ${gC}Desinstalando ${endC}${bC}Clamav${endC} ${gC}.${endC}"
		sleep 1
		clear
		echo -e "\n\n${rC}[Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
		echo -e "\n\t${rC}[\]${endC} ${gC}Desinstalando ${endC}${bC}Clamav${endC} ${gC}.${endC}"
		sleep 1
		clear
		echo -e "\n\n${rC}[Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
		echo -e "\n\t${rC}[|]${endC} ${gC}Desinstalando ${endC}${bC}Clamav${endC} ${gC}..${endC}"
		sleep 1
		clear
		echo -e "\n\n${rC}[Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
		echo -e "\n\t${rC}[/]${endC} ${gC}Desinstalando ${endC}${bC}Clamav${endC} ${gC}...${endC}"
		sleep 1

		apt-get remove clamv -y >/dev/null 2>&1

		clear
		echo -e "\n\n${rC}[Â¡]${endC} ${grC}Sistema Operativo:${endC}${pC} $osc${endC}"
		echo -e "\n\t${rC}[/]${endC} ${gC} La dependencia ${endC}${bC}Clamav${endC} ${gC} se desinstalo con exito.${endC}"

		sleep 4

		clear
		echo -e "\n\n${rC}[Â¡]${endC} ${grC}Sistema Operativo:${endC}${pC} $osc${endC}"
		echo -e "\n${rC}[!]${endC} Instalado Sophos Antivirus ..."



	else
		clear
		echo -e "\n\n${rC} [Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
		echo -e "\n\n${yC} [*]${endC}${grC} Verificando Dependencia clamav:${endC} ${yC} ...... ${endC}${bC}[X]${endC}"

		echo -e "\n\t${rC}[!]${endC} ${gC}La Dependencia ${endC}${bC}Clamav${endC} ${gC} no esta instalado.${endC}"

		echo -e "\n${bC} [*]${endC}${gC} Instalando Dependencia ...${endC}"

		sleep 3
		apt-get install clamav -y >/dev/null 2>&1

		clear

		echo -e "\n\n${rC} [Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
		echo -e "\n\n${yC} [*]${endC}${grC} Verificando Dependencia clamav:${endC} ${yC} ...... ${endC}${bC}[V]${endC}"
		sleep 3
		echo -e "\n\t${rC}[*]${endC} ${gC}La Dependencia ${endC}${bC}Clamav${endC} ${gC}esta instalada.${endC}"

		sleep 5
		clear
		echo -e "\n\n${rC} [Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
		echo -e "\n\n${yC} [-]${endC}${grC} Iniciando servicio ${endC}${bC} clamd ${endC}"
		sleep 1
		clear
		echo -e "\n\n${rC} [Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
		echo -e "\n\n${yC} [\]${endC}${grC} Iniciando servicio ${endC}${bC} clamd ${endC}"
		sleep 1
		clear
		echo -e "\n\n${rC} [Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
		echo -e "\n\n${yC} [|]${endC}${grC} Iniciando servicio ${endC}${bC} clamd ${endC}"
		sleep 1
		clear
		echo -e "\n\n${rC} [Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
		echo -e "\n\n${yC} [/]${endC}${grC} Iniciando servicio ${endC}${bC} clamd ${endC}"
		sleep 1
		clear
		echo -e "\n\n${rC} [Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
		echo -e "\n\n${yC} [*]${endC}${grC} Servicio ${bC}clamd${endC}${grC} corriendo.${endC}"


		service clamd start >/dev/null 2>&1
		service clamav-freshclam >/dev/null 2>&1

	fi

	updateOs

}

function epel(){
	clear
	echo -e "\n\n${rC} [Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
	echo -e "\n\t${yC} [-]${endC}${grC} Verificando el servicio${endC}${bC} Epel ${endC}"
	sleep .5
	clear
	echo -e "\n\n${rC} [Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
	echo -e "\n\t${yC} [/]${endC}${grC} Verificando el servicio${endC}${bC} Epel ${endC}"
	sleep .5
	cliear
	echo -e "\n\n${rC} [Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
	echo -e "\n\t${yC} [|]${endC}${grC} Verificando el servicio${endC}${bC} Epel ${endC}"
	sleep .5
	clear
	echo -e "\n\n${rC} [Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
	echo -e "\n\t${yC} [\]${endC}${grC} Verificando el servicio${endC}${bC} Epel ${endC}"
	sleep .5

	clear
	echo -e "\n\n${rC} [Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
	echo -e "\n\t${yC} [*]${endC}${grC} El servicio${endC}${bC} Epel ${endC}${grC} no esta intalado${endC}"

	echo -e "\n\t${bC} [*]${endC}${gC} Instalando Dependencia ...${endC}"

	wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm >/dev/null 2>&1
	sudo yum install epel-release-latest-7.noarch.rpm -y >/dev/null 2>&1

	echo -e "\n\n${yC} [*]${endC}${grC} Verificando Dependencia Epel:${endC} ${yC} ...... ${endC}${bC}[V]${endC}"
	sleep 3
	echo -e "\n\t${rC}[*]${endC} ${gC}La Dependencia ${endC}${bC}Epel${endC} ${gC}esta instalado.${endC}"

	updateOs
}

function updateOs(){


	if [[ $checkUbu == "1" ]]; then
		clear
		echo -e "\n\n${rC} [Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
		echo -e "\n\n${yC} [*]${endC}${grC} Actualizando.${endC}"
		echo -e "\n\t${yC} [\]${endC}${grC} Actualizando los repositorios del sistema operativo${endC}"
		sleep 1
		clear
		echo -e "\n\n${rC} [Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
		echo -e "\n\n${yC} [*]${endC}${grC} Actualizando..${endC}"
		echo -e "\n\t${yC} [|]${endC}${grC} Actualizando los repositorios del sistema operativo${endC}"
		sleep 1
		clear
		echo -e "\n\n${rC} [Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
		echo -e "\n\n${yC} [*]${endC}${grC} Actualizando...${endC}"
		echo -e "\n\t${yC} [/]${endC}${grC} Actualizando los repositorios del sistema operativo${endC}"
		sleep 1
		clear
		echo -e "\n\n${rC} [Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
		echo -e "\n\n${yC} [*]${endC}${grC} Actualizando....${endC}"
		echo -e "\n\t${yC} [-]${endC}${grC} Actualizando los repositorios del sistema operativo${endC}"
		sleep 1

		sudo apt-get update -y >/dev/null 2>&1

		echo -e "\n${rC}[!]${endC}${bC} Los repositorios estan Actualizados.${endC}"

	else
		clear
		echo -e "\n\n${rC} [Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
		echo -e "\n\n${yC} [*]${endC}${grC} Actualizando.${endC}"
		echo -e "\n\t${yC} [\]${endC}${grC} Actualizando los repositorios del sistema operativo${endC}"
		sleep 1
		clear
		echo -e "\n\n${rC} [Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
		echo -e "\n\n${yC} [*]${endC}${grC} Actualizando..${endC}"
		echo -e "\n\t${yC} [|]${endC}${grC} Actualizando los repositorios del sistema operativo${endC}"
		sleep 1
		clear
		echo -e "\n\n${rC} [Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
		echo -e "\n\n${yC} [*]${endC}${grC} Actualizando...${endC}"
		echo -e "\n\t${yC} [/]${endC}${grC} Actualizando los repositorios del sistema operativo${endC}"
		sleep 1
		clear
		echo -e "\n\n${rC} [Â¡]${endC}${grC} Sistema Operativo:${endC}${pC} $osc${endC}"
		echo -e "\n\n${yC} [*]${endC}${grC} Actualizando....${endC}"
		echo -e "\n\t${yC} [-]${endC}${grC} Actualizando los repositorios del sistema operativo${endC}"
		sleep 1
		sudo yum update -y >/dev/null 2>&1

		echo -e "\n${rC}[!]${endC}${bC} Los repositorios estan Actualizados.${endC}"
	fi



}

function start(){

	clear
	echo -e "\n\n${grC} [*] ${endC}${bC}Identificando Sistema Operativo .${endC}"
	sleep .5
	clear
	echo -e "\n\n${grC} [*] ${endC}${bC}Identificando Sistema Operativo ..${endC}"
	sleep .5
	clear
	echo -e "\n\n${grC} [*] ${endC}${bC}Identificando Sistema Operativo ...${endC}"
	sleep .5

	Os=$(uname -a)
	Cos=$(cat /etc/os-release | grep -v "CentOs")

	OsUbu=$(echo $Os | grep "Ubuntu")
	checkUbu=$?
#	checkUbu
	OsCent=$(echo $Cos | grep "CentOS")
	checkCent=$?
#	echo $checkCent

	if [[ $checkUbu == "0" ]]; then
		echo -e "\n${yC} [!] ${endC}${bC} El sistema Operativo es Ubuntu.${endC}"
		echo -e "\n\t${rC} [*] ${endC}${bC} La version es: ${endC}${grC}$Os${endC}"
		osc=Ubuntu
		sleep 5
		clamav

	elif [[ $checkCent == "0" ]]; then
		echo -e "\n${yC} [!] ${endC}${bC} El sistema Operativo es CentOs.${endC}"
		echo -e "\n\t${rC} [*] ${endC}${bC} La version es: ${endC}${grC}$Os${endC}"
		osc=CentOs
		sleep 5

		epel

	else
		echo -e "\n\t${rC} [!] ${endC}${gC} No es un sistema permitido! ${endC}${grC}$os${endC}"
		tput cnorm;exit 0

	fi
}


#Main


if [ "$(/usr/bin/id -u)" == "0" ]; then
        declare -i noCheck=0;declare -i help=0;declare -i parameter_c=0
        while getopts ":sh" arg; do
                case $arg in
                        s)start=$OPTARG; let parameter_c+=1;;
                        h)help=1;;
                        \?)no=$OPTARG; echo -e "\n${rC}[!]${endC} ${rC}-$no${end} ${grC}es un argumento no valido.${endC}" >&2; tput cnorm;exit 0
                esac
        done
        if [ $parameter_c -ne 1 ]; then
                if [[ $help == 1 ]]; then
                        help
                else
                        help
                fi
        else
		if [ $parameter_c == 1 ]; then
			tput civis
			start
			tput cnorm
		fi
        fi
else
        echo -e "${yC}\n [!]${endC}${rC} Se necesitan persimos root para ejecutar el programa.${endC}"
        help
fi
