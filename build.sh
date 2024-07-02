#!/bin/bash

# Set the image name
IMAGE_NAME="my-react-app"

# Build the Docker image
echo "Building the Docker image..."
 docker build -t $IMAGE_NAME .

# Check if the build was successful
if [ $? -eq 0 ]; then
  echo "Docker image built successfully."
else
  echo "Failed to build the Docker image."
  exit 1
fi
