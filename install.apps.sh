#!/bin/bash

sudo apt update 
sudo apt install --assume-yes vlc ffmpeg cheese gparted gnome-disk-utility snapd openjdk-15-jre stacer torbrowser-launcher vokoscreen-ng 


echo SnapD is installed. But you should logout and login again to use it
#Tempory fix
#while read -r env; do export "$env"; done


sudo mkdir sand
sudo chown $USER sand
# cd sand

./Apps/Chrome.sh 
./Apps/xnconvert.sh   
./Apps/Dotnet-5.0-Ubuntu-20.10.sh
