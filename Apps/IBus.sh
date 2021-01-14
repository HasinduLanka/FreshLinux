#!/bin/bash

sudo apt -y install ibus ibus-m17n 

 
echo Put these three on .bashrc 
echo 
echo export GTK_IM_MODULE=ibus
echo export XMODIFIERS=@im=ibus
echo export QT_IM_MODULE=ibus
echo 
echo 

ibus-setup 

echo Go to  AutoStart settings and add "ibus-daemon" as an auto starting program
echo 
