#!/bin/bash

echo
echo
echo Make sure to run this without sudo
echo This will take about 10 minutes to complete
echo
echo Press [Enter] to Install
read line

./install.essentials.sh ; ./install.apps.sh ; ./install.office.sh ; ./config.desktop.sh ; sudo apt update ; sudo apt -y dist-upgrade 

echo
echo
echo
echo Run ./config.gnome.sh you want to configure gnome
echo
echo
