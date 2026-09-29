#!/bin/bash

if [[ $# -ne 1 ]]; then
	exit 1
fi

if [[ ! -d $1 ]]; then
	exit 1
fi

for i in $1*.log
do
	warning=`grep -c "WARNING" $i`
	error=`grep -c "ERROR" $i`
	name_log=`basename $i`
	echo "$name_log -> $warning WARNING, $error ERROR"
done


# Ejecuta tu resumen_logs.sh pasándole ~/prueba_bash (la carpeta raíz, no datos/). 
# 	¿Encuentra sistema.log?
#		Si encuentra el sistema.log
#
# 	¿Y los .log que hay dentro de datos/ y de proyecto/entrada/? 
# 	Explica, en un comentario al final del script, si tu script mira solo dentro de la carpeta indicada o también dentro de sus subcarpetas, y si te parece el comportamiento correcto para un script de monitorización real.
#		No encuentra los logs de datos y proyecto/entrada ya que le indicamos que solo busque en la carpeta que le hemos pasado por parámetros.
#		Me parece correcto que mire en la carpeta que le indicamos ya que en un script de monitorización real puede que aparezcan mas .logs y sea menos visible el que buscamos, estaria bien añadir un parametro para indicar
#		que queremos buscar los logs de forma recursiva.
