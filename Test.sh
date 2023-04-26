CNE=$(tput setaf 0) # Negro
CRE=$(tput setaf 1) # Rojo
CGR=$(tput setaf 2) # Verde
CYE=$(tput setaf 3) # Amarillo
CBL=$(tput setaf 4) # Azul
CMA=$(tput setaf 5) # Morado
CCY=$(tput setaf 6) # Cyan
CWH=$(tput setaf 7) # Blanco
CNC=$(tput sgr0)    # Reset

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

loadloadingAnimationStop () {
    animando=false
    kill $PID
    printf "\r\033[2K"
}

printf "\033[0;31m[ \033[0m\033[1;93mChecando conexion a internet\033[0m \033[0;31m]\033[0m\n\n \033[0m\n\n"
loadingAnimation &
sleep 2
if ping -q -c 1 google.com; then
    PID=$!
    loadloadingAnimationStop
    printf "\n${CGR}Hay conexion a internet${CNC}\n"
else
    PID=$!
    loadloadingAnimationStop
    printf "\n${CRE}No hay conexion a internet${CNC}\n"
    while true
    do
        read -p "¿Desea tratar de conectar a internet? [S/n]: " INTERNET
        case $INTERNET in
            [Ss]* )
                printf "\n${CYL}Se tomara en cuenta que tienes WPA/WPA2 o${CNC}\n\n"
                read -p "¿Cual es el SSID o nombre de tu red (Escribelo Exactamente o fallara)? [S/n]: " SSIDUSR
                echo
                read -p "¿Cual es la contraseña de tu red? [S/n]: " PASSWIFIUSR
                echo
                printf "\n${CGR}Conectando a internet mediante wifi${CNC}\n"
                loadingAnimation &
                wpa_passphrase $SSIDUSR $PASSWIFIUSR > /wifi
                wpa_supplicant -B -i wlan0 -D wext -c /wifi
                sleep 2
                dhclient
                sleep 2
                if ping -q -c 1 google.com; then
                    PID=$!
                    loadloadingAnimationStop
                    printf "\n${CGR}Conectado correctamente${CNC}\n"
                    break
                else
                    PID=$!
                    loadloadingAnimationStop
                    printf "\n${CRE}No se pudo conectar a internet${CNC}\n"
                    printf "\n${CRE}Algo salio mal, verifica que los datos sean correctos o intenta manualmente${CNC}\n"
                    exit
                fi
                break;;
            [Nn]* )
                printf "\n${CRE}No se puede continuar sin una conexion a internet${CNC}\n"
                printf "\n${CRE}Conectate a internet para usar el script${CNC}\n"
                exit;;
            * ) printf "\n${CRE}Por favor responda S o N${CNC}\n";;
        esac
    done
fi
