#!/bin/bash

case "$1" in
  'c') psql -h localhost -d rama
    ;;
  'f') shift
     psql -h localhost -d rama -f "$1"
    ;;
esac

