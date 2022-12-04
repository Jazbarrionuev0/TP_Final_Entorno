#!/usr/bin/bash

texto=( cat $1 | tr "." "\n" | tr "!" "\n" | tr "?" "\n" | sed '/^$/d')

oracionlarga=0
oracioncorta=10000
cantidadoraciones=0
cantidadpalabras=0

for palabra in $texto
do
	cantidadpalabras=$(($cantidadpalabras + 1))

done


for oracion in $arrayoraciones
do
  if [ ${#oracion} -gt $oracionlarga ]
  then
    oracionlarga=${#oracion}
  fi
  if [ ${#oracion} -lt $oracioncorta ]
  then
    oracioncorta=${#oracion}
  fi
done


promedio=$(( $cantidadpalabras / $cantidadoraciones ))
