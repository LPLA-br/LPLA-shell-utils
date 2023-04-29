#!/bin/sh

# Contador regressivo de tempo
# Requer: mplayer

if [[ $1 == '' ]]; then
	echo 'Insira tempo de contagem a no formanto: MM';
	exit
else
	for (( MINUTOS=$1; MINUTOS > 0; MINUTOS-- )); do
		for (( SEGUNDOS=60; SEGUNDOS > 0; SEGUNDOS-- )); do
			clear;
			echo $MINUTOS·$SEGUNDOS;
			sleep 1s;
		done	
	done
	mplayer /home/luiz/Smartphone/1LUIZ/Música/Outros/Nordestinados.m4a
fi
