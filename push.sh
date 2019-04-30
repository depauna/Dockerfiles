#!/bin/bash

img_name=$1
dockerhub_username=$2
docker_username=$3
docker_password=$4

docker login -u $docker_username -p $docker_password
docker push "${dockerhub_username}"/"${img_name}":latest
docker logout
