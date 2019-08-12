#!/bin/bash

tearDown() {
  docker container stop db2
  sleep 1
  printf "Removed container db2.\n"
  docker volume rm assignt5-data
  printf "Removed volume.\n"
}

trap tearDown 2

docker container run --rm --name db2 -d -v assignt5-data:/var/lib/postgresql/data postgres:9.6.2-alpine

docker volume ls

docker container logs -f db2
