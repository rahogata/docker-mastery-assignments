#!/bin/sh

networkName=assignment3
docker network create $networkName
docker container run --rm --network $networkName --network-alias search -d elasticsearch:2
docker container run --rm --network $networkName --network-alias search -d elasticsearch:2

