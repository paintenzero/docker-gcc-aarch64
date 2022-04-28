#!/bin/bash
source ./.env

set -e
docker buildx build --platform linux/amd64 -t ${DOCKER_LOGIN}/${NAME}:${VERSION} -t ${DOCKER_LOGIN}/${NAME}:latest --push --pull --no-cache .
