#/bin/bash

#leitor de anotações pessoais.
#para /home/luiz/bin

CAMINHO=$HOME/Documentos/anotações/$1

function ler()
{
	if [[ -f $CAMINHO ]]; then
		less -S $CAMINHO;
	else
		echo 'Arquivo de anotação pessoal não existe';
	fi
}

case $1 in
	'-l')	
		ls $HOME/Documentos/anotações;
		;;
	'-h')
		echo -e "-l  listar suas anotações pessoais\n-h help/ajuda";
		;;
	*)
		ler;
		;;
esac

