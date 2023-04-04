# Alpine Qtile

Lightweight Desktop installer for Alpine Linux based on qtile

## Downloading

1. Download the latest Alpine image
2. Run `setup-alpine`
3. reboot
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

