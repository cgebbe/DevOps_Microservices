#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# IMAGE_NAME variable is set via `source run_docker.sh` NOT `./run_docker.sh`, see
# https://stackoverflow.com/a/10781862/2135504
dockerpath="gebbissimo/${IMAGE_NAME}"
export DOCKERPATH=$dockerpath

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag $IMAGE_NAME $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath