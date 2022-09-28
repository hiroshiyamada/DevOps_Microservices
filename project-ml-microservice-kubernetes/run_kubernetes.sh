#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="cybermech/udacity-p4"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-p4-app\
    --image=$dockerpath\
    --port=80 --labels app=udacity-p4-app

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udacity-p4-app 8000:80
