#!/bin/bash
docker image build -t bijubs/mydevdata:$1 -f Jenkins_Upgradev3/jenkins-plugin-model/src/demo2-publish/dockerfile .

if [ -z ${DOCKER_HUB_USER+x} ]
then 
    echo 'Skipping login - credentials not set' 
else 
    docker login -u $DOCKER_HUB_USER -p $DOCKER_HUB_PASSWORD
fi

docker push bijubs/mydevdata:$1