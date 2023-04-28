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

    successText () {
        local text="${1:?}"
        printf " ${CGR}%s${CNC}\n\n" "${text}"
        sleep 1
    }

intro
clear
titleLogo "Partitioning the disk"
    DISK_SIZE=$(lsblk -b | grep disk | awk '{print $4} END {print total}')
    parted -s /dev/sda mklabel msdos
    if [ $? -eq 0];then
        successText "Partition table created correctly"
        sleep 2
    else
        errorsText "Error creating partition table"
        sleep 2
    fi
    parted -s /dev/sda mkpart primary fat32 1MiB 513MiB
    if [ $? -eq 0];then
        successText "Partition created correctly"
        sleep 2
    else
        errorsText "Error creating partition"
        sleep 2
    fi
    parted -s /dev/sda set 1 boot on
    if [ $? -eq 0];then
        successText "Partition set correctly"
        sleep 2
    else
        errorsText "Error setting partition"
        sleep 2
    fi
    parted -s /dev/sda mkpart primary ext4 513MiB $(($DISK_SIZE-4*1024*1024*1024))B 
    if [ $? -eq 0];then
        successText "Root partition created correctly"
        sleep 2
    else
        errorsText "Error creating root partition"
        sleep 2
    fi
    parted -s /dev/sda mkpart primary linux-swap $(($DISK_SIZE-4*1024*1024*1024+512*1024*1024+1))B 100% 
    if [ $? -eq 0];then
        successText "Swap partition created correctly"
        sleep 2
    else
        errorsText "Error creating swap partition"
        sleep 2
    fi
    sleep 2