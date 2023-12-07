#!/bin/bash

mkdir ~/Downloads
mkdir ~/Documents

# Updating System to Latest
sudo pacman -Syu && sudo pacman -Syu -y

# Install softwares
sudo pacman -S git ttf-firacode-nerd alacritty rofi feh firefox nvidia nvidia-utils nvidia-settings picom

# Installing Go Language
# Go Version 1.21.5 Latest as per 7th December 2023
wget https://go.dev/dl/go1.21.5.linux-amd64.tar.gz ~/Downloads
sudo tar -C /usr/local -xzf ~/Downloads/go1.21.5.linux-amd64.tar.gz
source ~/.bashrc
go version

# Installing Bun Better Javascript Runtime
curl -fsSL https://bun.sh/install -y | bash
source ~/.bashrc
bun -v

# Copying Settings files from repo to ~ directory
cp .bashrc ~
cp .alacritty.yml ~
cp -r .config/ ~
cp -r Pictures/ ~

# Rebooting PC to fully Realize your settings.
reboot
