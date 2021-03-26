#!/bin/sh

set -e

# Run privoxy
cd /etc/privoxy
privoxy

# Run tor
tor -f /etc/tor/torrc.default --controlport 0.0.0.0:9051
