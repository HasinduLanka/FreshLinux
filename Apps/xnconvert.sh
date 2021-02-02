#!/bin/bash

wget https://download.xnview.com/XnConvert-linux-x64.deb -O XnConvert-linux-x64.deb  
sudo dpkg -i XnConvert-linux-x64.deb  
sudo apt install --assume-yes --fix-broken
