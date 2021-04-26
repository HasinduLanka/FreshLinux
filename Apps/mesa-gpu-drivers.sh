#!/bin/bash

sudo add-apt-repository -y ppa:kisak/kisak-mesa
sudo apt update
sudo apt install -y mesa-utils
sudo apt -y dist-upgrade 

echo
echo To force the use of latest AMDGPU drivers
echo
echo Change the file
echo /etc/default/grub
echo
echo GRUB_CMDLINE_LINUX_DEFAULT="quiet splash radeon.si_support=0 radeon.cik_support=0 amdgpu.si_support=1 amdgpu.cik_support=1"
echo
