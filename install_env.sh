#!/bin/sh

apt-get update

#Packages here
apt-get install cargo -y

#php
sudo add-apt-repository ppa:ondrej/php
sudo apt install php8.2-fpm
sudo apt install php8.2-dom
sudo apt install php8.2-mbstring


