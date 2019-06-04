#!/bin/bash

set -exuo pipefail

dockerfilepath=$(dirname "$0")
img_name=$1
dockerhub_username=$2

cd "$dockerfilepath"/"$img_name" || return
version=$(cat version)

docker build . -t "${dockerhub_username}"/"${img_name}":"${version}"
docker build . -t "${dockerhub_username}"/"${img_name}":latest
