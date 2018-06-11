FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y wget

RUN mkdir -p /newfolder
RUN cd /newfolder

RUN wget -O brook "https://github.com/txthinking/brook/releases/download/v20180601/brook"

RUN chmod +x brook

ENTRYPOINT ["/newfolder/brook"]
