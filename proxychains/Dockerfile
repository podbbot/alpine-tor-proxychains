FROM alpine:edge
RUN apk update && apk add --no-cache proxychains-ng bash

COPY proxychains.conf /etc/proxychains/proxychains.conf

ENTRYPOINT ["/bin/bash"]