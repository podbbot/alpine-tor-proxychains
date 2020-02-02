#!/bin/bash

set -e

docker-compose up -d && \
docker exec --user root --privileged -it torproxy /bin/sh config/iptables_rules.sh
