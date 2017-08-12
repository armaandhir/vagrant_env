#!/bin/bash

echo "Starting environment"

# see https://hub.docker.com/_/mysql/
sudo docker run -p 3306:3306 -e MYSQL_ROOT_PASSWORD=rootpass -e MYSQL_DATABASE=test -e MYSQL_USER=testuser -e MYSQL_PASSWORD=testpass --rm=true --name mysql -d mysql:5.7

# Run phpmyadmin and link it to mysql
sudo docker run --name myadmin --rm=true -d --link mysql:db -p 8081:80 phpmyadmin/phpmyadmin


echo
echo
echo "PHPAdmin (username testuser, password testpass)"
echo "    http://192.168.50.4:8081/"
echo

echo "Mysql"
echo "    192.168.50.4:3306"
echo