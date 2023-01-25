# Alpine Suck

Lightweight Desktop installer for Alpine Linux based on the suckless philosophy.
Includes my own custom set of suckless tools (dwm, slstatus, dmenu, etc.)

## Downloading

After going through the standard Alpine installer, login as your created user and
pull the repo:

`git clone https://git.sr.ht/~bt/alpine-suck`

`cd alpine-suck`

## Installing

1) Install dependencies by running `./install-dependencies.sh`. The script will simply read required packages from `dependencies.txt` and run apk add.
2) Compile and install suckless software by running the `./install.sh`

## TLDR

```sh
cd alpine-suck # CD into this repository
sudo ./install-dependencies.sh # Install alpine packages
```

Be sure to edit the main `install.sh` file and change the username "bt" to your own:

```sh
mkdir /home/bt/.suckless
cd /home/bt/.suckless
```

Save your changes and then run:

```sh
sudo ./install.sh # Install suckless tools
cp .xinitrc ~/.xinitrc # Apply .xinitrc
cp .profile ~/.profile # Apply .profile
```

Reboot the machine. Log in as your main user. Run:

```
startx
```

## Possible Tweaks / Troubleshooting

If you're having issues with the user you created during the Alpine installer, run the following:

```sh
useradd -m -s /bin/bash -U -G wheel,users,audio,video,cdrom,input,tty alpineuser
```

---

You might need to check `/proc/asound/cards` to see which sound cards are available to your system. Then, if needed, you should create a `/etc/asound.conf` file with the following inside (where the "1" is your desired card number):

```
defaults.pcm.card 1
defaults.ctl.card 1
```

You might also need to create a file:

```
/etc/modules-load.d/modules.conf
```

and inside place the following:

```
snd-pcm-oss
```

This will take on the next reboot of the machine.
