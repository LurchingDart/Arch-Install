mostrar_animacion_carga() {
    local -r ancho_campo=10
    local -r ancho_asterisco=1
    local -r ancho_espacio=$((ancho_campo - ancho_asterisco))

    local -r patron_asterisco1="*"
    local -r patron_asterisco2=" *⁕※⁜⁂°º⌀⏒⌂⨀⨁⨂⨳⨶⨷⨸ "
    local -r patron_asterisco3="*"
    local -r patron_espacio=$(printf "%${ancho_espacio}s")

    local -r patron="$patron_espacio${patron_asterisco1}${patron_asterisco2}${patron_asterisco3}$patron_espacio"

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

detener_animacion_carga() {
  animando=false
  kill $PID
  printf "\r\033[2K"  # borrar la última línea impresa
}

printf "\033[0;31m Hola \033[0m\n\n"
mostrar_animacion_carga &
PID=$!
# Realizar tarea que toma mucho tiempo
sleep 5
detener_animacion_carga
printf "\r\033[2KProceso completado\n"  # borrar la última línea impresa y agregar mensaje
