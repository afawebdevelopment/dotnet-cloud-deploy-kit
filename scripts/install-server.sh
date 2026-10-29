#!/bin/bash

apt update -y
apt upgrade -y

apt install -y docker.io docker-compose-v2 curl

systemctl enable docker
systemctl start docker

docker --version
docker compose version
