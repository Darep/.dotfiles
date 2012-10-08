#!/bin/bash

START_MEMORY=512M
MAX_MEMORY=1024M

cd $1
touch running
while [ -f running ]; do
    java -Xms$START_MEMORY -Xmx$MAX_MEMORY -jar minecraft_server.jar nogui
done
