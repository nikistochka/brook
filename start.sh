#!/bin/bash
IP=127.0.0.1
USERNAME=YourMom
PASSWORD=CantRememberPasswords

UDPRANGE=9082:9082
TCPRANGE=9082:9082


which docker &> /dev/null

if [ $? -ne 0 ]; then
	echo "Looks like docker is unavailable: "
	which docker
	exit 1
else
	docker --version
fi

sudo docker run -d --name brook --restart unless-stopped -p $TCPRANGE/tcp -p $UDPRANGE/udp nikistochka/brook \
socks5 -l :9082 -i $IP --username $USERNAME --password $PASSWORD
