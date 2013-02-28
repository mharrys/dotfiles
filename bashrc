#!/bin/bash

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\w\$ '

alias ls='ls -h --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias cp='cp -i -v'
alias mv='mv -i -v'
alias rm='rm -i -v'
alias halt='sudo halt'
alias reboot='sudo reboot'

EDITOR=vim
VISUAL=$EDITOR
export EDITOR VISUAL
# golang
export GOROOT=/usr/lib/go
export GOPATH=$HOME/Dropbox/code/go
export PATH=$PATH:$GOPATH/bin
