#!/bin/bash

sudo gpasswd -a $USER input

sudo apt -y install wmctrl xdotool libinput-tools  gir1.2-gtop-2.0 gir1.2-nm-1.0 gir1.2-clutter-1.0 


chmod +x ./fs/home/.config/scripts/*

rsync -a ./fs/home/.config ~/.config


mkdir -p sand
cd sand
git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo make install #(or sudo ./libinput-gestures-setup install)

libinput-gestures-setup autostart
libinput-gestures-setup start
libinput-gestures-setup restart

