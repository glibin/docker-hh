#!/bin/sh

DOCROOT=${DOCROOT:-"/Users/belk/Documents/projects/logic"}

docker pull glibin.pyn.ru:5000/logic
docker rm logic
docker run -p 9200:9200 -t -i --rm="true" --name="logic" -v ${DOCROOT}:/data glibin.pyn.ru:5000/logic