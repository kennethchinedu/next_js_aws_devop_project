#!/bin/bash

# Update package lists and install dependencies
echo "Updating package lists..."
sudo apt-get update -y

# Install Make if not installed
if ! command -v make &> /dev/null; then
    echo "Make not found. Installing Make..."
    sudo apt-get install -y make
fi

# Install Docker and Docker Compose if not installed
if ! command -v docker &> /dev/null; then
    echo "Docker not found. Installing Docker..."
    sudo apt-get install -y docker.io
fi

if ! command -v docker-compose &> /dev/null; then
    echo "Docker Compose not found. Installing Docker Compose..."
    sudo apt-get install -y docker-compose
fi

# Set environment variables (using values from the script or .env file)
echo "Setting up environment variables..."
echo "DATABASE_URL=${DATABASE_URL}" >> ~/.env
echo "POSTGRES_DB=${POSTGRES_DB}" >> ~/.env
echo "POSTGRES_PASSWORD=${POSTGRES_PASSWORD}" >> ~/.env
echo "POSTGRES_PORT=${POSTGRES_PORT}" >> ~/.env
echo "POSTGRES_USER=${POSTGRES_USER}" >> ~/.env
echo "DOCKER_USERNAME=${DOCKER_USERNAME}" >> ~/.env
echo "DOCKER_PASSWORD=${DOCKER_PASSWORD}" >> ~/.env

# Make sure Docker service is running
echo "Starting Docker service..."
sudo systemctl start docker
sudo systemctl enable docker

# Pull the Docker image from Docker Hub
# echo "Pulling Docker image..."
# docker pull your-docker-image-name

# Start the containers using Docker Compose (make sure your docker-compose.yml is present)
echo "Starting Docker Compose..."
# docker-compose up -d

# Any additional configurations or tasks can be added here...

echo "Setup complete."
