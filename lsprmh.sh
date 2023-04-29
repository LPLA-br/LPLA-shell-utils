#!/bin/bash

# lsprmh
# LISTAR permissões octais
# 000 001 010 011 100 101 110 111

echo -e "NúmeroOctal: PRIMEIROCTAL,DONO,GRUPO,OUTROS";
echo -e " 0 ---\n 1 --x\n 2 -w-\n 3 -wx\n 4 r--\n 5 r-x\n 6 rw-\n 7 rwx";
echo -e "PRIMEIROCTAL (SUID,SGID,STICKY)\n000  \n001  \n010  \n011  \n100  \n101  \n110  \n111";
