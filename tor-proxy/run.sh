#!/bin/bash

set -e

docker run --rm -d -t \
           --dns=8.8.8.8 \
           --dns=8.8.4.4 \
           --dns=1.1.1.1 \
           --dns=1.0.0.1 \
           -p 9050:9050 \
           --name torproxy proxy/tor_proxy && \
docker exec -it torproxy /bin/sh bootstrapping.sh && \
docker exec --user root --privileged -it torproxy /bin/sh iptables_rules.sh && \
docker exec -it torproxy nyx