#!/bin/bash
set -e

IMAGE="usama334/my-flask-app:latest"
CONTAINER_NAME="my-flask-app"

# Pull latest image
docker pull $IMAGE

# Stop and remove old container if it exists
if docker ps -a --format '{{.Names}}' | grep -q "^${CONTAINER_NAME}$"; then
  docker stop $CONTAINER_NAME
  docker rm $CONTAINER_NAME
fi

# Run the container
docker run -d \
  --name $CONTAINER_NAME \
  -p 5000:5000 \
  $IMAGE
