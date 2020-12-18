#!/bin/bash


dconf load /org/gnome/shell/extensions/ < ./config/extension-settings.dconf

gnome-extensions enable dash-to-panel@jderose9.github.com
gnome-extensions enable system-monitor@paradoxxx.zero.gmail.com

