#!/bin/bash

COLOR="\e[32m" # green
ENDCOLOR="\e[0m"

echo -e "${COLOR}updating apt-get${ENDCOLOR}"
apt-get update

#Packages here
echo -e "${COLOR}installing cargo${ENDCOLOR}"
apt-get install cargo -y

#php
echo -e "${COLOR}adding apt repo ppa:ondrej/php${ENDCOLOR}"
sudo add-apt-repository ppa:ondrej/php
echo -e "${COLOR}installing php8.2${ENDCOLOR}"
sudo apt install php8.2-fpm
echo -e "${COLOR}installing php dom${ENDCOLOR}"
sudo apt install php8.2-dom
echo -e "${COLOR}installing php mbstring${ENDCOLOR}"
sudo apt install php8.2-mbstring

echo -e "${COLOR}installing starship${ENDCOLOR}"
./starship.sh
