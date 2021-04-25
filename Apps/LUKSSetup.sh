#!/bin/bash

sudo apt install -y cryptsetup

sudo lsblk -f

echo Read this file for futher instructions


# Format new
# sudo cryptsetup luksFormat /dev/sdXY
# sudo cryptsetup luksOpen /dev/sdb1 Encry
# sudo mkfs.ext4 /dev/mapper/Encry
# mkdir -p /media/cc/Encry
# sudo mount /dev/mapper/Encry /media/cc/Encry
# sudo chown $USER:$USER /media/cc/Encry


# Open and Setup
# sudo cryptsetup luksOpen /dev/sdXY Encry
# Find UUID of Encrypted Partition (Not PARTUUID)
#   sudo blkid | grep -i luks
# sudo nano /etc/crypttab
# # Content of the crypttab file
#   Encry    UUID=<uuid>    none    luks
#   Encry    UUID=e262acef-9781-42d4-bb97-9c58bae7b7be    none    luks
# Find UUID of /dev/mapper/Encry
#   sudo blkid | grep -i ext4
# sudo nano /etc/fstab
#   UUID=ef0f0481-e99d-4293-a62c-710e87c838af /media/cc/Encry ext4 defaults 0 0
# Verify : sudo reboot
# lsblk -f
#   Encry should be there
# echo "supersecretpass" > volume-key
# sudo mv volume-key /boot/
# sudo chown root:root /boot/volume-key
# sudo chmod 0400 /boot/volume-key
# sudo cryptsetup luksAddKey <encrypted_device> <path_to_key>
#   sudo cryptsetup luksAddKey /dev/sdb1 /boot/volume-key
# Verify :  sudo cryptsetup luksDump /dev/sdXY
# sudo nano /etc/crypttab
# # Content of the crypttab file
#   Encry    UUID=e262acef-9781-42d4-bb97-9c58bae7b7be    /boot/volume-key    luks
