# LinuxSettingsBackup
This document lists down all the REQUIREMENTS packages and other dependencies required to run this setup.

## Arch
`sudo pacman -Syu && sudo pacman -Sy i3 git curl`

### Rest of dependencies will be installed by `install.sh` script
Neovim will be installed using source and in Stable Release Branch. No need to install it manually.
Make sure you check if VIM is installed if yes then uninstall it using `sudo pacman -R vim` this will ensure that there is only one text editor in the PC.
