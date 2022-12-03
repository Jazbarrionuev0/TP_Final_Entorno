#!/usr/bin/bash

PS3="Seleccione una opción: "
echo "¿Qué desea realizar?"

texto=texto.txt

select opcion in ./statsWords.sh ./statsUsageWords.sh ./findNames.sh ./statsSentences.sh ./blankLinesCounter.sh 
do
	$opcion $texto
done

exit


