#!/bin/bash
podman run -it --rm \
   -v /home/christoph/.ssh:/home/christoph/.ssh \
   -v /home/christoph/build:/home/christoph/build \
   --userns keep-id:uid=1000,gid=1000 \
   localhost/myarch:latest
