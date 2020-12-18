#!/bin/bash

sudo apt install --assume-yes openjdk-15-jre p7zip-full 
mkdir sand
cd sand
wget https://tlauncher.org/jar -O tlauncher.zip
7z x tlauncher.zip


mkdir tlauncher
cd tlauncher
cp TLauncher* tlauncher/

echo -e "DRI_PRIME=1 java -jar TLauncher* \n" > run-tlauncher.sh 

chmod +x run-tlauncher.sh 
./run-tlauncher.sh 
