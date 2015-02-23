#!/bin/bash
# Veganofono 0.1
# por EyPacha! parte del proyecto Musica con Cualquier Cosa
# www.eypacha.com.ar

while :
do
clear
read -n 1 -p "Esperando tecla > " mi_tecla
echo

case $mi_tecla in
  '') aplay -N -q 01.wav &;;
  s) aplay -N -q 02.wav &;;
  d) aplay -N -q 03.wav &;;
  f) aplay -N -q 04.wav &;;
  'ga') aplay -N -q 05.wav &;;
  h) aplay -N -q 06.wav &;;
  j) aplay -N -q 07.wav &;;
  k) aplay -N -q 08.wav &;;
esac

done

