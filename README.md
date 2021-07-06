docker-zookeeper
================

## Build a docker image for Zookeeper.

```
docker build -t etleap/zookeeper:3.4.14 .
```

## Push image to ECR

:warning: This will currently cause VPC deployments to redeploy Zookeeper, which sometimes causes app containers to get stuck! See [here](https://www.notion.so/etleap/2021-07-06-Prod-Outage-Post-Mortem-48c69624a87d4f8aa61cc82830ec7aac) for an example. Will be fixed with https://www.pivotaltracker.com/story/show/178115599, but until then, think through how to address stuck app containers if we're making ZK image changes!

```
docker tag etleap/zookeeper:3.4.14 841591717599.dkr.ecr.us-east-1.amazonaws.com/zookeeper:latest
docker push 841591717599.dkr.ecr.us-east-1.amazonaws.com/zookeeper:latest
```

