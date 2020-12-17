#!/bin/bash

echo Before Increasing
free -m

sudo swapoff /swapfile 
sudo rm /swapfile 

echo Without /swapfile 
free -m

cd /

sudo fallocate -l 8G ./swapfile 
sudo chmod 600 ./swapfile
sudo mkswap ./swapfile
sudo swapon ./swapfile

echo After Increasing 
free -m
