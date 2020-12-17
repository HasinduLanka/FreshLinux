#!/bin/bash


chmod +x ./*.sh
# chmod +x ./fs/*.sh 
chmod +x ./fs/home/*.sh 

sudo apt update
sudo apt install --assume-yes fdisk g++ nano screen gedit git wget curl ark resolvconf ufw gufw make htop build-essential software-properties-common 

# sudo add-apt-repository -y ppa:deadsnakes/ppa
# sudo apt update
# sudo apt install --assume-yes python3.8 python3-pip libssl-dev libffi-dev python3-dev 


git config pull.rebase true 
echo configure git like    git config --global user.name "NAME" user.email "ME@MAIL.COM"
