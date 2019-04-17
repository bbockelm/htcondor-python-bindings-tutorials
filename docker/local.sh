#!/usr/bin/env bash

set -e

CONTAINER_TAG=htcondor-python-bindings-tutorials

docker build -t ${CONTAINER_TAG} --file docker/Dockerfile .
docker run -it --rm -p 8888:8888 ${CONTAINER_TAG} jupyter lab