#!/bin/bash

docker run \
--rm \
-d \
-p 9050:9050 \
--name torproxy proxy/tor_proxy && \
docker exec -it torproxy nyx