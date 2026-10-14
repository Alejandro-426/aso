#!/bin/bash

re="^[0-9][0-9]*$"


if [[ $# -eq 0 ]]; then	
	echo "No se ha introducido parametros"		
	exit 1
fi	

if [[ ! $1 =~ $re ]]; then
	echo "$1 no es un número"
	exit 1
fi

if [[ $1 -ge 1 ]] && [[ $1 -le 65535 ]]; then
    echo "$1 puerto valido."
else
    echo "$1 puerto fuera de rango (1-65535)"
fi

