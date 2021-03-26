FROM alpine:edge

LABEL org.label-schema.name="torproxy" \
      org.label-schema.description="Tor proxy (SOCKS5 plus Privoxy HTTP)" \
      org.label-schema.license="GPL-2.0"

RUN apk update && \
    apk add tor python2 py-pip iptables privoxy --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/main/ && \
    pip --no-cache-dir install nyx && \
    rm -rf /etc/apk/cache

EXPOSE 9050 9051 8118

COPY config/torrc/torrc.default /etc/tor/torrc.default
COPY config/iptables/rules.sh config/iptables_rules.sh
COPY config/nyx/nyxrc.conf /var/lib/tor/.nyx/config
COPY config/privoxy/privoxy.conf /etc/privoxy/config
COPY config/entrypoint.sh entrypoint.sh

RUN chmod +x config/iptables_rules.sh && \
    chmod +x entrypoint.sh && \
    chown -R tor /etc/tor && \
    chown -R tor /etc/privoxy

USER tor
ENTRYPOINT [ "/bin/sh", "entrypoint.sh" ]
