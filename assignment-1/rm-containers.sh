#!/bin/sh

if [ $# -eq 0 ]; then
    printf "Usage: `basename $0` <container ids...>\n"
    exit 1
fi

docker container rm -f $@
