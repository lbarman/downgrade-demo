FROM alpine:3.5
MAINTAINER Ludovic Barman <ludovic.barman@protonmail.com>

COPY scripts /client
WORKDIR /client

RUN apk add --no-cache nmap nmap-scripts nmap-nselibs nano

CMD ["/client/evil-program.sh"]