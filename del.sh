#!/bin/bash
source .env
docker run --rm anoxis/registry-cli -l ${DOCKER_LOGIN}:${DOCKER_PASSWORD} -r https://docker.io -i ${DOCKER_LOGIN}/${NAME} --delete-all
