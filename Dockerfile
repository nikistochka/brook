FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y wget

RUN mkdir /usr/local/brook/bin
RUN cd /usr/local/brook/bin
RUN wget -O brook "https://github.com/txthinking/brook/releases/download/v20180601/brook"

RUN chmod +x brook

ENTRYPOINT ["/usr/local/brook/bin/brook"]
