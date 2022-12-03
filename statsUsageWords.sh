#!/usr/bin/bash
texto=$(cat $1)

declare -A diccionario

for palabra in $texto
do 
	largopalabra=${#palabra}
	if [[ $largopalabra -lt 4 ]]
	then
		diccionario[$palabra]=$((${diccionario[$palabra]} + 1))
	fi
done 

echo "Top 10 palabras más  usadas"

for i in ${!diccionario[@]}
do
       echo $i ' - ' ${diccionario[$i]}
done | sort -rn -k3 | head -n 10


