#!/bin/bash

set -e

echo "Pulling latest changes..."
git pull

echo "Rebuilding containers..."
docker compose down
docker compose up -d --build

echo "Deployment completed."