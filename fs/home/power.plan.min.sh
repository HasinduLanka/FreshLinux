#!/bin/bash

sudo cp /etc/tlp.backup/tlp.min.conf /etc/tlp.conf 
echo TLP changed to Minimum mode
sudo tlp start

echo ...
