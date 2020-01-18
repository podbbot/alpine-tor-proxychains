#!/bin/bash

set -e

mkdir -p shared

docker run \
--rm \
--network container:torproxy \
--name torrouted \
--volume $(pwd)/shared:/shared \
-it chains/tor_chains
