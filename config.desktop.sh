#!/bin/bash

sudo gpasswd -a $USER input

sudo apt -y install wmctrl xdotool libinput-tools   chrome-gnome-shell gnome-tweaks gnome-shell-extension-dash-to-panel gir1.2-gtop-2.0 gir1.2-nm-1.0 gir1.2-clutter-1.0   gnome-shell-extension-system-monitor


# Made using    dconf dump /org/gnome/shell/extensions/ > ./config/extension-settings.dconf 
dconf load /org/gnome/shell/extensions/ < ./config/extension-settings.dconf


rsync -a ./fs/home/ ~/


dconf load /org/gnome/shell/extensions/ < ./config/extension-settings.dconf 

dconf load /org/gnome/desktop/interface/ < ./config/desktop.interface.dconf 

dconf load /org/gnome/desktop/peripherals/touchpad/ < ./config/touchpad.dconf 

dconf load /org/gnome/desktop/session/ < ./config/desktop.session.dconf 

dconf load /org/gnome/desktop/sound/ < ./config/sound.dconf 

dconf load /org/gnome/desktop/wm/preferences/ < ./config/wm.dconf 

dconf load /org/gnome/gedit/preferences/editor/ < ./config/gedit.dconf 

dconf load /org/gnome/settings-daemon/plugins/power/ < ./config/power.dconf 


cd sand
git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo make install #(or sudo ./libinput-gestures-setup install)

libinput-gestures-setup autostart
libinput-gestures-setup start
libinput-gestures-setup restart


echo 
echo https://extensions.gnome.org/extension/120/system-monitor/  and  https://extensions.gnome.org/extension/1160/dash-to-panel/ are installed
echo Now, Log out, Login again and Run ./config.gnome.after-relogin.sh  [Without sudo]
echo Make sure to run this script without sudo as well 
