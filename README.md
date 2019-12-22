# alpine-tor-proxychains
Simple bundle (Tor + proxychains-ng + nyx) to wrap your docker container traffic into another container running Tor with proxychains-ng.

# Installation
## Building Tor proxy
1. Build Tor proxy with `tor-proxy/build.sh` script.
2. Run proxy (+ nyx monitor) with `tor-proxy/run.sh` script.
  
After that you can send traffic of supported applications (for example, Burp Suite, etc.) through Tor SOCKS proxy at port 9050 by default, or you can use linked container from the next part.

## Building another linked container with proxychains
1. Build another container with `proxychains/build.sh` script.
2. Run container with `proxychains/run.sh` script.
  
After that you will get `/bin/bash` into your alpine container. 
  
That's all.  
If you want to put your application's traffic from the second container through the first one, you need to use `proxychains` command as a prefix, e.g. `proxychains curl ifconfig.me`
