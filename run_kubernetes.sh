#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
dockerpath=celavi/sklearn_microservices:latest

# Run the Docker Hub container with kubernetes
kubectl run sklearn --image=$dockerpath --port=80

# Wait for pod to spin up
sleep 60s

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward pod/sklearn 8000:80
