#!/bin/bash

# Converte todos os arquivos m4a para mp3
# em um diretório.
# Requer: ffmpeg

while true; do
    ls;
    echo -e "\nATENÇÃO"
    read -p "O diretório corrente tem algum m4a (se tiver vai reconverter!) sim ou nao: " VERIF
    case $VERIF in 
        sim)
            echo "retire os m4a daqui $PWD para outro diretório."
            exit;
            ;;
        nao)
            echo 'Ok continuando...';
            break;
            ;;
        *)
            echo 'insira nao ou sim ! p****';
            continue;
    esac
done

ROTULO="$(date +%'d-%m-%Y')";
FORMATO=".mp3";

echo $ROTULO;

for ARQUIVONOME in *.m4a ; do
    NOME="$( echo $ARQUIVONOME$ROTULO$FORMATO | sed -E 's/\.m4a//g' )";
    if [[ -f $ARQUIVONOME ]]; then
        ffmpeg -loglevel quiet -i "$ARQUIVONOME" "$NOME";
        if [[ -f $NOME ]]; then
            echo "$ARQUIVONOME convertido para mp3";
            if [[ $1 == '-d' ]]; then
                rm $ARQUIVONOME;
            else
                rm -i $ARQUIVONOME;
            fi
        else
            echo "$NOME não foi criado pelo ffmpeg. Abortando deleção do original."
        fi
    else
        echo "$ARQUIVONOME é um diretório."
    fi
done
