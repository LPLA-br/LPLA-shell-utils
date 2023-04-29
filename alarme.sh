#!/bin/bash

#alarme para hora específica
#requer: mplayer

MODOHORA=$2

if [[ $1 == [0-9][0-9]:[0-9][0-9] ]]; then
    echo "formato de hora aceito";
else
    echo "formato de hora negado";
    exit;
fi

while true; do
    sleep 10;
    if [[ $MODOHORA == "-24" && $(date +%'H:%M') != $1 ]]; then
        :
    elif [[ $MODOHORA == "-12" && $(date +%'I:%M') != $1 ]]; then
        :
    else
        break;
    fi
done

if [[ -f /bin/mplayer || -f $HOME/.alarmerc ]]; then
    mplayer $(cat $HOME/.alarmerc);
else
    echo "ding dong";
fi
