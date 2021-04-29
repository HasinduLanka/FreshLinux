#!/bin/bash

echo Make sure to run config.gestures.sh before this

cp ./config/libinput-gestures.x11.conf ~/.config/libinput-gestures.conf

libinput-gestures-setup restart

