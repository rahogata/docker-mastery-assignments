#!/bin/bash

case "$1" in
  'pc') shift
      docker-compose exec postgres psql -h localhost -U postgres -d rama
    ;;
  'mc') shift
      docker-compose exec mysql mysql
    ;;
  'pf') shift
      docker-compose exec postgres psql -h localhost -U postgres -d rama -f "$1"
    ;;
  'mf') shift
      docker-compose exec mysql "mysql rama < $1"
    ;;
  'd') shift
    docker-compose "$@"
esac

