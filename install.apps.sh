#!/bin/bash

sudo apt update 
sudo apt install --assume-yes vlc ffmpeg cheese gparted gnome-disk-utility snapd openjdk-15-jre stacer torbrowser-launcher vokoscreen-ng gnome-keyring handbrake nemo pinta brasero


echo SnapD is installed. But you should logout and login again to use it
#Tempory fix
#while read -r env; do export "$env"; done


sudo mkdir sand
sudo chown $USER sand
# cd sand

echo 
echo Now, you can install Apps from ./Apps/ directory
echo

sudo snap install code --classic
