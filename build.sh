#!/bin/bash -x

set -e

export PKG_DIR="layer"

rm -rf ${PKG_DIR} && mkdir -p ${PKG_DIR}
docker build -t ansible-builder -f Dockerfile .
CONTAINER=$(docker run -d ansible-builder false)
docker cp $CONTAINER:/var/task/python/ ${PKG_DIR}
docker rm $CONTAINER
