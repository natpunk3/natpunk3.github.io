#!/bin/bash
# Makes a mirrorlist of a single server for quick setup
# Natpunk3

SERV_URL="https://mirrors.ocf.berkely.edu/archlinux/"
if [ "$(whoami)" == "root" ]; then
  echo "Run this script using root or sudo!!!"
  exit 1
echo "Configuring Mirrorlist..."
echo "Setting to $SERV_URL ..."
echo "Server = $SERV_URL/\$repo/os/\$arch" >> /tmp/pacman.d.mirrorlist
echo "Configured Mirrorlist sending to /etc/pacman.d/"
mv -i /tmp/pacman.d.mirrorlist /etc/pacman.d/mirrorlist
