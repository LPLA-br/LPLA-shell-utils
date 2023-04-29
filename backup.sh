#!/bin/bash

# backup para dispositivo específico
# requer: rync

EXTRA='/home/luiz/Desktop/bootcamp'

if [[ $(lsblk -o NAME,UUID | grep 'cd474226' | awk '(FS=" "){print $2}') == "cd474226-87e7-4bac-a386-7e07cc59223f" ]]; then
	if [[ -d $A ]]; then
		rsync -avh --delete /home/luiz/{bin,Documentos,Imagens,Modelos} $EXTRA /mnt/luiz/
	else
		rsync -avh --delete /home/luiz/{bin,Documentos,Imagens,Modelos} /mnt/luiz/
	fi
else
	echo 'dispositivo não é o pendrive de backup';
fi
