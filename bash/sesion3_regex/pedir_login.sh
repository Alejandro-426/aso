#!/bin/bash

re="^[a-z][a-z0-9]*$"
read -p "Introduce el nombre del usuario: " user
while [[ ! $user =~ $re  ]] do
	
	if [[ ! $user =~ $re ]]; then
		echo "No es válido. Debe empezar por minúscula y tener solo minúsculas o dígitos"
		read -p "Introduce el nombre del usuario: " user
	fi
done;


echo "----------------"
if grep -q "^$user:" /etc/passwd ; then
	echo "Usuario ya existe"
else 
	echo "Nombre de usuario: $user"
	echo "Para crearlo: sudo useradd -m -s /bin/bash $user"
fi
