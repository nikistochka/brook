FROM alpine:3.9
ARG BROOK_VERSION=20200201
RUN mkdir -p /brookfolder
WORKDIR /brookfolder
RUN wget -O brook "https://github.com/txthinking/brook/releases/download/v20200201/brook" && chmod +x brook
ENTRYPOINT ["/brookfolder/brook"]
