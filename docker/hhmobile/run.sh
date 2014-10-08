#!/bin/sh

DOCROOT=${DOCROOT:-"/Users/belk/Documents/projects/hhmobile"}

docker pull glibin.pyn.ru:5000/hhmobile
docker rm hhmobile
docker run -p 8080:8080 -t -i --rm="true" --name="hhmobile" -v ${DOCROOT}:/data glibin.pyn.ru:5000/hhmobile