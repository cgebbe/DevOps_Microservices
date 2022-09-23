#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path (generated from `source upload_docker.sh`)
dockerpath=$DOCKERPATH

# Step 2
# Run the Docker Hub container with kubernetes
export DEPLOY_NAME="project-operationalize-ml-microservice"
kubectl create deploy $DEPLOY_NAME --image=$DOCKERPATH

# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods

# Step 4:
# Forward the container port to a host
# kubectl port-forward <local_port>:<remote_port>
export POD_NAME=$(kubectl get pods -o name | grep $DEPLOY_NAME)
kubectl port-forward $POD_NAME --address 0.0.0.0 8000:80

