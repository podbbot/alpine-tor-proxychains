# alpine-tor-proxychains
Simple bundle (Tor + proxychains-ng + nyx monitor) to wrap your docker container traffic into another container running Tor.

# Installation
## Building Tor proxy
1. Build Tor proxy with `tor-proxy/build.sh` script.
2. Run proxy with `tor-proxy/run/run_default.sh` script.

## Building another linked container with proxychains
1. Build another container with `proxychains/build.sh` script.
2. Run container with `proxychains/run.sh` script.
  
After that you will get `/bin/bash` into your isolated torificated alpine container.  
