#!/bin/bash

fichero="/etc/login.defs"
contador_lineas_validas=0
re="^#|^\s*$"

if [[ "$#" -ne 0 ]]; then 
	fichero=$1
	if [[ ! -e "$fichero" ]]; then	
		echo "El fichero no existe"
		exit 1
	fi
	
fi

while read -r linea; 
do
	
	if [[ ! $linea =~ $re ]]; then
		((contador_lineas_validas++))	
		echo $linea
	fi

done < $fichero

echo "-------------"
echo "Líneas totales: $(cat "$fichero" | wc -l)"
echo "Líneas utiles: $contador_lineas_validas"
