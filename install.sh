#!/bin/env sh
echo "Installing dependencies listed in dependencies.txt..."

sed -e 's/#.*$//' -e '/^$/d' dependencies.txt | while read p; do
    echo "Running apk add $p"
    apk add $p
done 



setup-devd udev

#add user to groups
adduser gjoanes input
adduser gjoanes video
adduser gjoanes audio
adduser gjoanes flatpak

#start dbus
rc-service dbus start
rc-update add dbus

#start  elogind
rc-update add elogind
rc-service elogind start

#start network manager
rc-service networking stop
rc-service wpa_supplicant stop
rc-update del networking boot
rc-update del wpa_supplicant boot
rc-service networkmanager start
rc-update add networkmanager

#start display manager
rc-service lightdm start
rc-update add lightdm

#start freq scaline
rc-service cpufreqd start
rc-update add cpufreqd





