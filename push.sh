#!/bin/bash

set -exuo pipefail

img_name=$1
dockerhub_username=$2
docker_username=$3
docker_password=$4

sudo docker login -u $docker_username -p $docker_password
sudo docker push "${dockerhub_username}"/"${img_name}":latest
sudo docker logout
