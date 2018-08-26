# Prerequisites
sudo pacman -Sy --noconfirm git

# Install yay package manager
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
rm -rf yay

# Install dependencies & packages
yay -Sy --noconfirm i3 i3-gaps xorg polybar feh python-pywal rofi zsh oh-my-zsh-git nvim rxvt-unicode termite neovim thunar compton xcwd-git betterlockscreen playerctl pulseaudio arc-gtk-theme arc$


