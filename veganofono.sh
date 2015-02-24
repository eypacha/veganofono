#!/bin/bash
# Veganofono 0.1
# por EyPacha! parte del proyecto Musica con Cualquier Cosa
# www.eypacha.com.ar

# Define constantes
gr1='\033[1;32m'
gr2='\033[0;32m'
red='\033[0;31m'
NC='\033[0m' # No Color

# Inhabilita el CapsLock
xkbset nullify lock

# user interrupt trap demo
function int_handler {
  clear  
  echo -e "${gr1}Gracias por usar el Veganófono. ¡Vuelva pronto!${NC}"
  xkbset nullify -lock
 exit
}

# Establish interrupt handler
trap int_handler INT

# Inicia el bucle a la espera de teclas
while :
do
clear
echo -e "${gr2}*** ${gr1}Veganófono 0.1 ${gr2}***${NC}"
read -n 1 -p "Esperando tecla > " mi_tecla
echo #$mi_tecla

case $mi_tecla in
  'D') aplay -N -q 01.wav &;;
  'A') aplay -N -q 02.wav &;;
  'C') aplay -N -q 03.wav &;;
  'B') aplay -N -q 04.wav &;;
  '') aplay -N -q 05.wav &;;
  a) aplay -N -q 06.wav &;;
  w) aplay -N -q 07.wav &;;
  d) aplay -N -q 08.wav &;;
esac

done
