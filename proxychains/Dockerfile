FROM alpine:edge

RUN apk update && apk add --no-cache proxychains-ng bash curl nmap nmap-nselibs nmap-scripts openssh

COPY config/proxychains.conf /etc/proxychains/proxychains.conf
ENTRYPOINT [ "proxychains", "/bin/bash" ]