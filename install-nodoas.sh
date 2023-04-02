#!/bin/env sh

python3 -m pip --no-cache-dir install  "eduvpn-client[gui]"

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

