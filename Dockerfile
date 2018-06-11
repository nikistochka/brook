FROM ubuntu:16.04

ENV BROOK_VERSION="20180601"

RUN apt-get update
RUN apt-get install -y wget

RUN wget "https://github.com/txthinking/brook/releases/download/v20180601/brook"

RUN chmod +x brook
