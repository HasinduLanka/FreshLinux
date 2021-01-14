#!/bin/bash

echo
echo
echo Make sure to run this without sudo
echo This will take about 10 minutes to complete
echo Then it will logout
echo After you log in again, run ./config.gnome.after-relogin.sh  [Without sudo]
echo
echo
echo Press [Enter] to Install
read line

./install.essentials.sh ; ./install.apps.sh ; ./install.office.sh ; ./config.desktop.sh ; /config.gnome.sh ; sudo apt update ; sudo apt -y dist-upgrade 

echo Press [Enter] to Logout
echo After you log in again, run ./config.gnome.after-relogin.sh   [Without sudo]
read line

# sudo logout

gnome-session-quit 
