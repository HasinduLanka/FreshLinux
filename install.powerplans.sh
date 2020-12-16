#!/bin/bash

chmod +x ./powerplans/*.sh

sudo cp ./config/logind.conf /etc/systemd/logind.conf 

cp ./powerplans/power.plan.* ~/

cp ./powerplans/Performance\ Mode.desktop ~/Desktop/ 
cp ./powerplans/Power\ save\ Mode.desktop ~/Desktop/ 
cp ./powerplans/Ultra\ Power\ save\ Mode.desktop ~/Desktop/ 


sudo apt install tlp tlp-rdw 
sudo cp -r ./powerplans/tlp.backup /etc/

echo 
echo 
echo Log out and Login to apply changes
echo 
echo 
