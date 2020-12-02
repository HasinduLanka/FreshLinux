#!/bin/bash

sudo apt update 
sudo apt install --assume-yes kate vlc xnconvert ffmpeg vokoscreen cheese gparted gnome-disk-utility snapd 

echo SnapD is installed. But you should logout and login again to use it
#Tempory fix
while read -r env; do export "$env"; done

sudo snap install code --classic
sudo snap install dotnet-sdk --classic --channel=5.0
sudo snap alias dotnet-sdk.dotnet dotnet
sudo snap install zoom-client 



wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo dpkg --install google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes --fix-broken

sudo cp ./fs/wallpapers/wallpaper-256.png /boot/grub/
sudo cp ./fs/wallpapers/wallpaper.png ~/Pictures/

