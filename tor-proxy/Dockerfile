FROM alpine:edge

RUN apk update && \ 
    apk upgrade && \ 
    apk add tor python2 py-pip --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/main/ && \
    pip --no-cache-dir install nyx

EXPOSE 9050
COPY torrc.default /etc/tor/torrc.default
RUN chown -R tor /etc/tor
USER tor
ENTRYPOINT [ "tor", "-f", "/etc/tor/torrc.default" ]