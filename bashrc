#!/bin/bash

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1="\[\e[00;37m\]\W\$ \[\e[0m\]"

alias ls='ls -h --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias cp='cp -i -v'
alias mv='mv -i -v'
alias rm='rm -i -v'

export EDITOR=/usr/bin/vim
export VISUAL=$EDITOR
# gpg agent
export GPG_TTY=$(tty)
# golang
export GOROOT=/usr/lib/go
export GOPATH=$HOME/Code/Go
export PATH=$PATH:$GOPATH/bin
