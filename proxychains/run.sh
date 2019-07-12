docker run \
--rm \
--network container:torproxy \
--name torrouted \
--entrypoint /bin/bash \
-it chains/tor_chains
