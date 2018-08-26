# Prerequisites
sudo pacman -Sy --noconfirm git

# Install yay package manager
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
rm -rf yay


