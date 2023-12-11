#!/bin/bash

mkdir $HOME/Downloads
mkdir $HOME/Documents

# Updating System to Latest
sudo pacman -Syu && sudo pacman -Syu -y

# Install softwares
sudo pacman -S git ttf-firacode-nerd ttf-hack-nerd alacritty rofi feh firefox nvidia nvidia-utils nvidia-settings picom btop curl unzip man github-cli nnn neovim

# Removing softwares that are preinstalled by arch linux that are not required in this Biased PC experience Setup.
sudo pacman -R htop xterm dmenu nano

source ~/.bashrc

# Installing Go Language
# Go Version 1.21.5 Latest as per 7th December 2023
wget https://go.dev/dl/go1.21.5.linux-amd64.tar.gz && mv go1.21.5.linux-amd64.tar.gz $HOME/Downloads
sudo tar -C /usr/local -xzf ~/Downloads/go1.21.5.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
source ~/.bashrc
go version

# Installing Bun Better Javascript Runtime
curl -fsSL https://bun.sh/install | bash
source ~/.bashrc
bun -v

# Installing Starship Prompt
curl -fsSL https://starship.rs/install.sh | sh


# Copying Settings files from repo to ~ directory
cp .bashrc ~
cp .alacritty.yml ~
cp -r .config/ ~
cp -r Pictures/ ~

# Rebooting PC to fully Realize your settings.
reboot
