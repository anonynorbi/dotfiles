#!/bin/bash

sudo pacman -S --needed - < pkglist.txt
yay -S --needed - < foreignpkglist.txt
