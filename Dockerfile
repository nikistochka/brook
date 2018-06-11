from ubuntu:16.04

ENV BROOK_VERSION="20180601"

RUN apt-get install wget
RUN wget https://github.com/txthinking/brook/releases/download/v20180601/brook -O /usr/local/bin/brook 
RUN chmod +x /usr/local/bin/brook

ENTRYPOINT ["/usr/local/bin/"]
