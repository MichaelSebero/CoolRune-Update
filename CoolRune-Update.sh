#!/bin/sh

# License: GNU GPLv3

read -rep $'Make sure to backup your passwords and bookmarks before updating CoolRune, press [ENTER] to continue. '

su -c ' pacman -Syyu --noconfirm --needed && update-grub &&  mkdir /home/CoolRune-Files && cd /home/CoolRune-Files && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Files.7z && curl -RO https://raw.githubusercontent.com/MichaelSebero/CoolRune-Files/master/CoolRune-Dotfiles.7z && chattr -i /etc/hosts && chattr -i /etc/resolv.conf && 7z x CoolRune-Files.7z -o/ -y && 7z x CoolRune.7z -o/ -y && 7z x CoolRune-Dotfiles.7z -o/home/$USER -y && chattr +i /etc/hosts && chattr +i /etc/resolv.conf && chmod 777 /home/$USER/.var/io.github.celluloid_player.Celluloid -R && rm -rf /home/CoolRune-Files && chmod 777 /home/$USER/.librewolf -R && chmod 777 /home/$USER/.config -R && chmod 777 /home/$USER/.var/app -R && flatpak update -y && reboot '
