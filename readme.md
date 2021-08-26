# Fresh Manjaro Linux

This branch is intended for easy setup of manjaro linux. Check other branch for setting up and installing apps on Ubuntu Linux. 

All the app install scripts from ubuntu repo branch is not needed for Manjaro because we can install all of them from `pamac` GUI preinstalled on Manjaro (Add/Remove software in the app launcher). Make sure to enable support for AUR, Snaps and Flatpaks from the `preferences` menu of pamac GUI.

**Run these scripts as your current user.** Not with `sudo`. You will be prompted when root privileges are required.

#### In case you installed the minimal version of Manjaro on the system, use these commands to install `pamac` GUI support for flatpaks and snaps

```bash
    # Flatpak support
    sudo pacman -S flatpak libpamac-flatpak-plugin

    # Snap support
    # It is better if you can avoid installing snapd,
    # Snap demon slows down system startup.
    sudo pacman -S snapd libpamac-snap-plugin 
```

Tip : You can install *Visual Studio Code* from `visual-studio-code-bin` package in `AUR` repo instead of installing the snap. (Just type it in `Add/Remove software` app)

# Install wayland for KDE

**Do not install wayland if you are using a Nvidia GPU.** See https://www.youtube.com/watch?v=iYWzMvlj2RQ

The KDE Manjaro edition comes with X11 as the default display server. For more security and performance install wayland. 

```bash
    sudo pacman -S plasma-wayland-session 
```


# Scripts

## install.sh

Installs configuration files to user home and filesystem root.

This installs :
- Gestures : Installs libinput-gestures and configures its settings. Default gestures works on both X11 and Wayland.
    - Three finger swipe up/down : Change current virtual desktop
- TLP : Power managment for laptop/mobile device when operating on battery
    - Performance Mode : Maximizes performace of CPU/GPU/Disks/Radio
    - Power Saving Mode : Balance performance and power. Suitable for normal workload.
    - Ultra Power Saving Mode : Maximizes power saving by limiting performance. (Example: Sets max CPU frequency to 400 MHz)


## swappiness.sh

Changes memory swapping threshold to 5% (Default value is 60%)

Example scenario : If your RAM capacity is 16 GB, Memmory swapping will only occure when there's only 800 MB free memmory is left.
