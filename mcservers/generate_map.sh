#!/bin/sh

if [ $# -eq 0 ]; then
    echo 'Usage: startmc <server-name>'
    exit 0
fi

if [ ! -d "mcserver-$1" ]; then
    echo "No such MC server: $1"
    exit 0
fi

WORLD=$2
TEMP=/home/mc/temp/minecraft-overviewer/mcserver-$1

# Copy the world first to a temp location
mkdir -p $TEMP
cp -a /home/mc/mcservers/mcserver-$1/$WORLD $TEMP/

# generate!
mkdir -p /home/mc/public_html/$1
overviewer.py \
          --rendermodes=smooth-lighting \
          $TEMP/$WORLD \
          /home/mc/public_html/$1
