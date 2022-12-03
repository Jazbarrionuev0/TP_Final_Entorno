#!/usr/bin/bash

TEXTO=$(cat $1)

palabralarga=0
palabracorta=30
suma=0
cantidad=0

for i in $TEXTO;
do
	palabra=$(echo ${#i})
	if [[ $palabra -lt $palabracorta ]];then
		palabracorta=$(($palabra))
        fi


	if [[ $palabra -gt $palabralarga ]]; then
		palabralarga=$(($palabra))
	fi

	suma=$(($suma + $palabra))
	cantidad=$(($cantidad + 1))

done

promedio=$(($suma/$cantidad))
echo "Cantidad de letras de la palabra más corta: $palabracorta"
echo "Cantidad de letras de la palabra más larga : $palabralarga"
echo "El promedio de longitud de palabras es de $promedio letras"

exit 0
