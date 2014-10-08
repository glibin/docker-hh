#!/bin/sh

if [ "$(uname)" == "Darwin" ]
then
    boot2docker stop
    curl -o ~/.boot2docker/boot2docker.iso http://static.dockerfiles.io/boot2docker-v1.2.0-virtualbox-guest-additions-v4.3.14.iso
    VBoxManage sharedfolder add boot2docker-vm -name home -hostpath /Users
    VBoxManage modifyvm boot2docker-vm --natpf1 "logic,tcp,,9200,,9200"
    boot2docker up
fi

docker pull glibin.pyn.ru:5000/hhmobile