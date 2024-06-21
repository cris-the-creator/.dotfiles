#!/bin/bash

COLOR="\e[32m" # green
ENDCOLOR="\e[0m"

echo -e "${COLOR}updating apt-get${ENDCOLOR}"
apt-get update

#Basics
echo -e "${COLOR}installing cargo${ENDCOLOR}"
apt-get install cargo -y
echo -e "${COLOR}installing python pip3${ENDCOLOR}"
apt-get install pyhton3-pip

#php
echo -e "${COLOR}adding apt repo ppa:ondrej/php${ENDCOLOR}"
sudo add-apt-repository ppa:ondrej/php
echo -e "${COLOR}installing php8.2${ENDCOLOR}"
sudo apt install php8.2-fpm
echo -e "${COLOR}installing php dom${ENDCOLOR}"
sudo apt install php8.2-dom
echo -e "${COLOR}installing php mbstring${ENDCOLOR}"
sudo apt install php8.2-mbstring

#time tracking
echo -e "${COLOR}installing watson{ENDCOLOR}"
pip3 install td-watson

#wslu
echo -e "${COLOR}installing wslu{ENDCOLOR}"
apt install gnupg2 apt-transport-https
wget -O - https://pkg.wslutiliti.es/public.key | sudo gpg -o /usr/share/keyrings/wslu-archive-keyring.pgp --dearmor

echo "deb [signed-by=/usr/share/keyrings/wslu-archive-keyring.pgp] https://pkg.wslutiliti.es/debian \
$(. /etc/os-release && echo "$VERSION_CODENAME") main" | sudo tee /etc/apt/sources.list.d/wslu.list
sudo apt update
sudo apt install wslu

#spotify
echo -e "${COLOR}installing spotify{ENDCOLOR}"
curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

# shell
echo -e "${COLOR}installing starship${ENDCOLOR}"
./starship.sh
