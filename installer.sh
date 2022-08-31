#!/bin/sh
sudo pacman -S gcc make libxinerama libxft fontconfig xorg-xinit pcmanfm vim links sxiv mpv yt-dlp fzf curl wget base-devel
sudo apt install gcc make libxinerama-dev libxft-dev xinit pcmanfm vim links sxiv mpv fzf curl wget

cd dwm
sudo make clean install
cd ..
cd dmenu
sudo make clean install
cd .. 
cd st
sudo make clean install

sudd printf 'Section "InputClass"   
  Identifier "touchpad"  
  Driver "libinput"  
  MatchIsTouchpad "on"  
  Option "Tapping" "on"  
EndSection' > /etc/X11/xorg.conf.d/30-touchpad.conf 
touch ~/.bashrc
cat bashrc >> ~/.bashrc
