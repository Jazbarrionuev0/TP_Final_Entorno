#!/usr/bin/bash

file=$(cat $1)

cantidaddeoraciones=`echo $file | tr -cd "\." | wc -c`
OIFS=$IFS
IFS='.'
letrasoracionlarga=0
letrasoracioncorta=1000


for oracion in $file
do
  if [[ ${#oracion} -gt $letrasoracionlarga ]]
  then
    letrasoracionlarga=${#oracion}
  fi
  if [[ ${#oracion} -lt $letrasoracioncorta ]]
  then
    letrasoracioncorta=${#oracion}
  fi
  promedio=$(($promedio + ${#oracion}))
done

promedio=$(($promedio/$cantidaddeoraciones))

echo "La oración más larga: "$letrasoracionlarga "letras."
echo "La oración más corta: "$letrasoracioncorta "letras."
echo "Ell promedio de las oraciones es de "$promedio "letras."

IFS=$OIFS
unset OIFS

exit 0

