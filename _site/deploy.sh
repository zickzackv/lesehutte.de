#!/usr/bin/env bash

SERVER=hosteurope
R_PATH=/webroot/henrich/lesehuette.de/public_html/
PORT=22
USER=root
OPTIONS="$@ --chmod=Fo+r"
KEY="$HOME/.ssh/hosteurope.rsa.pub"
jekyll build && rsync -avz --rsh="ssh -p$PORT -l$USER -i $KEY" $OPTIONS _site/ $SERVER:$R_PATH
