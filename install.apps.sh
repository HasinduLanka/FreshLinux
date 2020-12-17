#!/bin/bash

sudo apt update 
sudo apt install --assume-yes kate vlc ffmpeg cheese gparted gnome-disk-utility snapd openjdk-15-jre stacer torbrowser-launcher 


echo SnapD is installed. But you should logout and login again to use it
#Tempory fix
#while read -r env; do export "$env"; done

sudo snap install code --classic
# sudo snap install dotnet-sdk --classic --channel=5.0
# sudo snap alias dotnet-sdk.dotnet dotnet

sudo snap install vokoscreen-ng 


mkdir sand
cd sand

wget https://packages.microsoft.com/config/ubuntu/20.10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-3.1 dotnet-sdk-5.0
  

wget https://download.xnview.com/XnConvert-linux-x64.deb -O XnConvert-linux-x64.deb  
sudo dpkg --install XnConvert-linux-x64.deb  
sudo apt install --assume-yes --fix-broken



wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O google-chrome-stable_current_amd64.deb
sudo dpkg --install google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes --fix-broken
