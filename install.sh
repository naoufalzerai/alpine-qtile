#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "The script has to be run as root."
  exit
fi

mkdir /home/bt/.suckless
cd /home/bt/.suckless

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

git clone https://git.sr.ht/~sircmpwn/scdoc
cd scdoc
echo "Installing scdoc"
make install
cd ..

git clone https://git.sr.ht/~rjarry/aerc
cd aerc
echo "Installing aerc"
make install
cd ..
cd ..

echo "Install finished. You should copy over the .xinitrc and .profile files and reboot."
