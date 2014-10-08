#!/bin/sh

docker build --no-cache=true -t 'glibin/logic' .
docker tag glibin/logic glibin.pyn.ru:5000/logic
docker push glibin.pyn.ru:5000/logic