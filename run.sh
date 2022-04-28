#!/bin/bash
source .env
docker run -it --rm ${DOCKER_LOGIN}/${NAME}:${VERSION} bash
