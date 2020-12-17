#!/bin/bash

sudo cp /etc/tlp.backup/tlp.perf.conf /etc/tlp.conf 
echo TLP changed to Performance mode
sudo tlp start

echo ...
