#!/bin/bash
IP=127.0.0.1
USERNAME=YourMom
PASSWORD=CantRememberPasswords
BROOK_PORT=9082


which docker &> /dev/null

if [ $? -ne 0 ]; then
	echo "Looks like docker is unavailable: "
	which docker
	exit 1
else
	docker --version
fi

sudo docker run -d --name brook --restart unless-stopped -p $BROOK_PORT:$BROOK_PORT nikistochka/brook \
socks5 -l :$BROOK_PORT -i $IP --username $USERNAME --password $PASSWORD
