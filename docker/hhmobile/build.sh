#!/bin/sh

docker build --no-cache=true -t 'glibin/hhmobile' .
docker tag glibin/hhmobile glibin.pyn.ru:5000/hhmobile
docker push glibin.pyn.ru:5000/hhmobile