#!/bin/bash

sudo apt update 
sudo apt install --assume-yes kate vlc ffmpeg cheese gparted gnome-disk-utility snapd openjdk-15-jre stacer


echo SnapD is installed. But you should logout and login again to use it
#Tempory fix
#while read -r env; do export "$env"; done

sudo snap install code --classic
sudo snap install dotnet-sdk --classic --channel=5.0
sudo snap alias dotnet-sdk.dotnet dotnet

sudo snap install vokoscreen-ng 
sudo snap install woe-usb --edge 
sudo snap install bombsquad 


mkdir sand
cd sand


wget https://download.xnview.com/XnConvert-linux-x64.deb 
sudo dpkg --install XnConvert-linux-x64.deb  
sudo apt install --assume-yes --fix-broken



wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg --install google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes --fix-broken
