#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "The script has to be run as root."
  exit
fi

mkdir /home/gjoanes/.suckless
cd /home/gjoanes/.suckless

git clone https://github.com/djpohly/dwl
cd dwl
echo "Installing dwl"
make install
cd ..

git clone https://github.com/kolunmi/dwlb
cd dwlb
make
make install


cd ..

setup-devd udev

adduser gjoanes input
adduser gjoanes video
adduser gjoanes audio

rc-update add seatd
rc-service seatd start
adduser gjoanes seat


rc-service dbus start
rc-update add dbus

#rc-service networking stop
#rc-service wpa_supplicant stop
#rc-update del networking boot
#rc-update del wpa_supplicant boot
#rc-service networkmanager start
#rc-update networkmanager networkmanager

rc-service alsa start
rc-update add alsa

echo "Install finished. You should copy over the .xinitrc and .profile files and reboot."
