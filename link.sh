#!/bin/bash

BACKUP=false
DIR=$(pwd)

read -p "Backup any existing files? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    BACKUP=true
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

function filechown {
    chown -h mattias:mattias $HOME/$1
}

echo -n "Creating links... "

# bash
fileln bash/bashrc .bashrc
fileln bash/bash_profile .bash_profile

# gnupg
createdir .gnupg
fileln gnupg/gpg-agent.conf .gnupg/gpg-agent.conf
fileln gnupg/gpg.conf .gnupg/gpg.conf

# kde
createdir .kde/Autostart
fileln kde/Autostart/ssh-agent.sh .kde/Autostart/ssh-agent.sh

# mpv
fileln mpv .mpv

# vim
fileln vim .vim
fileln vim/vimrc .vimrc
fileln vim/gvimrc .gvimrc

# ssh
createdir .ssh
fileln ssh/config .ssh/config
filechown .ssh/config

echo "Done!"
