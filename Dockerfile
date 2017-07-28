FROM arm32v7/debian:latest
MAINTAINER Daniel Starzmann <daniel@starze.de>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive \
    apt-get install -yq ddclient libio-socket-ssl-perl ca-certificates && \
    rm -rf /var/lib/apt/lists/*

VOLUME /config

ENTRYPOINT /usr/sbin/ddclient -foreground -file /config/ddclient.conf 

