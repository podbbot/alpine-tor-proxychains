#!/bin/bash

set -e

mkdir -p shared
docker-compose run --rm torchains
