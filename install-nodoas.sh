#!/bin/env sh

mkdir -p ~/.local/bin
mkdir -p ~/.config/networkmanager-dmenu/
mkdir -p ~/.local/share/applications

python3 -m pip --no-cache-dir install  "eduvpn-client[gui]"

flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo

git clone https://github.com/firecat53/networkmanager-dmenu.git
cp networkmanager-dmenu/networkmanager-dmenu ~/.local/bin/
cp networkmanager-dmenu/networkmanager-dmenu.desktop ~/.local/share/applications
cp networkmanager-dmenuconfig.ini.example ~/.config/networkmanager-dmenu/config.ini


cp .profile ~/.profile 