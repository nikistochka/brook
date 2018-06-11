FROM ubuntu:16.04

ENV BROOK_VERSION="20180601"


RUN apt-get update \
    && apt-get install -y wget

RUN mkdir -p /usr/local/brook/bin && cd /usr/local/brook/bin; \
    && wget -O brook "https://github.com/txthinking/brook/releases/download/v${BROOK_VERSION}/brook" && chmod +x brook;

ENTRYPOINT ["/usr/local/brook/bin/brook"]
