#!/bin/bash

# Append de string logiforme em arquivo alvo

MENSAGEM=$1;
ARQUIVOALVO=$2;

if [[ $ARQUIVOALVO != "" ]]; then

    if [[ -e $ARQUIVOALVO ]]; then
        :
    else
        touch ARQUIVOALVO;
    fi

    if [[ $MENSAGEM == "" ]]; then
        echo "ERRO: MENSAGEM ILEGAL. arquivo não escrito";
        exit 2;
    else
        echo "$MENSAGEM $(date +%'r %d/%m/%Y')" >> $ARQUIVOALVO;
    fi

else
    echo "ERRO: ARQUIVO ALVO NÃO ESPECIFICADO."
fi

