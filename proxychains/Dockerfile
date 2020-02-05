FROM alpine:edge

LABEL org.label-schema.name="torchains" \
      org.label-schema.description="Tor proxychains additional container" \
      org.label-schema.license="GPL-2.0"

RUN apk update && \
    apk add --no-cache proxychains-ng bash curl nmap nmap-nselibs nmap-scripts openssh && \
    rm -rf /etc/apk/cache

COPY config/proxychains.conf /etc/proxychains/proxychains.conf
ENTRYPOINT [ "proxychains", "/bin/bash" ]
