#!/bin/bash

sudo snap install arduino
sudo usermod -a -G dialout $USER

echo To use NodeMCU add additional board http://arduino.esp8266.com/stable/package_esp8266com_index.json 
