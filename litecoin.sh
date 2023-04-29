#!/usr/bin/bash

#Conversão de valores em criptomoeda LITECOIN
#requer: qalc

space()
{
	echo -e "\n"
}

if [[ $1 == "-h" ]]; then
	echo -e "Equivalência entre teus LTC e BRL"
	echo -e "sem -t como quarto argumento"
	space;
	echo -e "Um LTC está para Y BRL"
	echo -e "assim como"
	echo -e "Meus LTC estão para X BRL"
	space;
	echo -e "Total_LTC_teu * Valor_BRL"

	echo "__________________________________________________"

	echo -e "Retirar LTC equivalente em BRL"
	echo -e "com -t como quarto argumento"
	space;
	echo -e "Total_BRL está para total_LTC"
	echo -e "assim como"
	echo -e "Parte_BRL está para Parte_X_LTC"
	space;
	echo -e "Total_BRL_teu / ( transferênciaBRL * Total_LTC_teu )"
	space;
else
	if [[ $4 == "-t" ]]; then
		qalc -t "($2*$3)/$1" | sed -E 's/[0-9]{3}$//g';
	else
		qalc -t "$2*$1" | sed -E 's/[0-9]{1}$//g';
	fi
fi

