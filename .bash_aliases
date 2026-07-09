#!/bin/bash

# =で区切って、左側を名前(name)、右側をコマンド(cmd)として読み込む
while IFS='=' read -r name cmd; do
    # 空行やスペースのみの行はスキップ
    [[ -z "${name// /}" ]] && continue
    # コメント行（#から始まる行）はスキップ
    [[ "${name}" =~ ^[[:space:]]*# ]] && continue
    # 読み込んだリストを alias コマンドとして登録
    alias "${name}=${cmd}"
    
done << 'EOF'

l=ls -a --color=auto
v=nvim
py=python3
venv=python3 -m venv venv
va=source venv/bin/activate
brc=nvim ~/.bashrc
src=source ~/.bashrc
pi=pip3 install
rm=rm -rf
tlbx=toolbox enter
sysre=systemctl reboot

EOF
