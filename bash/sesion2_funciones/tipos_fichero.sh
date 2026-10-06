#!/bin/bash

function contar_por_extension () {

	find $1 -maxdepth 1 -type f -name "*.$2" | wc -l 

}

	
echo "El numero de ficheros en el directorio $1 con las extensiones: $2"

for i in $2;
do 
	numero_ficheros=$(contar_por_extension $1 $i)
	echo "$i --> $numero_ficheros"
done

