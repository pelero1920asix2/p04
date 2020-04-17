#!/bin/bash
clear
if (( EUID !=0 ))
then
	echo "Aquest script s'ha d'executar amb privilegis de l'usuari root"
	exit 9
fi
if [[ ! -d /etc/$1 ]]
then
	echo -n "El subdirectori no existeix. Vols crear-lo (s/n)?: "
	read opc
	if [[ $opc != "s" ]] && [[ $opc != "S" ]]
	then
		mkdir /etc/$opc.orig
	else
		mkdir /etc/$opc.orig
	fi
fi
exit 0
