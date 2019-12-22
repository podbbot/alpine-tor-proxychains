FROM alpine:edge

RUN apk update && apk add --no-cache proxychains-ng bash curl nmap nmap-nselibs nmap-scripts

COPY proxychains.conf /etc/proxychains/proxychains.conf
ENTRYPOINT ["proxychains", "/bin/bash"]