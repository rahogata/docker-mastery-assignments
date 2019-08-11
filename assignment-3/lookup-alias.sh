#!/bin/sh

networkName=assignment3

docker container run --rm --network $networkName alpine:latest nslookup search

