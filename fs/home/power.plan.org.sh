#!/bin/bash

sudo cp /etc/tlp.backup/tlp.org.conf /etc/tlp.conf 
echo TLP changed back to default mode
sudo tlp start

echo ...
