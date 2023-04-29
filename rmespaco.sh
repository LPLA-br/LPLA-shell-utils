#!/bin/bash

# Remova espaços dos nomes de arquivo com espaços.
# Iteração em arquivos.

for ARQUIVONOME in * ; do
    if [[ $ARQUIVONOME == '.' || $ARQUIVONOME == '..' ]]; then
        continue;
    else
        if [[ $ARQUIVONOME == $(echo "${ARQUIVONOME}" | sed -E 's/ //g') ]]; then
            echo "${ARQUIVONOME} é um arquivo sem espaços e não foi renomeado.";
        else
            # não sobrescreve.
            mv -n "${ARQUIVONOME}" "$(echo "${ARQUIVONOME}" | sed -E 's/ //g')";
        fi
    fi
done
