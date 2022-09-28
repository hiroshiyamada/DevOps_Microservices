#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="cybermech/udacity-p4"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=cybermech
docker tag udacity-p4 cybermech/udacity-p4:latest

# Step 3:
# Push image to a docker repository
docker push cybermech/udacity-p4:latest