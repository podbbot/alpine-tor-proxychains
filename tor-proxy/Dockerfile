FROM alpine:edge

RUN apk update && \ 
    apk upgrade && \ 
    apk add tor python2 py-pip iptables --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/main/ && \
    pip --no-cache-dir install nyx

EXPOSE 9050

COPY torrc/torrc.default /etc/tor/torrc.default
COPY config/iptables_rules.sh config/iptables_rules.sh
COPY config/nyxrc.conf /var/lib/tor/.nyx/config
COPY launch/ /launch

RUN chmod +x config/iptables_rules.sh && \
    chmod +x launch/tor_default.sh && \
    chown -R tor /etc/tor

USER tor
ENTRYPOINT [ "/bin/sh" ]