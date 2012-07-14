#!/usr/bin/env bash

source "$(dirname ${0})/PKGBUILD"

echo "Getting latest Ubuntu version..."
UBUNTU_VER=($(wget -q 'http://packages.ubuntu.com/precise/source/accountsservice' -O - | sed -n 's/.*>accountsservice_\(.*\)-\(.*\)\.debian\.tar\.gz<.*/\1 \2/p'))

echo "Getting latest Arch Linux version..."
ARCHLINUX_VER=($(wget -q 'https://www.archlinux.org/packages/extra/x86_64/accountsservice/' -O - | sed -n '/<title>/ s/^.*accountsservice\ \(.*\)-\(.*\)\ (.*$/\1 \2/p'))

echo "Getting latest upstream version..."
UPSTREAM_VER=$(wget -q "http://cgit.freedesktop.org/accountsservice/" -O - | sed -n 's/.*>accountsservice-\(.*\)\.tar\.gz<.*/\1/p' | head -n 1)

echo ""

echo -e "PKGBUILD version:   ${pkgver%.*.*} ${_ubuntu_rel}"
echo -e "Upstream version:   ${UPSTREAM_VER}"
echo -e "Arch Linux version: ${ARCHLINUX_VER[@]}"
echo -e "Ubuntu version:     ${UBUNTU_VER[@]}"
