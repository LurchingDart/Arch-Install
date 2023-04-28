#!/bin/bash

#--------------------------------------
#  ┬  ┬┌─┐┬─┐┬┌─┐┌─┐┌  ┌─┐┌─┐
#  └┐┌┘├─┤├┬┘│├─┤├─┤│  ├─ └─┐
#   └┘ ┴ ┴┴└─┴┴ ┴└─┘└─┘└─┘┴─┘
#--------------------------------------

    CNE=$(tput setaf 0) # Negro
    CRE=$(tput setaf 1) # Rojo
    CGR=$(tput setaf 2) # Verde
    CYE=$(tput setaf 3) # Amarillo
    CBL=$(tput setaf 4) # Azul
    CMA=$(tput setaf 5) # Morado
    CCY=$(tput setaf 6) # Cyan
    CWH=$(tput setaf 7) # Blanco
    CNC=$(tput sgr0)    # Reset
    CHROOT="arch-chroot /mnt"

    intro () {
        printf "
        %s
                            ███▄ ▄███▓ ▄▄▄      ▓█████▄ ▓█████     ▄▄▄▄ ▓██   ██▓                                   -------------------------------------------------
                            ▓██▒▀█▀ ██▒▒████▄    ▒██▀ ██▌▓█   ▀    ▓█████▄▒██  ██▒                                  - LurchingDart
                            ▓██    ▓██░▒██  ▀█▄  ░██   █▌▒███      ▒██▒ ▄██▒██ ██░                                  - https://github.com/LurchingDart/Arch-Install
                            ▒██    ▒██ ░██▄▄▄▄██ ░▓█▄   ▌▒▓█  ▄    ▒██░█▀  ░ ▐██▓░                                  -
                            ▒██▒   ░██▒ ▓█   ▓██▒░▒████▓ ░▒████▒   ░▓█  ▀█▓░ ██▒▓░                                  - Inspired by
                            ░ ▒░   ░  ░ ▒▒   ▓▒█░ ▒▒▓  ▒ ░░ ▒░ ░   ░▒▓███▀▒ ██▒▒▒                                   - gh0stzk
                            ░  ░      ░  ▒   ▒▒ ░ ░ ▒  ▒  ░ ░  ░   ▒░▒   ░▓██ ░▒░                                   - https://github.com/gh0stzk/arch-install
                            ░      ░     ░   ▒    ░ ░  ░    ░       ░    ░▒ ▒ ░░                                    -
                                ░         ░  ░   ░       ░  ░    ░     ░ ░                                          - This script is developed for personal use
                                                ░                      ░░ ░                                         - and is not intended to be used by others.
                                                                        ░                                          - This was made for my specific hardware
        ██▓     █    ██  ██▀███   ▄████▄   ██░ ██  ██▓ ███▄    █   ▄████ ▓█████▄  ▄▄▄       ██▀███  ▄▄▄█████▓      - and is not guaranteed to work on yours.
        ▓██▒     ██  ▓██▒▓██ ▒ ██▒▒██▀ ▀█  ▓██░ ██▒▓██▒ ██ ▀█   █  ██▒ ▀█▒▒██▀ ██▌▒████▄    ▓██ ▒ ██▒▓  ██▒ ▓▒      - Use at your own risk.
        ▒██░    ▓██  ▒██░▓██ ░▄█ ▒▒▓█    ▄ ▒██▀▀██░▒██▒▓██  ▀█ ██▒▒██░▄▄▄░░██   █▌▒██  ▀█▄  ▓██ ░▄█ ▒▒ ▓██░ ▒░      -
        ▒██░    ▓▓█  ░██░▒██▀▀█▄  ▒▓▓▄ ▄██▒░▓█ ░██ ░██░▓██▒  ▐▌██▒░▓█  ██▓░▓█▄   ▌░██▄▄▄▄██ ▒██▀▀█▄  ░ ▓██▓ ░       - My hardware is:
        ░██████▒▒▒█████▓ ░██▓ ▒██▒▒ ▓███▀ ░░▓█▒░██▓░██░▒██░   ▓██░░▒▓███▀▒░▒████▓  ▓█   ▓██▒░██▓ ▒██▒  ▒██▒ ░       - CPU: Intel i7-12700H
        ░ ▒░▓  ░░▒▓▒ ▒ ▒ ░ ▒▓ ░▒▓░░ ░▒ ▒  ░ ▒ ░░▒░▒░▓  ░ ▒░   ▒ ▒  ░▒   ▒  ▒▒▓  ▒  ▒▒   ▓▒█░░ ▒▓ ░▒▓░  ▒ ░░         - GPU: Nvidia RTX 3070ti Mobile
        ░ ░ ▒  ░░░▒░ ░ ░   ░▒ ░ ▒░  ░  ▒    ▒ ░▒░ ░ ▒ ░░ ░░   ░ ▒░  ░   ░  ░ ▒  ▒   ▒   ▒▒ ░  ░▒ ░ ▒░    ░          - RAM: 16GB DDR4 3200MHz
        ░ ░    ░░░ ░ ░   ░░   ░ ░         ░  ░░ ░ ▒ ░   ░   ░ ░ ░ ░   ░  ░ ░  ░   ░   ▒     ░░   ░   ░              - SSD: 500GB NVMe M.2
            ░  ░   ░        ░     ░ ░       ░  ░  ░ ░           ░       ░    ░          ░  ░   ░                    - BOOT: UEFI
                                ░                                        ░                                        -------------------------------------------------
        %s
        " "$CMA" "$CNC"
        sleep 5
    }

    titleLogo () {
        local text="${1:?}"
        printf "
        %s
        ▄▄▄       ██▀███   ▄████▄   ██░ ██ 
        ▒████▄    ▓██ ▒ ██▒▒██▀ ▀█  ▓██░ ██▒
        ▒██  ▀█▄  ▓██ ░▄█ ▒▒▓█    ▄ ▒██▀▀██░
        ░██▄▄▄▄██ ▒██▀▀█▄  ▒▓▓▄ ▄██▒░▓█ ░██ 
        ▓█   ▓██▒░██▓ ▒██▒▒ ▓███▀ ░░▓█▒░██▓
        ▒▒   ▓▒█░░ ▒▓ ░▒▓░░ ░▒ ▒  ░ ▒ ░░▒░▒
        ▒   ▒▒ ░  ░▒ ░ ▒░  ░  ▒    ▒ ░▒░ ░
        ░   ▒     ░░   ░ ░         ░  ░░ ░
            ░  ░   ░     ░ ░       ░  ░  ░
                        ░                


        ██▓ ███▄    █   ██████ ▄▄▄█████▓ ▄▄▄       ██▓     ██▓    ▓█████  ██▀███  
        ▓██▒ ██ ▀█   █ ▒██    ▒ ▓  ██▒ ▓▒▒████▄    ▓██▒    ▓██▒    ▓█   ▀ ▓██ ▒ ██▒
        ▒██▒▓██  ▀█ ██▒░ ▓██▄   ▒ ▓██░ ▒░▒██  ▀█▄  ▒██░    ▒██░    ▒███   ▓██ ░▄█ ▒
        ░██░▓██▒  ▐▌██▒  ▒   ██▒░ ▓██▓ ░ ░██▄▄▄▄██ ▒██░    ▒██░    ▒▓█  ▄ ▒██▀▀█▄  
        ░██░▒██░   ▓██░▒██████▒▒  ▒██▒ ░  ▓█   ▓██▒░██████▒░██████▒░▒████▒░██▓ ▒██▒
        ░▓  ░ ▒░   ▒ ▒ ▒ ▒▓▒ ▒ ░  ▒ ░░    ▒▒   ▓▒█░░ ▒░▓  ░░ ▒░▓  ░░░ ▒░ ░░ ▒▓ ░▒▓░
        ▒ ░░ ░░   ░ ▒░░ ░▒  ░ ░    ░      ▒   ▒▒ ░░ ░ ▒  ░░ ░ ▒  ░ ░ ░  ░  ░▒ ░ ▒░
        ▒ ░   ░   ░ ░ ░  ░  ░    ░        ░   ▒     ░ ░     ░ ░      ░     ░░   ░ 
        ░           ░       ░                 ░  ░    ░  ░    ░  ░   ░  ░   ░     
        %s
        " "$CRE" "$CNC"
        printf ' \033[0;31m[ \033[34m%s\033[0m \033[0;31m]\033[0m\n\n' "${text}"
        sleep 2
    }

    title () {
        local text="${1:?}"
        printf " ${CYE}[ ${CMA}%s${CNC} ${CYE}]${CNC}\n\n" "${text}"
        sleep 2
    }

    text () {
        local text="${1:?}"
        local text2="${2:""}"
        printf " ${CBL}%s${CNC} ${CWH}%s${CNC}\n" "${text}" "${text2}"
    }

    errorsText () {
        local text="${1:?}"
        printf " ${CRE}%s${CNC}\n\n" "${text}"
        sleep 1
    }

    errorsTitle () {
        local text="${1:?}"
        printf " ${CYE}[ ${CRE}%s${CNC} ${CYE}]${CNC}\n\n" "${text}"
        sleep 1
    }

    successText () {
        local text="${1:?}"
        printf " ${CGR}%s${CNC}\n\n" "${text}"
        sleep 1
    }

    successTitle () {
        local text="${1:?}"
        printf " ${CYE}[ ${CGR}%s${CNC} ${CYE}]${CNC}\n\n" "${text}"
        sleep 1
    }

    warningText () {
        local text="${1:?}"
        printf " ${CYE}%s${CNC}\n\n" "${text}"
        sleep 1
    }

    warningTitle () {
        local text="${1:?}"
        printf " ${CRE}[ ${CYE}%s${CNC} ${CRE}]${CNC}\n\n" "${text}"
        sleep 1
    }

    questionsText() {
        local text="${1:?}"
        local response="${2:?}"
        local use_raw="${3:-false}"
        local password="${4:-false}"
        printf " ${CCY}%s${CNC}" "${text}"
        if [[ "$use_raw" == true && "$password" == true ]]; then
            read -rs "$response"
        elif [[ "$use_raw" == true ]]; then
            read -r "$response"
        else
            read "$response"
        fi
        printf "\n"
    }

    questionsTitle () {
        local text="${1:?}"
        local response="${2:?}"
        printf " ${CYE}[ ${CCY}%s${CNC} ${CYE}]${CNC}\n" "${text}"
        if [ "$use_raw" = true ]; then
            read -r "$response"
        elif [ "$password" = true ]; then
            read -rs "$response"
        else
            read "$response"
        fi
    }

    loadingAnimation() {
        local -r ancho_campo=10
        local -r ancho_asterisco=1
        local -r ancho_espacio=$((ancho_campo - ancho_asterisco))
        local -r patron_asterisco="* * *"
        local -r patron_espacio=$(printf "%${ancho_espacio}s")
        local -r patron="$patron_espacio${patron_asterisco}$patron_espacio"
        local -r longitud_patron=${#patron}
        local -i posicion=0
        local direccion=1
        local animando=true
        while [ $animando == true ]; do
            printf "\033[0;34m\r[\033[0m\033[1;93m%s\033[0m \033[0;34m]\033[0m" "${patron:posicion:ancho_campo}"
            posicion+=direccion
            if [ $posicion -lt 0 ]; then
                direccion=1
            elif [ $posicion -ge $((longitud_patron - ancho_campo)) ]; then
                direccion=-1
            fi
        sleep 0.1
        done
    }

    loadingAnimationStop () {
        animando=false
        kill $PID
        printf "\r\033[2K"
    }


# Imprimir listas de opciones
	# # Funciones para imprimir texto con estilo
	# 	CNE=$(tput setaf 0) # Negro
	# 	CRE=$(tput setaf 1) # Rojo
	# 	CGR=$(tput setaf 2) # Verde
	# 	CYE=$(tput setaf 3) # Amarillo
	# 	CBL=$(tput setaf 4) # Azul
	# 	CMA=$(tput setaf 5) # Morado
	# 	CCY=$(tput setaf 6) # Cyan
	# 	CWH=$(tput setaf 7) # Blanco
	# 	CNC=$(tput sgr0)    # Reset
	# 	CHROOT="arch-chroot /mnt"

	# 	text () {
	# 		local text="${1:?}"
	# 		local text2="${2:""}"
	# 		printf " ${CBL}%s${CNC} ${CWH}%s${CNC}\n" "${text}" "${text2}"
	# 	}

	# 	questionsText() {
	# 		local text="${1:?}"
	# 		local response="${2:?}"
	# 		local use_raw="${3:-false}"
	# 		local password="${4:-false}"
	# 		printf " ${CCY}%s${CNC}" "${text}"
	# 		if [[ "$use_raw" == true && "$password" == true ]]; then
	# 			read -rs "$response"
	# 		elif [[ "$use_raw" == true ]]; then
	# 			read -r "$response"
	# 		else
	# 			read "$response"
	# 		fi
	# 		printf "\n"
	# 	}

	# 		questionsTitle () {
	# 		local text="${1:?}"
	# 		local response="${2:?}"
	# 		printf " ${CYE}[ ${CCY}%s${CNC} ${CYE}]${CNC}\n" "${text}"
	# 		if [ "$use_raw" = true ]; then
	# 			read -r "$response"
	# 		elif [ "$password" = true ]; then
	# 			read -rs "$response"
	# 		else
	# 			read "$response"
	# 		fi
	# 	}

	# audio_options=("1. PulseAudio" "2. ALSA" "3. Jack" "4. PipeWire")

	# for f in "${audio_options[@]}"; do
	# text "$f"
	# done

	# # Preguntar al usuario qué opción desea seleccionar
	# questionsText "Ingrese el número de opción deseado (1-4, predeterminado es 4): " audio_option
	# if [[ -z "$audio_option" ]]; then
	# audio_option=4
	# fi
	# while [[ ! "$audio_option" =~ ^[1-4]$ ]]; do
	# questionsText "Opción inválida. Ingrese el número de opción deseado (1-4, predeterminado es 4): " audio_option
	# done


	# # Configurar las variables de audio según la opción seleccionada
	# if [[ "$audio_option" == "1" ]]; then
	# audiotitle='PulseAudio'
	# audiopack='pipewire-pulse'
	# elif [[ "$audio_option" == "2" ]]; then
	# audiotitle='ALSA'
	# audiopack='pipewire-alsa'
	# elif [[ "$audio_option" == "3" ]]; then
	# audiotitle='Jack'
	# audiopack='pipewire-jack'
	# else
	# audiotitle='PipeWire'
	# audiopack='pipewire pipewire-pulse pipewire-alsa pipewire-jack'
	# fi

	# echo "Opción de audio seleccionada: $audiotitle"
	# echo "Paquetes de audio seleccionados: $audiopack"

# Test de particiones
title "You are using a virtual machine"
    text "So i will partition the disk for you"
    # loadingAnimation &
    sleep 1
    DISK_SIZE=$(lsblk -b | grep disk | awk '{print $4}' END {print total})
    parted -s /dev/sda mklabel msdos 
    # if [ $? -eq 0];then
    #     echo "Partition table created correctly"
    # else
    #     echo "Error creating partition table"
    # fi
    parted -s /dev/sda mkpart primary fat32 1MiB 513MiB 
    # if [ $? -eq 0];then
    #     echo "Partition created correctly"
    # else
    #     echo "Error creating partition"
    # fi
    parted -s /dev/sda set 1 boot on 
    # if [ $? -eq 0];then
    #     echo "Partition set correctly"
    # else
    #     echo "Error setting partition"
    # fi
    parted -s /dev/sda mkpart primary ext4 513MiB $(($DISK_SIZE-4*1024*1024*1024))B 
    # if [ $? -eq 0];then
    #     echo "Root partition created correctly"
    # else
    #     echo "Error creating root partition"
    # fi
    parted -s /dev/sda mkpart primary linux-swap $(($DISK_SIZE-4*1024*1024*1024+512*1024*1024+1))B 100% 
    # if [ $? -eq 0];then
    #     echo "Swap partition created correctly"
    # else
    #     echo "Error creating swap partition"
    # fi
    sleep 10
    # PID=$!
    # loadingAnimationStop
    # clear
    # titleLogo "Time to format the partitions"
    # title "Formatting the partitions"
    # loadingAnimation &
    # sleep 1
    # mkfs.fat -F32 /dev/sda1 > /dev/null 2>&1
    # if [ $? -eq 0];then
    #     echo "Partition formatted correctly"
    # else
    #     echo "Error formatting partition"
    # fi
    # mkfs.ext4 /dev/sda2 > /dev/null 2>&1
    # if [ $? -eq 0];then
    #     echo "Root partition formatted correctly"
    # else
    #     echo "Error formatting root partition"
    # fi
    # mkswap /dev/sda3 > /dev/null 2>&1
    # if [ $? -eq 0];then
    #     echo "Swap partition formatted correctly"
    # else
    #     echo "Error formatting swap partition"
    # fi
    # sleep 1
    # PID=$!
    # loadingAnimationStop
    # clear
    # titleLogo "Time to mount the partitions"
    # title "Mounting the partitions"
    # loadingAnimation &
    # sleep 1
    # mount /dev/sda2 /mnt > /dev/null 2>&1
    # if [ $? -eq 0];then
    #     echo "Root partition mounted correctly"
    # else
    #     echo "Error mounting root partition"
    # fi
    # mkdir /mnt/boot > /dev/null 2>&1
    # if [ $? -eq 0];then
    #     echo "Boot directory created correctly"
    # else
    #     echo "Error creating boot directory"
    # fi
    # mount /dev/sda1 /mnt/boot > /dev/null 2>&1
    # if [ $? -eq 0];then
    #     echo "Boot partition mounted correctly"
    # else
    #     echo "Error mounting boot partition"
    # fi
    # swapon /dev/sda3 > /dev/null 2>&1
    # if [ $? -eq 0];then
    #     echo "Swap partition mounted correctly"
    # else
    #     echo "Error mounting swap partition"
    # fi
    # sleep 1
    # PID=$!
    # loadingAnimationStop
	echo "Particiones creadas correctamente"
	echo "O no? :v"