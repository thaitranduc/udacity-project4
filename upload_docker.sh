#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create docker_path
docker_path=noriyasuchin2606/udacity-project4

# Step 2:  
# Authenticate & tag
docker login &&\
    docker image tag udacity-project4:1.0.0 $docker_path:latest

# Step 3:
# Push image to a docker repository
docker image push $docker_path:latest