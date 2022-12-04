#!/usr/bin/bash


echo "lineas en blanco:" 
grep '\S' $1 -c -v

#grep filtra por el argumento que le pasan
#-c imprime el número de líneas de coincidencias
#-v: con esta opción, se nos muestran las líneas que no coinciden con el patrón que hemos buscado

exit 0
~       
