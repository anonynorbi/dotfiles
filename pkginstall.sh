#!/bin/bash

username="anonynorbi"

# Install packages from official repos
sudo pacman -S --needed - < pkglist.txt

# Make yay (pacman wrapper and AUR helper)
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -csi
cd ..

# Install packages from AUR
yay -S --needed - < foreignpkglist.txt

# Enable services
systemctl enable bluetooth ufw libvirtd

# Add user to groups
usermod -a -G libvirt $username