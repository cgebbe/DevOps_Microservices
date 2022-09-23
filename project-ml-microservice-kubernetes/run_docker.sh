#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
export IMAGE_NAME="project-operationalize-ml-microservice"
docker build -t $IMAGE_NAME .

# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app 
# -p <host_port>:<container_port>
# (--publish-all will use a random host port)
docker run --rm -p 8000:80  $IMAGE_NAME
docker ps