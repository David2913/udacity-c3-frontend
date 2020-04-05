#!/bin/bash

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

if [ "$BUILD_ENV" == "production" ]; then
  echo "Deploying production image: dzarate/udacity-c3-frontend:latest"
  docker push dzarate/udacity-c3-frontend:latest
else
  echo "Deploying development image: dzarate/udacity-c3-frontend:latest-dev"
  docker push dzarate/udacity-c3-frontend:latest-dev
fi
