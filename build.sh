#!/bin/bash
set -ev

if [ "$BUILD_ENV" == "production" ]; then
  echo "Building production image: dzarate/udacity-c3-frontend:latest"
  rm src/environments/environment.ts
  mv src/environments/environment.prod.ts src/environments/environment.ts
  docker build -t dzarate/udacity-c3-frontend:latest .
else
  echo "Building development image: dzarate/udacity-c3-frontend:latest-dev"
  rm src/environments/environment.prod.ts
  docker build -t dzarate/udacity-c3-frontend:latest-dev .
fi
