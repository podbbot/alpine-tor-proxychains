#!/bin/sh

set -e

## "Wait for" bootstrap script
touch /tmp/tor.launching

echo "Launching default Tor ..."
tor -f /etc/tor/torrc.default > /tmp/tor.launching 2>&1 &

exec 6>&-

while ! grep "Bootstrapped 100%" /tmp/tor.launching
do sleep 0.2 && tail -n 1 /tmp/tor.launching; done

rm /tmp/tor.launching

exec 6>&-