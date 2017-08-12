#!/bin/bash

sudo yum -y install wget

sudo yum -y install ntp ntpdate ntp-doc
sudo systemctl enable ntpd
sudo systemctl start ntpd