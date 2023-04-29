#!/bin/bash

# salvamento de arquivos de configuração
# automaticamente pelo crontab
# requer: rsync

# lista de pacotes instalados no sistema pelo admin
# vão para:
PACOTES=$HOME/Documentos/aleatório/packages.txt;

# Salvar arquivos de configuração em um diretório visível a backups

# Arquivos de configuração a serem salvos:
CRONTAB=/var/spool/cron/luiz;
VIMRC=$HOME/.vimrc;
ITREZCONFIG=$HOME/.config/i3/config;
ITREZBARCONF=$HOME/.i3status.conf;
BASH=$HOME/.bashrc;
GITCONF=$HOME/.gitconfig;
XDEF=$HOME/.Xdefaults;
XINIT=$HOME/.xinitrc;
XRES=$HOME/.Xresourses;
SSHD=/etc/ssh/sshd_config;
XDGDIRS=$HOME/.config/user-dirs.dirs;

# Destino das cópias:
COPIADIR=$HOME/Documentos/aleatório;

# Obtendo lista de pacotes instalados.
pacman --query --unrequired | awk -F ' ' '{print $1}' > $PACOTES;
echo -e "\n\n$(date)" >> $PACOTES;

#Salvando arquivos de configuração
rsync $CRONTAB $COPIADIR/crontab.txt;
rsync $VIMRC $COPIADIR/vimrc;
rsync $ITREZCONFIG $COPIADIR/i3config;
rsync $ITREZBARCONF $COPIADIR/i3status.conf;
rsync $BASH $COPIADIR/bashrc;
rsync $GITCONF $COPIADIR/gitconfig;
rsync $XDEF $COPIADIR/Xdefaults;
rsync $XINIT $COPIADIR/xinitrc;
rsync $XRES $COPIADIR/Xresources;
rsync $SSHD $COPIADIR/sshd;
rsync $XDGDIRS $COPIADIR/user-dirs.dirs;

