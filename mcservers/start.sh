#!/bin/sh

if [ $# -eq 0 ]; then
    echo 'Usage: startmc <server-name>'
    exit 0
fi

if [ ! -d "mcserver-$1" ]; then
    echo "No such MC server: $1"
    exit 0
fi

screen -d -m -S mcserver-$1 ./.mcserver-start-in-screen.sh mcserver-$1
