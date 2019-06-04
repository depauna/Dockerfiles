#!/bin/bash

set -exuo pipefail

dockerfilepath=$(dirname "$0")
img_name=$1
dockerhub_username=$2
docker_username=$3
docker_password=$4

cd "$dockerfilepath"/"$img_name" || return
version=$(cat version)

docker login -u $docker_username -p $docker_password
docker push "${dockerhub_username}"/"${img_name}":"${version}"
docker push "${dockerhub_username}"/"${img_name}":latest
docker logout
