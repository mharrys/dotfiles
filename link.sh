#!/bin/bash

BACKUP=false
PLUGINS=false
DIR=$(pwd)

read -p "Backup any existing files? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    BACKUP=true
fi

read -p "Install Vim plugins? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    PLUGINS=true
fi

function createdir {
    # create path of directories if it does not exist
    if [ ! -d $HOME/$1 ]; then
        mkdir -p $HOME/$1
    fi
}

function filebak {
    # moves file to file.bak in the same directory
    if [ -e $1 ]; then
        mv $1 $1.bak
    fi
}

function fileln {
    # handle existing files
    if [ -e $HOME/$2 ]; then
        if $BACKUP; then
            filebak $HOME/$2
        else
            rm -r $HOME/$2
        fi
    fi

    # create link
    ln -s $DIR/$1 $HOME/$2
}

echo -n "Creating links... "

# bash
fileln bash/bashrc .bashrc
fileln bash/bash_profile .bash_profile

# gnupg
createdir .gnupg
fileln gnupg/gpg-agent.conf .gnupg/gpg-agent.conf
fileln gnupg/gpg.conf .gnupg/gpg.conf

# mpv
fileln mpv .mpv

# ranger
createdir .config/ranger
fileln ranger/rifle.conf .config/ranger/rifle.conf
fileln ranger/rc.conf .config/ranger/rc.conf

# vim
fileln vim .vim
fileln vim/vimrc .vimrc
fileln vim/gvimrc .gvimrc
if $PLUGINS; then
    curl -fLo vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    vim +PlugInstall
fi

# ssh
createdir .ssh
fileln ssh/config .ssh/config
chown $USER ssh/config
chmod 600 ssh/config

echo "Done!"
