#!/bin/ash
echo "Installing edge kernel and removing lts"

apk add linux-edge
apk del linux-lts

reboot
