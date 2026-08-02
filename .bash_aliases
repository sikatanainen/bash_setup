#!/bin/bash

# =で区切って、左側を名前(name)、右側をコマンド(cmd)として読み込む
while IFS== read -r name cmd; do

    [[ -z "${name// /}" ]] && continue

    [[ "${name}" =~ ^[[:space:]]*# ]] && continue

    alias "${name}=${cmd}"
    
done << EOF

l=ls -a --color=auto
ls=ls --color=auto
rm=rm -rf
grep=grep --color=auto

sau=sudo apt update -y
sai=sudo apt update && sudo apt install -y
sag=sudo apt update && sudo apt upgrade -y
py=python3
venv=python3 -m venv .venv
va=source .venv/bin/activate
pi=pip3 install
brc=vim ~/.bashrc
src=source ~/.bashrc
v=vim
vrc=vim ~/.vimrc
emacs=emacs -nw
EOF
