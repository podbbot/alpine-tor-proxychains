# alpine-tor-proxychains
Simple bundle (Tor + proxychains-ng + nyx) to wrap your docker container traffic into another container running Tor with proxychains-ng.

# Installation
## Building Tor proxy
1. Build Tor proxy with `tor-proxy/build.sh` script.
2. Run proxy (+ nyx monitor) with `tor-proxy/run.sh` script.

## Building another linked container with proxychains
1. Build another container with `proxychains/build.sh` script.
2. Run container with `proxychains/run.sh` script.
  
After that you will get `/bin/bash` into your alpine container. 
  
## Running applications through Tor
If you want to send your application's traffic from the second container (`chains/tor_chains`) through the first one (`proxy/tor_proxy`, with Tor), you need to use `proxychains` command as a prefix, e.g.: 
1. `proxychains curl ifconfig.me`
2. `proxychains nmap ...`

That's all.
