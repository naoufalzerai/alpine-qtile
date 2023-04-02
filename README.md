# Alpine Suck

Lightweight Desktop installer for Alpine Linux based on the suckless philosophy.
Includes my own custom set of suckless tools (dwm, slstatus, dmenu, etc.)

## Downloading

1. Download the latest Alpine image
2. Run `setup-alpine`
3. Run `setup-xorg-base`
4. [Enable community/edge repos](https://wiki.alpinelinux.org/wiki/Repositories#Enabling_the_community_repository)
5. Install git
6. reboot



---

Login as your newly created user and run the following:

`git clone https://github.com/grandjeanlab/alpine-suck`

`cd alpine-suck`

## Installing
1) Change kernal by running `doas ./change-kernel.sh`
2) Install dependencies by running `doas ./install.sh`. The script will simply read required packages from `dependencies.txt` and run apk add.
3) Finish installing by running the `./install-nodoas.sh`


```sh
cp .xinitrc ~/.xinitrc # Apply .xinitrc
cp .profile ~/.profile # Apply .profile
```

Reboot the machine. Log in as your main user. Run:

```
startx
```

## Possible Tweaks / Troubleshooting

You might need to run the following for machines running older Intel Graphics:

```
export MESA_LOADER_DRIVER_OVERRIDE=crocus
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