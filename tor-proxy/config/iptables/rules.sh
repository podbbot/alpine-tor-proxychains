#!/bin/sh

# See: https://trac.torproject.org/projects/tor/wiki/doc/BlockingNonTorTraffic

iptables -F OUTPUT
iptables -A OUTPUT -j ACCEPT -m owner --uid-owner tor
iptables -A OUTPUT -j ACCEPT -o lo
iptables -A OUTPUT -j ACCEPT -p udp --dport 123
# Drop everything which is not Tor-routed
iptables -P OUTPUT DROP
