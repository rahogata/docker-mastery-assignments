#!/bin/sh

docker container run -p 80:80 --name webserver -d nginx

docker container run -p 8080:80 --name httpserver -d httpd

docker container run -p 3036:3036 --name mysql -e MYSQL_RANDOM_ROOT_PASSWORD=yes -d mysql

