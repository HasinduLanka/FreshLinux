#!/bin/bash

chmod +x ./fs/home/*.sh

rsync -a ./fs/home/ ~/
sudo rsync -a ./fs/root/ /

sudo rsync -a ./fs/home/Desktop/ /usr/share/applications/

echo Install finished

echo configure git name like    git config --global user.name "NAME"
echo configure git email like   git config --global user.email "ME@MAIL.COM"
