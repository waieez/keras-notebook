#!/bin/bash

docker build -t waieez/keras-notebook:$1 -f ScipyDockerfile .
docker tag waieez/keras-notebook:$1 waieez/keras-notebook:latest