# Dockerfiles

docker build . depauna/base:latest
docker build . depauna/maven:latest
docker build . depauna/nvm:latest
docker build . depauna/jdk8:latest

docker run -t -i --rm depauna/<image> bash