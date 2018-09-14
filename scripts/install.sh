#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# Prerequisites
sudo pacman -Sy --noconfirm git

# Install yay package manager
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
rm -rf yay

# Install dependencies & packages
yay -Sy i3 i3-gaps xorg polybar feh python-pywal rofi zsh oh-my-zsh-git rxvt-unicode termite neovim thunar compton xcwd-git betterlockscreen playerctl pulseaudio arc-gtk-theme arc python-setuptools

# Create config symlinks
./symlink.sh

# Run configuration script
./configure.sh
