#!/bin/bash

sudo cp /etc/tlp.backup/tlp.ultrasave.conf /etc/tlp.conf 
echo TLP changed to Ultra Save mode
sudo tlp start

echo ...
