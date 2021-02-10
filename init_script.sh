#!/bin/bash -e
#--- CONFIGURACIONES DOCKER ---
echo "Iniciando la instalacion de Docker y Docker Compose"
sudo apt update
sudo apt install git -y
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker vagrant
sudo apt-get install docker-compose -y
echo "Fin de la Instalacion de docker"
