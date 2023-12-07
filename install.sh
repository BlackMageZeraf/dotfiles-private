#!/bin/bash

# Updating System to Latest
sudo pacman -Syu && sudo pacman -Syu -y

# Instal
sudo pacman -S git ttf-firacode-nerd alacritty nemo rofi feh firefox nvidia nvidia-utils nvidia-settings picom

# Copying Settings files from repo to ~ directory
cp .bashrc ~
cp .alacritty.yml ~
cp -r .config/ ~
cp -r Pictures/ ~

# Rebooting PC to fully Realize your settings.
reboot
