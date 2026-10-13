#!/bin/bash

ruta="/etc/passwd"

re="/bin/bash$"
contador=0

while read -r linea; do 
	if [[ $linea =~ $re ]]; then 
		echo ${linea%%:*}
		((contador++))
	fi
done < $ruta

echo "--------"
echo "Numeros de usuarios: $contador"
