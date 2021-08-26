#!/bin/bash

echo "Run 'configure.sh' before running this"
echo

sudo gpasswd -a $USER input

sudo pacman -S libinput-gestures


libinput-gestures-setup autostart 

echo Restart to take effect
