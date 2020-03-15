FROM alpine:3.9
ARG BROOK_VERSION="20200201"
RUN mkdir -p /brookfolder
WORKDIR /brookfolder
RUN wget -O brook "https://github.com/txthinking/brook/releases/download/v${BROOK_VERSION}/brook" && chmod +x brook
ENTRYPOINT ["/brookfolder/brook"]
