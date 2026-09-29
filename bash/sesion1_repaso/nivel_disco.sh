#!/bin/bash

P_USO_DEC=$(echo "scale=2; ($1 / $2) *100" | bc)

P_USO=${P_USO_DEC%.*}

echo $P_USO

if [[ $P_USO -lt 70 ]]; then
	echo "OK"
elif [[ $P_USO -ge 70  && $P_USO -lt 90 ]]; then
	echo "AVISO"
elif [[ $P_USO -ge 90 ]]; then
	echo "CRITICO"
fi
