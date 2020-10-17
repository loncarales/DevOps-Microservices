#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Build image and add a descriptive tag
docker build -t sklearn_microservices:latest .

# List docker images
docker image ls

# Run flask app
docker run -it -p 8000:80 sklearn_microservices:latest
