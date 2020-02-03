#!/bin/bash

sudo apt-get update

sudo apt-get install -y openssh-server

sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt update
sudo apt -y install nodejs

sudo apt-get install -y nginx
sudo service start nginx
cd /var/www/html
sudo echo "<!DOCTYPE html>
<html>
<body>
B3 Devops - TP 1
partie 2
</body>
</html>" > index.nginx-debian.html
sudo service nginx restart