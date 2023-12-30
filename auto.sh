#!/bin/bash

sudo docker-compose down

git pull origin main

sudo docker-compose build

sudo docker-compose up -d
