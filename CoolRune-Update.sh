#!/bin/sh

# License: GNU GPLv3

pacman -Syyu --noconfirm --needed && sudo update-grub && mkdir /home/CoolRune-Files && cd /home/CoolRune-Files && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Files.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Dotfiles.7z && sudo chattr -i /etc/hosts && sudo chattr -i /etc/resolv.conf && sudo 7z x CoolRune-Files.7z -o/ -y && sudo 7z x CoolRune.7z -o/ -y && sudo 7z x CoolRune-Dotfiles.7z -o/home/$USER -y && sudo chattr +i /etc/hosts && sudo chattr +i /etc/resolv.conf && sudo rm -rf /home/CoolRune-Files && reboot
