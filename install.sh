#!/bin/bash

echo
echo
echo Make sure to run this without sudo
echo This will take about 10 minutes to complete
echo Then it will logout
echo After you log in again, run ./config.gnome.after-relogin.sh  [Without sudo]
echo
echo
echo
echo Press [Enter] to install
read line

./install.essentials.sh ; ./install.apps.sh ; ./install.powerplans.sh ./install.office.sh ; ./config.desktop.sh ; sudo logout ;