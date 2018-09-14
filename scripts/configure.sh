#!/bin/bash

# Set default shell to zsh
chsh -s /bin/zsh

# Generate Color Palettes
wal -i ~/wallpaper.png

# Update betterlockscreen
betterlockscreen ~/wallpaper.png

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Vim Plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
