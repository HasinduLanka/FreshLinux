#!/bin/bash


if [ -z "$1" ]
then
    echo "Usage : ./fix.ntfs.sh sda1"
    echo 
    sudo df -h
    
else
    echo Fixing /dev/$1
    sudo fdisk --list /dev/$1
    echo 

    sudo umount /dev/$1 
    sudo ntfsfix /dev/$1         
fi


