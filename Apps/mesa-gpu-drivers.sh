#!/bin/bash

sudo add-apt-repository -y ppa:kisak/kisak-mesa
sudo apt update
sudo apt install mesa
sudo apt -y dist-upgrade 
