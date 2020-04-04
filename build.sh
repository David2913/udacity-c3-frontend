#!/bin/bash
set -ev

if [ "$BUILD_ENV" == "production" ]; then
  echo "Building production image: udacity-c3-frontend"
  rm src/environments/environment.ts
  mv src/environments/environment.prod.ts src/environments/environment.ts
else
  echo "Building development image: udacity-c3-frontend"
  rm src/environments/environment.prod.ts
fi

docker build -t dzarate/udacity-c3-frontend .
