#!/usr/bin/env bash

source "$(dirname ${0})/PKGBUILD"

echo "Getting latest Ubuntu version..."
UBUNTU_VER=($(wget -q 'http://packages.ubuntu.com/quantal/source/ubuntu-mono' -O - | sed -n 's/.*>ubuntu-mono_\(.*\)\.tar\.gz<.*/\1/p'))

echo ""

echo -e "PKGBUILD version: ${pkgver}"
echo -e "Upstream version: (none)"
echo -e "Ubuntu version:   ${UBUNTU_VER[@]}"
