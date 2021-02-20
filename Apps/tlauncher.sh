#!/bin/bash

sudo apt install --assume-yes openjdk-15-jre p7zip-full 

sudo mkdir sand
sudo chown $USER sand
cd sand
wget -c https://tlauncher.org/jar -O tlauncher.zip
7z x tlauncher.zip


mkdir -p ~/.minecraft/
mv TLauncher* TLauncher.jar
cp TLauncher.jar ~/.minecraft/
cd ~/.minecraft/

echo -e "DRI_PRIME=1 java -jar TLauncher.jar \n" > run-tlauncher.sh 

chmod +x run-tlauncher.sh 
./run-tlauncher.sh 
