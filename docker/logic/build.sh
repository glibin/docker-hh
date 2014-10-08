#!/bin/sh

docker build -t 'glibin/logic' .
docker tag glibin/logic glibin.pyn.ru:5000/logic
docker push glibin.pyn.ru:5000/logic