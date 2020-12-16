#!/bin/bash


dconf dump /org/gnome/shell/extensions/ > ./config/extension-settings.dconf 

dconf dump /org/gnome/desktop/interface/ > ./config/desktop.interface.dconf 

dconf dump /org/gnome/desktop/peripherals/touchpad/ > ./config/touchpad.dconf 

dconf dump /org/gnome/desktop/session/ > ./config/desktop.session.dconf 

dconf dump /org/gnome/desktop/sound/ > ./config/sound.dconf 

dconf dump /org/gnome/desktop/wm/preferences/ > ./config/wm.dconf 

dconf dump /org/gnome/gedit/preferences/editor/ > ./config/gedit.dconf 

dconf dump /org/gnome/settings-daemon/plugins/power/ > ./config/power.dconf 

# dconf dump /org/gnome/ > ./config/.dconf 