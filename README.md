# Docker Alpine with Tor and Proxychains
[![Issues](https://img.shields.io/github/issues/manmolecular/alpine-tor-proxychains)](https://github.com/manmolecular/alpine-tor-proxychains/issues)
[![Pull Requests](https://img.shields.io/github/issues-pr/manmolecular/alpine-tor-proxychains)](https://github.com/manmolecular/alpine-tor-proxychains/pulls)
[![Last Commits](https://img.shields.io/github/last-commit/manmolecular/alpine-tor-proxychains)](https://github.com/manmolecular/alpine-tor-proxychains/commits/master)  
:bust_in_silhouette: Simple bundle (Tor + iptables + proxychains + nyx monitor) to wrap your docker container traffic into another container running Tor.

<p align="center">
  <img src="https://raw.githubusercontent.com/manmolecular/alpine-tor-proxychains/docker_compose/assets/tor-logo.png?raw=true">
</p>  

## Requirements
- Docker (tested on 19.03.5)  
- docker-compose (tested on 1.24.1)  

## Installation
Build and run proxy with nyx monitor
```
cd tor-proxy
chmod +x run.sh
./run.sh
```
Build and run additional container with proxychains
```
cd proxychains
chmod +x run.sh
./run.sh
```
