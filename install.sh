#!/bin/bash
sudo apt update

sudo apt install curl
sudo apt install python3-pip
sudo apt install docker-compose

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get install docker-ce docker-ce-cli containerd.io
#sudo bash get-docker.sh
sudo docker run hello-world
sudo snap install --classic code
docker-compose --version
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
sudo systemctl enable docker
sudo systemctl start docker 
sudo chown -R $USER:$USER .