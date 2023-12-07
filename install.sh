#!/bin/bash

mkdir ~/Downloads
mkdir ~/Documents

# Updating System to Latest
sudo pacman -Syu && sudo pacman -Syu -y

# Install softwares
sudo pacman -S git ttf-firacode-nerd ttf-hack-nerd alacritty rofi feh firefox nvidia nvidia-utils nvidia-settings picom btop curl unzip man

source ~/.bashrc

# Installing Go Language
# Go Version 1.21.5 Latest as per 7th December 2023
wget https://go.dev/dl/go1.21.5.linux-amd64.tar.gz && mv go1.21.5.linux-amd64.tar.gz ~/Downloads
sudo tar -C /usr/local -xzf ~/Downloads/go1.21.5.linux-amd64.tar.gz
source ~/.bashrc
go version

# Installing Bun Better Javascript Runtime
curl -fsSL https://bun.sh/install | bash
source ~/.bashrc
bun -v

# Installing Starship Prompt
curl -fsSL https://starship.rs/install.sh | sh

# Installing Github Cli
sudo pacman -S github-cli
git config --global user.email "ali.hussain.abid.246@outlook.com" && git config --global user.name "Ali Hussain Abid"

# Copying Settings files from repo to ~ directory
cp .bashrc ~
cp .alacritty.yml ~
cp -r .config/ ~
cp -r Pictures/ ~

# Removing softwares that are preinstalled by arch linux that are not required in this Biased PC experience Setup.
sudo pacman -R htop xterm 

# Rebooting PC to fully Realize your settings.
reboot
