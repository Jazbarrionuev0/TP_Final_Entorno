#!/usr/bin/bash

texto=$(cat $1)
nombrepropio='\<[A-Z][a-z]*\>'

for palabra in $texto
do 
	if [[ $palabra =~ $nombrepropio ]] 
	then
		echo "$palabra es un nombre propio"
	else
		continue
	fi
done

exit 0
