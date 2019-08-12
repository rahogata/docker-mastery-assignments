#!/bin/bash

tearDown() {
  docker container stop db1
  printf "Removed container db1.\n"
}

trap tearDown 2

docker container run --rm --name db1 -d -v assignt5-data:/var/lib/postgresql/data postgres:9.6.1-alpine

docker volume ls

docker container logs -f db1
