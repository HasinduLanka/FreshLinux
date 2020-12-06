#!/bin/bash

chmod +x ./powerplans/*.sh

cp ./powerplans/power.plan.* ~/

cp ./powerplans/Performance\ Mode.desktop ~/Desktop/ 
cp ./powerplans/Power\ save\ Mode.desktop ~/Desktop/ 
cp ./powerplans/Ultra\ Power\ save\ Mode.desktop ~/Desktop/ 


sudo apt install tlp tlp-rdw 
sudo cp -r ./powerplans/tlp.backup /etc/

