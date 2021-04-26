# Fresh Ubuntu Linux

Tired of configuring Ubuntu and apps after installing, everytime?

This is what I do when I install minimal ubuntu on a new rig
This script is valid for **Gnome, KDE, cinnamon, LXDE and XFCE**

##### Tested working on Ubuntu 20.04 , Ubuntu 20.10 , Kubuntu 20.04 , Kubuntu 20.10 , Kubuntu 21.04 on X11 and Kubuntu 21.04 on Wayland

## Feel free to fry up this for your taste :-)

# How to :

Make sure you have a stable internet connection.
Press `CTRL+ALT+T` to open a new terminal and type this in the terminal

```bash
 sudo apt update
 sudo apt install git
 git clone https://github.com/hasindulanka/FreshLinux
 cd FreshLinux/
 ./install.sh
```

You'll be asked for the password , enter it.

Now go for a walk or a swim. When you come back your new shinny desktop will look something like this

![New-Shinny-Desktop](fresh-desktop.png)

### Configure KDE

I love KDE, because most of it is just in the way I want.

- Go to Settings -> Global Keyboard shortcuts and Import the file `KDE-Keyboard-shortcuts.kksrc` for Touchpad Gestures to work
- Add some Virtual Desktops to switch using the touchpad
- Go to KWIN window rules and import file `Apps/KDEGlassyWindowRules.kwinrule` for a glassy window look

### Configure Gnome

Run this only if you are using GNOME / Original Ubuntu distro

```
 ./config.gnome.sh

```

So press Enter and log in back again

Again, Press `CTRL+ALT+T` to open a new terminal and type this in the terminal

`./config.gnome.after-relogin.sh`

Done !
Add some Virtual Desktops to switch using the touchpad

### Install Apps

`Apps` folder has scripts to easily install some usefull apps and drivers. Check it out

# What get changed?

## Desktop

- Desktop will have 3 additional icons - Power modes. These will only be effective when operating on battery. But make sure to use Performance mode when on AC
  - **Performance mode** - Maximum performace setting like turbo boost, GPU modes even on battery
  - **Powersave mode** - Saves power by limiting power hungry features
  - **Ultra Powersave mode** - Maximize battery time by limiting performance. CPU will run at 400 MHz. _This makes my laptop run zoom/vlc for 10 hours_
    **These settings are also accesible as scripts in home folder**
- GRUB boot menu background image will be changed
- Your lap wont sleep or turn off display when you are away
- Power button will put computer into sleep. Closing the laptop lid will do nothing
- GNome Tweaks
  - Gnome will change into system wide Yaru Dark theme
  - Nemo will be the default file manager and desktop icon manager
  - Top bar and dash will be merged into one panel and moved to the bottom. This **Bottom Panel** similar to KDE / MS Windows taskbar (Much better)
  - Bottom Panel will auto hide and contain an App launcher, Icon taskbar, CPU-RAM-Network monitor, datetime, system info panel and a Show desktop button
  - Workspaces are isolated (Taskbar will shown only apps in the current workspace)

### Touchpad gestures

##### X11

    * Three finger swipe up/down - Change Workspace (Virtual Desktops) up/down
    * Three finger swipe up/down with Shift - Drag the active window with you
    * Three finger swipe left/right - Change Active window (alt+Tab and alt+shift_Tab)
    * Four finger swipe up - Desktop window overview
    * Four finger swipe left/right - Navigate Right/Left (alt+Left / alt+Right)

##### Wayland

    * Three finger swipe up/down - Change Workspace (Virtual Desktops) up/down
    Four finger gestures are managed by Wayland

## Things to do

- Increse SWAP memory to 8GB. Just run `sudo ./swap8GB.sh`
- Install GPU drivers from `Apps` folder. Run `sudo ./Apps/mesa-gpu-drivers.sh`
- Reboot to get everything fully working (Like power plans)
- You should configure how many workspaces you want
  - On KDE, from Workspace settings
  - On GNOME, from `Gnome Tweaks` tool. (Installed)
    - Warning : When using `Gnome Tweaks` it may overwrite some settings back to defaults. Keep your eye on these tweaks
    - Suspend When Laptop lid is closed (Disabled)
    - Extensions / Desktop Icons (Enabled)
- Configure mount points of partitions

## Softwares get installed

Some of them are in the `Apps` folder, where you need to install manually

- Apps
  - Visual Studio Code
  - Google Chrome
  - zoom-client - (Yeah that Zoom meeting thingy)
  - Microsoft Teams Desktop
  - LibreOffice
  - torbrowser
  - XnConvert
  - vlc
  - cheese
  - vokoscreen-ng - Screen recorder
  - Arduino IDE
  - Docker
  - PIP
  - handbrake
  - nemo
  - pinta (Paint)
  - brasero (DVD/CD writter)
  - Install more on `Apps` folder
- Utilities
  - fdisk
  - g++
  - nano
  - screen
  - gedit
  - git
  - wget
  - curl
  - ark
  - 7zip
  - ufw
  - gufw
  - make
  - htop
  - libinput - Touchpad gestures
  - gnome-tweaks
  - chrome-gnome-shell
  - tlp - Power manager
  - ffmpeg
  - gparted
  - gnome-disk-utility
  - snapd
  - stacer
  - openjdk-15-jre
  - dotnet-sdk-5.0
  - resolvconf - This solves that DNS server not found issue on newer WIFI modules
  - pulseaudio
- Gnome Extentions (Only if gnome)
  - gnome-shell-extension-dash-to-panel
  - gnome-shell-extension-system-monitor

# How to Customise

This installs and configures everything (Excluding Apps folder)

`./install.essentials.sh ; ./install.apps.sh ; ./install.office.sh ; ./config.desktop.sh ; sudo apt update ; sudo apt -y dist-upgrade`

## Just fork this template repo and start building your own

## Try adding some chilly and pepper if it doesn't taste well
