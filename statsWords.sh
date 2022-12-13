#!/usr/bin/bash

texto=$(cat $1)

palabralarga=0
palabracorta=30
suma=0
cantidad=0
for x in $texto
do 
	echo $x | tr -d [".",",",":","-"] >> textosinpuntos.txt
done

for i in $(cat textosinpuntos.txt)
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

rm textosinpuntos.txt
exit 0
