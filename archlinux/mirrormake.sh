#!/bin/bash
# Makes a mirrorlist of a single server for quick setup
# Natpunk3

SERV_URL="https://mirrors.ocf.berkely.edu/archlinux/"
echo "Configuring Mirrorlist..."
echo "Setting to $SERV_URL ..."
echo "Server = $SERV_URL/\$repo/os/\$arch" >> /tmp/pacman.d.mirrorlist
echo "Configured Mirrorlist sending to /etc/pacman.d/"
mv /tmp/pacman.d.mirrorlist /etc/pacman.d/mirrorlist
