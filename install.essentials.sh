#!/bin/bash


chmod +x ./*.sh
# chmod +x ./fs/*.sh 
chmod +x ./fs/home/*.sh 
chmod +x ./Apps/*.sh 

sudo apt update
sudo apt install --assume-yes fdisk g++ nano screen gedit git wget curl ark resolvconf ufw gufw make htop build-essential software-properties-common 

# sudo add-apt-repository -y ppa:deadsnakes/ppa
# sudo apt update
# sudo apt install --assume-yes python3.8 python3-pip libssl-dev libffi-dev python3-dev 

sudo bash -c 'echo -e "\n\nnameserver 8.8.8.8\nnameserver 8.8.4.4\n\n" > /etc/resolvconf/resolv.conf.d/head'

sudo systemctl enable resolvconf.service
sudo systemctl start resolvconf.service

git config pull.rebase true 
echo configure git name like    git config --global user.name "NAME" 
echo configure git email like   git config --global user.email "ME@MAIL.COM" 
