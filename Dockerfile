from ubuntu:16.04

ENV BROOK_VERSION="20180601"

RUN wget https://github.com/txthinking/brook/releases/download/v${BROOK_VERSION}/brook -O /usr/local/bin/brook \
  && chmod +x /usr/local/bin/brook

ENTRYPOINT ["/usr/local/bin/"]
