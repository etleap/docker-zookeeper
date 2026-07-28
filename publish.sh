#!/bin/bash

set -o errexit
set -o nounset

source .env
TAG="${ZOOKEEPER_VERSION}"

docker buildx build --platform linux/amd64,linux/arm64 --build-arg ZOOKEEPER_VERSION=${ZOOKEEPER_VERSION} -t 841591717599.dkr.ecr.us-east-1.amazonaws.com/zookeeper:${TAG} --push .
