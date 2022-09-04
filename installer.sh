#!/bin/sh
sudo pacman -S gcc make libxinerama libxft fontconfig xorg-xinit pcmanfm vim links sxiv mpv yt-dlp fzf curl wget base-devel gvfs
sudo apt install gcc make libxinerama-dev libxft-dev xinit pcmanfm vim links sxiv mpv fzf curl wget gvfs
cat bashrc >> ~/.bashrc
cp 30-touchpad.conf /etc/X11/xorg.conf.d/
cd dwm
sudo make clean install
cd ..
cd dmenu
sudo make clean install
cd .. 
cd st
sudo make clean install

