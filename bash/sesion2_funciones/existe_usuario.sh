#!/bin/bash

function existe_usuario () {

if id "$1" &>/dev/null; then
	echo "El usuario $1 existe en el sistema."
else 
	echo "El usuario $1 no existe en el sistema."
fi

} 

echo $(existe_usuario $1)

