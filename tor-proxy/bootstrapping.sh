#!/bin/sh

set -e

touch /tmp/tor.launching

echo "launching TOR ..."
tor -f /etc/tor/torrc.default > /tmp/tor.launching 2>&1 &

exec 6>&-

while ! grep "Bootstrapped 100%" /tmp/tor.launching
do sleep 1; done

rm /tmp/tor.launching

exec 6>&-