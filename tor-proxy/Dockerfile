FROM alpine:edge

RUN apk update && \ 
    apk upgrade && \ 
    apk add tor python2 py-pip iptables --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/main/ && \
    pip --no-cache-dir install nyx

EXPOSE 9050

COPY torrc.default /etc/tor/torrc.default
COPY iptables_rules.sh /iptables_rules.sh
COPY bootstrapping.sh /bootstrapping.sh
COPY nyxrc.conf /var/lib/tor/.nyx/config

RUN chmod +x iptables_rules.sh && \
    chmod +x bootstrapping.sh && \
    chown -R tor /etc/tor

USER tor
ENTRYPOINT [ "/bin/sh" ]