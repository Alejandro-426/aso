#!/bin/bash

function clasificar_http () {

	if [[ $1 -ge 200 && $1 -le 299 ]]; then
		echo "Exito"
	elif [[ $1 -ge 300 && $1 -le 399 ]]; then
		echo "Redireccion"
	elif [[ $1 -ge 400 && $1 -le 499 ]]; then
		echo "Error del cliente"
	elif [[ $1 -ge 500 && $1 -le 599 ]]; then
		echo "Error del servidor"
	else
		echo "Codigo HTTP inexistente"
	fi
}


codigo_HTTP=$(clasificar_http $1)
echo "El codigo $1 es: $codigo_HTTP"
