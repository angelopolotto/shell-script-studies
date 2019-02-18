#!/bin/bash

docker run \
  --name ubuntu \
  -e HOST_IP=$(ifconfig en0 | awk '/ *inet /{print $2}') \
  -v "$(pwd)":/src \
  -t -i \
  ubuntu /bin/bash
