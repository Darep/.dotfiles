#!/bin/bash

if [ $# -eq 0 ]; then
    echo 'Usage: startmc <server-name>'
    exit 0
fi

if [ ! -d "mcserver-$1" ]; then
    echo "No such MC server: $1"
    exit 0
fi

SERVER=mcserver-$1
WORLD=$2
SERVER_DIR="/home/mc/mcserver-$1"

DATE=`date +%Y-%m-%d`
BACKUP_FILE="/home/mc/Backups/mcserver-$1-$WORLD-backup-$DATE.tar.gz" 

echo "Disabling saving while backing up..."
bash -c "screen -S mcserver-$1 -X eval 'stuff \"save-off\"\015'"

echo "Backing up..."
tar cpzf $BACKUP_FILE -C $SERVER_DIR $WORLD

echo "Re-enabling saving..."
bash -c "screen -S mcserver-$1 -X eval 'stuff \"save-on\"\015'"

echo "Done!"
