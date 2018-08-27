#!/bin/bash

VERSION=$1

if [ -z ${VERSION} ]
    then
    echo "Please enter a version of new image"
    exit 1
fi

docker build -t marcelmarloum/test-api-sf4-php:${VERSION} -f docker/php/Dockerfile .
docker build -t marcelmarloum/test-api-sf4-nginx:${VERSION} -f docker/nginx/Dockerfile .


docker push marcelmarloum/test-api-sf4-php:${VERSION}
docker push marcelmarloum/test-api-sf4-nginx:${VERSION}
