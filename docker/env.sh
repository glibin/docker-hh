#!/bin/sh

if [ "$(uname)" == "Darwin" ]
then
    export DOCKER_HOST=tcp://$(boot2docker ip 2>/dev/null):2375
else
    export DOCKER_HOST=unix://var/run/docker.sock
fi