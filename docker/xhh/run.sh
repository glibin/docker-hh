#!/bin/sh

DOCROOT=${DOCROOT:-"/Users/belk/Documents/projects/hh.sites.main"}

docker rm xhh
docker run -p 9300:9300 -t -i --rm="true" --name="xhh" -v ${DOCROOT}:/data glibin.pyn.ru:5000/xhh