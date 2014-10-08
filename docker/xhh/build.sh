#!/bin/sh

docker build --no-cache=true -t 'glibin/xhh' .
docker tag glibin/xhh glibin.pyn.ru:5000/xhh
docker push glibin.pyn.ru:5000/xhh