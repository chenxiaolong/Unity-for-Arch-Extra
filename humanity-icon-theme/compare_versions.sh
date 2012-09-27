#!/usr/bin/env bash

source "$(dirname ${0})/PKGBUILD"

echo "Getting latest Ubuntu version..."
UBUNTU_VER=($(wget -q 'http://packages.ubuntu.com/quantal/source/humanity-icon-theme' -O - | sed -n 's/.*>humanity-icon-theme_\(.*\)\.tar\.gz<.*/\1/p'))

echo "Getting latest upstream version..."
UPSTREAM_VER=$(wget -q 'https://launchpad.net/humanity/+download' -O - | sed -n 's/.*[Hh]umanity-\(.*\)\.tar\.gz.*/\1/p' | head -n 1)

echo ""

echo -e "PKGBUILD version: ${pkgver}"
echo -e "Upstream version: ${UPSTREAM_VER}"
echo -e "Ubuntu version:   ${UBUNTU_VER[@]}"
