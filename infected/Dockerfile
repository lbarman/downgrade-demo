FROM alpine:3.5
MAINTAINER Ludovic Barman <ludovic.barman@protonmail.com>

COPY scripts /infected
WORKDIR /infected

RUN apk add --no-cache nmap nmap-scripts nmap-nselibs nano iptables

COPY nmap-scripts /usr/share/nmap/scripts

CMD ["/infected/evil-program.sh"]