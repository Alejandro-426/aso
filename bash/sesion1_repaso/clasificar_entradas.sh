#!/bin/bash


for i in ~/prueba_bash/*
do
	nombre=`basename $i`
	if [[ -f $i ]]
	then
		echo "[ FIL ] $nombre "
	elif [[ -d $i ]]
	then
		echo "[ DIR ] $nombre"
	fi
done
