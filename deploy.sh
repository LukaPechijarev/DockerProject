#!/bin/bash

# Pull the latest image from Docker Hub.
docker pull pechijarevluka/simpleapp:latest

# Stop and remove the existing container.
docker stop my-node-app || true
docker rm my-node-app || true

# Run the new container.
docker run -d --name app -p 9900:9900 pechijarevluka/simpleapp:latest

