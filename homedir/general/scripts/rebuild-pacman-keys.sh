#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root" 
    exit 1
fi

rm -rf /etc/pacman.d/gnupg/
rm -rf /root/.gnupg/
gpg --refresh-keys
pacman-key --init && pacman-key --populate
pacman-key --refresh-keys --keyserver hkp://18.9.60.141
