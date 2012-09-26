#!/bin/bash

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# basic
PS1='\w\$ '

alias ls='ls -h --color=auto'
alias grep='grep --color=auto'
alias cp='cp -i -v'
alias mv='mv -i -v'
alias rm='rm -i -v'
alias halt='sudo halt'
alias reboot='sudo reboot'

# apps
alias pdf='mupdf'
alias browser='chromium'
alias image='feh'
alias dropbox='python2 ~/bin/dropbox.py'
alias music='ncmpcpp'
