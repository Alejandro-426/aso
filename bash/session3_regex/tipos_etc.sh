#!/bin/bash


ruta="/etc"
re_conf=".conf$"
re_bak="(.bak$|~$)"

archivos_conf=""
archivos_bak=""

contandor_conf=0
contador_bak=0

for i in "$ruta"/*; 
do
	archivo=`basename $i`
	if [[ $archivo =~ $re_conf ]]; then 
		archivos_conf+="$i\n"	
		((contandor_conf++))
	fi

	if [[ $archivo =~ $re_bak ]]; then 
		archivos_bak+="$i\n"
		((contador_bak++))
	fi
done

echo "Ficheros de configuración:"
echo -en "$archivos_conf"
echo -e "\nFicheros de copias de seguridad:"
echo -en "$archivos_bak"
echo "---------------"
echo "Configuración: $contandor_conf"
echo "Copias de seguridad: $contador_bak"
