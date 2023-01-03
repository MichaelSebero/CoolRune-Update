#!/bin/sh

# License: GNU GPLv3

pacman -Syyu --noconfirm --needed && rm -rf /home/CoolRune-Files && mkdir /home/CoolRune-Files && cd /home/CoolRune-Files && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Files.7z && curl -RO https://raw.githubusercontent.com MichaelSebero/CoolRune-Files/master/CoolRune-Dotfiles.7z && 7z x CoolRune-Files.7z -o/ -y && 7z x CoolRune.7z -o/ -y && read -rep $'!!! Extract CoolRune-Dotfiles.7z in /home/yourusername using pcmanfm. This file can be found in /home/CoolRune-Files. Press enter to restart your computer when the files are extacted. ' && reboot
