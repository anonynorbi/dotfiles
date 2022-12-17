#!/bin/bash

# Install packages from official repos
sudo pacman -S --needed - < pkglist.txt

# Make yay (pacman wrapper and AUR helper)
git clone https://aur.archlinux.org/yay.git
cd yay
make -csi

# Install packages from AUR
yay -S --needed - < foreignpkglist.txt
