#!/bin/bash


chmod +x ./*.sh
# chmod +x ./fs/*.sh 
chmod +x ./fs/home/*.sh 

sudo apt update
sudo apt install --assume-yes fdisk g++ nano screen gedit git wget curl ark stacer resolvconf ufw gufw make 

git config pull.rebase true 
echo configure git like    git config --global user.name "NAME" user.email "ME@MAIL.COM"
