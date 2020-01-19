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
- iptables with a custom set of rules (to block non-tor traffic, see: Blocking all local outbound non-Tor traffic with iptables)  
- privoxy on port `8118` (for HTTP connections - browsers, curl, etc.)  
- nyx monitor (to get a new identity, monitor traffic, etc.)  
  
Additional container (routed with proxychains, image: `chains/torchains:1.0`):  
- `/bin/bash` through proxychains
- additional possibilities (ssh connections, Nmap scanning, etc.)


## Installation
Build and run proxy
```
cd tor-proxy
chmod +x run.sh
./run.sh
```
Run nyx monitor (with running proxy)
```
cd tor-proxy
chmod +x monitor.sh
./run.sh
```
Build and run additional container with proxychains
```
cd proxychains
chmod +x run.sh
./run.sh
```
