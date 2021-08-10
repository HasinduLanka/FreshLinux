#!/bin/bash

echo Before Increasing
free -m

sudo swapoff /swapfile 
sudo rm /swapfile 

echo Without /swapfile 
free -m

cd /

sudo fallocate -l 8G ./swapfile
sudo chmod 600 ./swapfile
sudo mkswap ./swapfile
sudo swapon ./swapfile

echo After Increasing 
free -m

echo "Swappiness = "
cat /proc/sys/vm/swappiness
sudo bash -c 'echo -e "\nvm.swappiness=5\n" >> /etc/sysctl.conf '

sudo sysctl vm.swappiness=5


echo "Edit /etc/fstab to append this"
echo "/swapfile swap swap defaults 0 0"
