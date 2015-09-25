#!/bin/bash
# Veganofono 0.1
# por EyPacha! parte del proyecto Musica con Cualquier Cosa
# www.eypacha.com.ar

# Define constantes
gr1='\033[1;32m'
gr2='\033[0;32m'
red='\033[0;31m'
yel='\033[1;33m'
NC='\033[0m' # No Color
tit='Veganófono'
mi_tecla='0'
dot='\033[1;31mo\033[1;33m'
spc='            ' # Centrado en pantalla

# Inhabilita el CapsLock
# xkbset nullify lock

# Función que atrapa la interrupción del usuario
function int_handler {
  clear  
  echo -e "${gr1}Gracias por usar el $tit. ¡Vuelva pronto!${NC}"
  # xkbset nullify -lock
 exit
}

trap int_handler INT

# Inicializa la funcion de reproducción
function n {
aplay -N -q $1".wav"


}

# Muestra el título del programa
function titulo {
clear
echo
echo -e "$spc${yel}   ╔═══════╗         "
echo -e "$spc ╔═╝       ╚═╗       "
echo -e "$spc╔╝           ╚═════╗ "
echo -e "$spc║  ${gr1}$tit 0.1${yel}  ╚╗"  
echo -e "$spc║                   ║"
echo -e "$spc█████████████████████"
echo -e "$spc║░█░█░║░█░█░█░║░█░█░║"

case $mi_tecla in
  'D') echo -e "$spc║${dot}║░║░║░║░║░║░║░║░║░║";;
  'A') echo -e "$spc║░║${dot}║░║░║░║░║░║░║░║░║";;
  'C') echo -e "$spc║░║░║${dot}║░║░║░║░║░║░║░║";;
  'B') echo -e "$spc║░║░║░║${dot}║░║░║░║░║░║░║";;
   '') echo -e "$spc║░║░║░║░║${dot}║░║░║░║░║░║";;
  'a') echo -e "$spc║░║░║░║░║░║${dot}║░║░║░║░║";;
  'w') echo -e "$spc║░║░║░║░║░║░║${dot}║░║░║░║";;
  's') echo -e "$spc║░║░║░║░║░║░║░║${dot}║░║░║";;
  'd') echo -e "$spc║░║░║░║\033[1;31mNOISE\033[1;33m║░║░║░║░║";;
  'f') echo -e "$spc║░║░║░║\033[1;31mCHIRP\033[1;33m║\033[1;31mE\033[1;33m║░║░║░║";;
  'g') echo -e "$spc║░║░║░║\033[1;31mCHIRP\033[1;33m║\033[1;31mA\033[1;33m║░║░║░║";;
    *) echo -e "$spc║░║░║░║░║░║░║░║░║░║░║";;
esac

echo -e "$spc╠╦╩═╩═╩═╩═╩═╩═╩═╩═╩╦╣"
echo -e "$spc╚╝                 ╚╝"
}

titulo 
echo "iniciando..."

# Reproduce melodía al iniciarse
function iniciado {
n 01 &
sleep 0.3
n 02 &
sleep 0.3
n 03 & n 01 &
sleep 0.3
n 04 & n 02 &
sleep 0.3
n 05 & n 03 &
sleep 0.3
n 06 & n 04 &
sleep 0.3
n 07 & n 02 &
sleep 0.3
n 08 & n 03
}

# iniciado

# Inicia el bucle a la espera de teclas
while :
do
titulo
read -n 1 -p "$spc    waiting... > " mi_tecla
echo #$mi_tecla

case $mi_tecla in
  'D') n 01 &;;
  'A') n 02 &;;
  'C') n 03 &;;
  'B') n 04 &;;
  '')  n 05 &;;
  'a') n 06 &;;
  'w') n 07 &;;
  's') n 08 &;;
  'd') n 09 &;;
  'f') n 10 &;;
  'g') n 11 &;;
esac

done
