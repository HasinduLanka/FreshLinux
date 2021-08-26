#!/bin/bash

echo Always use a swap partition instead of a swap file

echo "Swappiness = "
cat /proc/sys/vm/swappiness
sudo bash -c 'echo -e "\nvm.swappiness=5\n" > /etc/sysctl.conf '

sudo sysctl vm.swappiness=5

echo Restart to take full effect
