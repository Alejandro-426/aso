#!/bin/bash

function pedir_puerto_valido () {
	
	puerto=-1

	until [[ $puerto =~ ^[0-9]+$ && "$puerto" -ge 1 && "$puerto" -le 65535 ]]; 
	do	
		read -p "Dime un puerto valido del 1 al 65535 " puerto
		echo $puerto
	done
}




puerto_valido=$(pedir_puerto_valido)

echo "Puerto valido recibido: $puerto_valido"
