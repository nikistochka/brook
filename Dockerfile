FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y wget

RUN mkdir -p /newfolder
WORKDIR /newfolder
RUN cd /newfolder

RUN wget -O brook "https://github.com/txthinking/brook/releases/download/v20181212/brook"

RUN chmod +x brook

RUN ls /newfolder
ENTRYPOINT ["/newfolder/brook"]
