#!/bin/bash

# Define colors
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Stopping and removing current Docker containers
echo -e "${GREEN}Stopping and removing current Docker containers...${NC}"
sudo docker-compose down && echo -e "${GREEN}Containers successfully stopped and removed.${NC}" || echo -e "${RED}Failed to stop and remove containers.${NC}"

# Pulling the latest code from GitHub
echo -e "${GREEN}Pulling the latest code from GitHub...${NC}"
git pull origin main && echo -e "${GREEN}Successfully synchronized the code.${NC}" || echo -e "${RED}Failed to synchronize the code.${NC}"

# Building new Docker images
echo -e "${GREEN}Building new Docker images...${NC}"
sudo docker-compose build && echo -e "${GREEN}Images successfully built.${NC}" || echo -e "${RED}Failed to build images.${NC}"

# Starting containers in detached mode
echo -e "${GREEN}Starting containers in detached mode...${NC}"
sudo docker-compose up -d && echo -e "${GREEN}Containers successfully started.${NC}" || echo -e "${RED}Failed to start containers.${NC}"
