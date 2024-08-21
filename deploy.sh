#!/bin/bash

# Pull the latest image from Docker Hub
docker pull pechijarevluka/simpleapp:latest

# Stop and remove the old container if it exists
docker stop simpleapp || true
docker rm simpleapp || true

# Run the new container
docker run -d --name simpleapp -p 9900:9900 pechijarevluka/simpleapp:latest

