#!/usr/bin/bash
PS3="Seleccione una opción: "
echo "¿Qué desea realizar?"

texto=texto.txt

select ejercicio in statsWords.sh statsUsageWords.sh findNames.sh statsSentences.sh blankLinesCounter.sh "SALIR"
do
	case $ejercicio in
		statsWords.sh)
			bash $ejercicio $texto
			;;
		statsUsageWords.sh)
			bash $ejercicio $texto
			;;
		findNames.sh)
			bash $ejercicio $texto
			;;
		statsSentences.sh)
			bash $ejercicio $texto
			;;
		blankLinesCounter.sh)
			bash $ejercicio $texto
			;;
		SALIR)
			break
			;;
		*)
			echo "Opcion valida"
			;;
	esac
done
