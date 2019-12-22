#!/bin/bash

docker run \
--rm \
--network container:torproxy \
--name torrouted \
-it chains/tor_chains
