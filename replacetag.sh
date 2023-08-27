#!/bin/bash
NEW_TAG=$1
DOCKER_REGISTRY=parthlimbachia1985
REPO=spring-boot-mongo
IMAGE_TAG=$(cat springBootMongo.yml | grep $DOCKER_REGISTRY | awk -F ':' '{print $3}')
sed -i "s@$DOCKER_REGISTRY/$REPO:$IMAGE_TAG@$DOCKER_REGISTRY/$REPO:$NEW_TAG@g" springBootMongo.yml
