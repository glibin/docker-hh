#!/bin/sh

docker build -t 'glibin/xhh' .
docker tag glibin/xhh glibin.pyn.ru:5000/xhh
docker push glibin.pyn.ru:5000/xhh