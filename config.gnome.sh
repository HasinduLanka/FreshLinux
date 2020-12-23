#!/bin/bash

sudo apt -y install chrome-gnome-shell gnome-tweaks gnome-shell-extension-dash-to-panel  gnome-shell-extension-system-monitor 

# Made using    dconf dump /org/gnome/shell/extensions/ > ./config/extension-settings.dconf 

dconf load /org/gnome/shell/extensions/ < ./config/extension-settings.dconf

dconf load /org/gnome/shell/extensions/ < ./config/extension-settings.dconf 

dconf load /org/gnome/desktop/interface/ < ./config/desktop.interface.dconf 

dconf load /org/gnome/desktop/peripherals/touchpad/ < ./config/touchpad.dconf 

dconf load /org/gnome/desktop/session/ < ./config/desktop.session.dconf 

dconf load /org/gnome/desktop/sound/ < ./config/sound.dconf 

dconf load /org/gnome/desktop/wm/preferences/ < ./config/wm.dconf 

dconf load /org/gnome/gedit/preferences/editor/ < ./config/gedit.dconf 

dconf load /org/gnome/settings-daemon/plugins/power/ < ./config/power.dconf 

