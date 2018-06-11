# brook

## Start

```
sudo docker run -d --name mybrook -p 9082:9082/tcp -p 9082:9082/udp nikistochka/brook socks5 -l :9082 -i 1.2.3.4 --username USER1 --password PASSWORD</code>
```
