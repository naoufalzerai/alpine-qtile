#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "The script has to be run as root."
  exit
fi

mkdir /home/gjoanes/.suckless
cd /home/gjoanes/.suckless

git clone https://git.sr.ht/~bt/dwm
cd dwm
echo "Installing dwm"
make install
cd ..

git clone https://git.sr.ht/~bt/dmenu
cd dmenu
echo "Installing dmenu"
make install
cd ..

git clone https://git.sr.ht/~bt/slstatus
cd slstatus
echo "Installing slstatus"
make install
cd ..

git clone https://git.sr.ht/~bt/st
cd st
echo "Installing st"
make install
cd ..

git clone https://git.sr.ht/~bt/surf
cd surf
echo "Installing surf"
make install
cd ..

git clone https://git.sr.ht/~bt/slock
cd slock
echo "Installing slock"
make install
cd ..



cd ..

rc-service dbus start
rc-update add dbus

rc-service networking stop
rc-service wpa_supplicant stop
rc-update del networking boot
rc-update del wpa_supplicant boot
rc-service networkmanager start
rc-update networkmanager networkmanager

rc-service alsa start
rc-update add alsa

echo "Install finished. You should copy over the .xinitrc and .profile files and reboot."
