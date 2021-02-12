#!/bin/bash

mkdir sand
cd sand/
wget -c https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh
chmod +x dotnet-install.sh
./dotnet-install.sh -c 5.0 

