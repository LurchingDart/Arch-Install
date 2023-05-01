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

clear
intro
clear
titleLogo "Testing manual partitioning"
clear

title "You are not using a virtual machine"
        text "So i will not partition the disk for you"
        text "Select the disk where you want to install Arch Linux"
        lsblk -d -e 7,11 -o NAME,SIZE,TYPE,MODEL
        text "----------------------------------------"
        select DISK in $(lsblk -d | awk '{print "/dev/" $1} END {print "Cancel"}'); do
            if [[ "$DISK_NOVM" == "Cancel" ]]; then
                errorsText "Aborting..."
                exit 1
            else
                text "You selected $DISK_NOVM"
                break
            fi
        done
        questionsText "This is the right disk? [Y/n] " ContinueDisk
        if [[ "$ContinueDisk" == [Nn] ]]; then
            errorsText "Aborting..."
            exit 1
        fi
        text "----------------------------------------"
        text "Im going to launch cfdisk to format the disk"
        cfdisk $DISK_NOVM
        questionsText "Do you want to continue? [Y/n] " ContinuePartition
        if [[ "$ContinuePartition" == [Nn] ]]; then
            errorsText "Aborting..."
            exit 1
        fi
        text "Select the root partition where you want to install Arch Linux"
        lsblk -d -e 7,11 -o NAME,SIZE,TYPE,MODEL
        text "----------------------------------------"
        select ROOT in $(lsblk -d | awk '{print "/dev/" $1} END {print "Cancel"}'); do
            if [[ "$ROOT" == "Cancel" ]]; then
                errorsText "Aborting..."
                exit 1
            else
                text "You selected $ROOT"
                break
            fi
        done
        questionsText "This is the right partition? [Y/n] " ContinueRoot
        if [[ "$ContinueRoot" == [Nn] ]]; then
            errorsText "Aborting..."
            exit 1
        fi
        text "----------------------------------------"
        questionsText "Do you create a swap partition? [Y/n] " ContinueSwap
        if [[ "$ContinueSwap " == [Nn] ]]; then
            errorsText "Aborting..."
            exit 1
        else
            text "Select the swap partition where you want to install Arch Linux"
            lsblk -d -e 7,11 -o NAME,SIZE,TYPE,MODEL
            text "----------------------------------------"
            select SWAP in $(lsblk -d | awk '{print "/dev/" $1} END {print "Cancel"}'); do
                if [[ "$SWAP" == "Cancel" ]]; then
                    errorsText "Aborting..."
                    exit 1
                else
                    text "You selected $SWAP"
                    break
                fi
            done
            questionsText "This is the right partition? [Y/n] " ContinueSwap
            if [[ "$ContinueSwap" == [Nn] ]]; then
                errorsText "Aborting..."
                exit 1
            fi
        fi
        text "----------------------------------------"
        questionsText "Do you create a home partition? [Y/n] " ContinueHome
        if [[ "$ContinueHome" == [Nn] ]]; then
            errorsText "Aborting..."
            exit 1
        else
            text "Select the home partition where you want to install Arch Linux"
            lsblk -d -e 7,11 -o NAME,SIZE,TYPE,MODEL
            text "----------------------------------------"
            select HOME in $(lsblk -d | awk '{print "/dev/" $1} END {print "Cancel"}'); do
                if [[ "$HOME" == "Cancel" ]]; then
                    errorsText "Aborting..."
                    exit 1
                else
                    text "You selected $HOME"
                    break
                fi
            done
            questionsText "This is the right partition? [Y/n] " ContinueHome
            if [[ "$ContinueHome" == [Nn] ]]; then
                errorsText "Aborting..."
                exit 1
            fi
        fi
        text "----------------------------------------"
        questionsText "Do you create a boot partition? [Y/n] " ContinueBoot
        if [[ "$ContinueBoot" == [Nn] ]]; then
            errorsText "Aborting..."
            exit 1
        else
            text "Select the boot partition where you want to install Arch Linux"
            lsblk -d -e 7,11 -o NAME,SIZE,TYPE,MODEL
            text "----------------------------------------"
            select BOOT in $(lsblk -d | awk '{print "/dev/" $1} END {print "Cancel"}'); do
                if [[ "$BOOT" == "Cancel" ]]; then
                    errorsText "Aborting..."
                    exit 1
                else
                    text "You selected $BOOT"
                    break
                fi
            done
            questionsText "This is the right partition? [Y/n] " ContinueBoot
            if [[ "$ContinueBoot" == [Nn] ]]; then
                errorsText "Aborting..."
                exit 1
            fi
        fi
        text "----------------------------------------"
        questionsText "Do you create a efi partition? [Y/n] " ContinueEfi
        if [[ "$ContinueEfi" == [Nn] ]]; then
            errorsText "Aborting..."
            exit 1
        else
            text "Select the efi partition where you want to install Arch Linux"
            lsblk -d -e 7,11 -o NAME,SIZE,TYPE,MODEL
            text "----------------------------------------"
            select EFI in $(lsblk -d | awk '{print "/dev/" $1} END {print "Cancel"}'); do
                if [[ "$EFI" == "Cancel" ]]; then
                    errorsText "Aborting..."
                    exit 1
                else
                    text "You selected $EFI"
                    break
                fi
            done
            questionsText "This is the right partition? [Y/n] " ContinueEfi
            if [[ "$ContinueEfi" == [Nn] ]]; then
                errorsText "Aborting..."
                exit 1
            fi
        fi
        clear
        titleLogo "Test for the partitions finished"
        successTitle "The partitions are correct"
        errorsText "Or maybe not, i dont know D:"