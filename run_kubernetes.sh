#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# docker_path=noriyasuchin2606

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy udacity-project4 --image="noriyasuchin2606/udacity-project4:latest"


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/udacity-project4 8000:80