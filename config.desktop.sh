#!/bin/bash

sudo gpasswd -a $USER input

sudo apt -y install wmctrl xdotool libinput-tools  gir1.2-gtop-2.0 gir1.2-nm-1.0 gir1.2-clutter-1.0 pulseaudio qml-module-qt-labs-platform 



sudo cp ./fs/wallpapers/wallpaper-256.png /boot/grub/
sudo update-grub2


# cp ./fs/wallpapers/wallpaper.png ~/Pictures/

chmod +x ./fs/home/*.sh

rsync -a ./fs/home/ ~/
sudo rsync -a ./fs/home/Desktop/ /usr/share/applications/

sudo cp ./config/logind.conf /etc/systemd/logind.conf 

# cp ./powerplans/power.plan.* ~/

# cp ./powerplans/Performance\ Mode.desktop ~/Desktop/ 
# cp ./powerplans/Power\ save\ Mode.desktop ~/Desktop/ 
# cp ./powerplans/Ultra\ Power\ save\ Mode.desktop ~/Desktop/ 


sudo apt -y install tlp tlp-rdw 
sudo cp -r ./powerplans/tlp.backup /etc/




sudo mkdir sand
sudo chown $USER sand
cd sand
git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo make install #(or sudo ./libinput-gestures-setup install)

libinput-gestures-setup autostart
libinput-gestures-setup start
libinput-gestures-setup restart

pulseaudio -k

