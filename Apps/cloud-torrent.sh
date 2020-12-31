#!/bin/bash

mkdir ~/Downloads
docker run --name ct -d -p 43210:43210 --restart always -v ~/Downloads:/downloads jpillora/cloud-torrent --port 43210
