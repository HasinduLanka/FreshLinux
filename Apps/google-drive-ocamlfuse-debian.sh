#!/bin/bash

sudo apt install -y software-properties-common dirmngr gnupg-agent
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys AD5F235DF639B041
echo 'deb http://ppa.launchpad.net/alessandro-strada/ppa/ubuntu xenial main' | sudo tee /etc/apt/sources.list.d/alessandro-strada-ubuntu-ppa.list >/dev/null
sudo apt update
sudo apt install -y google-drive-ocamlfuse

mkdir ~/.gdfuse/default
mkdir ~/Desktop

cd "$(dirname "$0")"

cp ./DriveFuse/config ~/.gdfuse/default/config
cp ./DriveFuse/GoogleDrive.png ~/.gdfuse/GoogleDrive.png
cp ./DriveFuse/GoogleDriveFuse.desktop ~/Desktop/GoogleDriveFuse.desktop

get_abs_filename() {
  # $1 : relative filename
  echo "$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
}

printf "Icon=" >> ~/Desktop/GoogleDriveFuse.desktop
get_abs_filename ~/.gdfuse/GoogleDrive.png >> ~/Desktop/GoogleDriveFuse.desktop

echo "mkdir ~/GoogleDrive ; google-drive-ocamlfuse ~/GoogleDrive" > ~/google-drive-fuse-start.sh
echo "pkill -c -f -9 google-drive-ocamlfuse ; fusermount -u ~/GoogleDrive " > ~/google-drive-fuse-stop.sh

chmod +x ~/google-drive-fuse-start.sh
chmod +x ~/google-drive-fuse-stop.sh
