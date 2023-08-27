#!/bin/bash
NEW_TAG=$1
DOCKER_REGISTRY=parthlimbachia1985
IMAGE_TAG=$(cat springBootMongo.yml | grep $DOCKER_REGISTRY | awk -F ':' '{print $3}')
sed -i "s/\$IMAGE_TAG/\$NEW_TAG/g" springBootMongo.yml
