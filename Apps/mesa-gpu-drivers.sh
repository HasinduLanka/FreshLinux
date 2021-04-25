#!/bin/bash

sudo add-apt-repository -y ppa:kisak/kisak-mesa
sudo apt update
sudo apt install -y mesa mesa-utils
sudo apt -y dist-upgrade 
