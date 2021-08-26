#!/bin/bash



echo "Installing Gestures and Power managment"

sudo gpasswd -a $USER input
sudo pacman -S --noconfirm libinput-gestures tlp
libinput-gestures-setup autostart 

echo "Installing files"

chmod +x ./fs/home/*.sh

rsync -a ./fs/home/ ~/
sudo rsync -a ./fs/root/ /

sudo rsync -a ./fs/home/Desktop/ /usr/share/applications/


echo Installation finished. Restart to take effect.
echo 
echo configure git name like    git config --global user.name "NAME"
echo configure git email like   git config --global user.email "ME@MAIL.COM"
