#!/bin/bash

echo
echo
echo Make sure to run this without sudo
echo This will take about 10 minutes to complete
echo


sudo cp ./fs/wallpapers/wallpaper-256.png /boot/grub/
sudo update-grub2

./install.essentials.sh ; ./install.apps.sh ; ./install.office.sh ; ./config.desktop.sh ; sudo apt update ; sudo apt -y dist-upgrade 

echo
echo
echo
echo Run ./config.gnome.sh you want to configure gnome
echo
echo
