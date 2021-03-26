# Docker Alpine with Tor and Proxychains
[![Issues](https://img.shields.io/github/issues/manmolecular/alpine-tor-proxychains)](https://github.com/manmolecular/alpine-tor-proxychains/issues)
[![Pull Requests](https://img.shields.io/github/issues-pr/manmolecular/alpine-tor-proxychains)](https://github.com/manmolecular/alpine-tor-proxychains/pulls)
[![Last Commits](https://img.shields.io/github/last-commit/manmolecular/alpine-tor-proxychains)](https://github.com/manmolecular/alpine-tor-proxychains/commits/master)  
:bust_in_silhouette: Simple bundle (Tor proxy + iptables rules + proxychains + privoxy+ nyx monitor) to wrap your traffic into Tor container. SOCKS5 support.  

<p align="center">
  <img src="https://raw.githubusercontent.com/manmolecular/alpine-tor-proxychains/master/assets/tor-logo.png?raw=true">
</p>  

## Screenshot

<p align="center">
  <img src="https://raw.githubusercontent.com/manmolecular/alpine-tor-proxychains/master/assets/screenshot.jpg">
</p>  

## Requirements
- Docker (tested on 19.03.5)  
- docker-compose (tested on 1.24.1)  

## Components
Main container (proxy, image: `proxy/torproxy:1.0`):  
- tor with socks5 on port `9050` (for different stuff like proxychains, burp suite, etc.)  
- controller on port `9051` (for hot configs and hacking stuff, password is `cookiemonster` by default)
- privoxy on port `8118` (for HTTP connections - browsers, curl, etc.)  
- iptables with a custom set of rules (to block non-tor traffic, see: [Blocking all local outbound non-Tor traffic with iptables](https://trac.torproject.org/projects/tor/wiki/doc/BlockingNonTorTraffic))  
- nyx monitor (to get a new identity, monitor traffic, etc.)  
- torrc configuration that excludes the choice of exit nodes from China, Russia, Belarus and Kazakhstan (countries with partial or complete blocking of the Internet)
  
Additional container (routed with proxychains, image: `chains/torchains:1.0`):  
- `/bin/bash` through proxychains
- additional possibilities (ssh connections, Nmap scanning, etc.)


## Installation
### Build and run proxy
```
cd tor-proxy
chmod +x run.sh
./run.sh
```
Or
```
cd tor-proxy
make up
```
### Run nyx monitor (with running proxy)
```
cd tor-proxy
chmod +x monitor.sh
./run.sh
```
Or
```
cd tor-proxy
make monitor
```
### Build and run additional container with proxychains
```
cd proxychains
chmod +x run.sh
./run.sh
```
Or
```
cd proxychains
make up
```
