docker-zookeeper
================

Custom docker image for Zookeeper.
To build and publish use `publish.sh`. It builds a multi-arch image (`linux/amd64` and `linux/arm64`) and pushes it to ECR.

```
# login to ECR
aws ecr get-login-password | docker login --username AWS --password-stdin 841591717599.dkr.ecr.us-east-1.amazonaws.com

# update publish.sh zookeeper version ZOOKEEPER_VERSION
sh publish.sh
```
