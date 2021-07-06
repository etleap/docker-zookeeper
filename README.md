docker-zookeeper
================

Builds a docker image for Zookeeper.

```
docker build -t etleap/zookeeper:3.4.14 .
```

Push image to ECR

```
docker tag etleap/zookeeper:3.4.14 841591717599.dkr.ecr.us-east-1.amazonaws.com/zookeeper:latest
docker push 841591717599.dkr.ecr.us-east-1.amazonaws.com/zookeeper:latest
```

