#!/bin/bash

# All these steps have been mentioned at docker website.
# https://docs.docker.com/engine/installation/linux/centos/

sudo yum -y makecache fast

sudo yum install -y yum-utils device-mapper-persistent-data lvm2

sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum -y makecache fast

sudo yum -y install docker-ce

mkdir /etc/docker
cp /vagrant/resources/files/daemon.json /etc/docker/daemon.json

sudo systemctl start docker
# Giving permissions to vagrant
sudo usermod -aG docker vagrant
sudo chkconfig docker on
