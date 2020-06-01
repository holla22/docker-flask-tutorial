#!/bin/sh

## this is my docker install script for debian buster

echo "Installing Docker Engine ..."
# installing Docker engine
sudo apt update
sudo apt -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common vim wget
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

sudo apt update
sudo apt -y install docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER
newgrp docker

sudo docker version

# installing docker compose
echo "Installing Docker Compose ..."
sudo curl -s https://api.github.com/repos/docker/compose/releases/latest \
  | grep browser_download_url \
  | grep docker-compose-Linux-x86_64 \
  | cut -d '"' -f 4 \
  | wget -qi -

# make file executable
sudo chmod +x docker-compose-Linux-x86_64
# move to bin directory
sudo mv docker-compose-Linux-x86_64 /usr/local/bin/docker-compose
# this one check if it's install and what version it is.
sudo docker-compose version