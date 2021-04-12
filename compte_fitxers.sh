#!/bin/bash
# Ferran Sousa Lorente

compte() {
	arxius=$(find $1 -type f -user $USER -perm -u+r -size +0b | wc -l)
	echo "Dins $1 hi ha $arxius arxius amb permís de lectura, de l'usuari $USER i de mida superior a 0"
}

echo -n "Especifiqui el directori: "
read directori

compte $directori

exit 0
