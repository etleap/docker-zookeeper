#!/bin/bash

set -o errexit
set -o nounset

source .env
TAG="${ZOOKEEPER_VERSION}"

docker buildx build --platform linux/amd64 --build-arg ZOOKEEPER_VERSION=${ZOOKEEPER_VERSION} -t etleap/zookeeper:${TAG} .

docker tag etleap/zookeeper:${TAG} 841591717599.dkr.ecr.us-east-1.amazonaws.com/zookeeper:${TAG}
docker push 841591717599.dkr.ecr.us-east-1.amazonaws.com/zookeeper:${TAG}
