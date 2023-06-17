#!/bin/bash

# backup semi-automático para dispositivo usb específico
# requer: rync

EXTRA=$1;

ORIGEM=$( echo /home/luiz/{Documentos,Imagens,Modelos,src,Smartphone} );
DESTINO='/mnt/luiz/';

UUID_REQUERIDO='cd474226-87e7-4bac-a386-7e07cc59223f';
UUID_DISPOSITIVO=$( lsblk -o NAME,UUID | grep 'cd474226' | awk '(FS=" "){print $2}' );

if [[ $UUID_DISPOSITIVO == $UUID_REQUERIDO ]]; then
	if [[ -d $EXTRA ]]; then
		rsync --recursive \
		      --verbose \
		      --human-readable \
		      --links \
		      --perms \
		      --times \
		      --group \
		      --owner \
		      --delete \
		      --exclude 'node_modules' \
		      --exclude '.git' \
		      $EXTRA \
		      $ORIGEM \
		      $DESTINO ;
	else
		rsync --recursive \
		      --verbose \
		      --human-readable \
		      --links \
		      --perms \
		      --times \
		      --group \
		      --owner \
		      --delete \
		      --exclude 'node_modules' \
		      --exclude '.git' \
		      $ORIGEM \
		      $DESTINO ;
	fi
else
	echo 'BACKUP NEGADO: dispositivo não é o de backup';
fi
