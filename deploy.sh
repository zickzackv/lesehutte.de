#!/usr/bin/env bash

SERVER=46.163.119.122
R_PATH=/var/www/vhosts/lvps46-163-119-122.dedicated.hosteurope.de/henrich-lipinsky
PORT=1977
USER=root
OPTIONS=$@
KEY="$HOME/.ssh/celeraone.com.id_rsa"
jekyll build && rsync -avz --rsh="ssh -p$PORT -l$USER -i $KEY" $OPTIONS _site/ $SERVER:$R_PATH
