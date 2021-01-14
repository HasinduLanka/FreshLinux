#!/bin/bash

sudo apt -y install chrome-gnome-shell gnome-tweaks gnome-shell-extension-dash-to-panel  gnome-shell-extension-system-monitor nemo 


xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.nemo.desktop show-desktop-icons true


# Made using    dconf dump /org/gnome/shell/extensions/ > ./config/extension-settings.dconf 

dconf load /org/gnome/shell/extensions/ < ./config/extension-settings.dconf


dconf load /org/gnome/desktop/interface/ < ./config/desktop.interface.dconf 

dconf load /org/gnome/desktop/peripherals/touchpad/ < ./config/touchpad.dconf 

dconf load /org/gnome/desktop/session/ < ./config/desktop.session.dconf 

dconf load /org/gnome/desktop/sound/ < ./config/sound.dconf 

dconf load /org/gnome/desktop/wm/preferences/ < ./config/wm.dconf 

dconf load /org/gnome/gedit/preferences/editor/ < ./config/gedit.dconf 

dconf load /org/gnome/settings-daemon/plugins/power/ < ./config/power.dconf 


echo 
echo https://extensions.gnome.org/extension/120/system-monitor/  and  https://extensions.gnome.org/extension/1160/dash-to-panel/ are installed
echo Now, Log out, Login again and Run ./config.gnome.after-relogin.sh  [Without sudo]
echo Make sure to run this script without sudo as well 
