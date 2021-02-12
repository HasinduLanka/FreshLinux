#!/bin/bash

sudo add-apt-repository -y ppa:alessandro-strada/ppa
sudo apt update && sudo apt install -y google-drive-ocamlfuse


mkdir ~/.gdfuse/default


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

