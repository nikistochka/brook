## Brook docker container

### Getting Started

Run docker container with brook proxy server. 

```
docker run -d --name brook --restart unless-stopped -p 9082:9082/tcp -p 9082:9082/udp nikistochka/brook \
socks5 -l :9082 -i 127.0.0.1 --username USER1 --password PASSWORD1
```

Or use fancy simplistic start.sh script, just don't forget to change parameters at the start of the script.
