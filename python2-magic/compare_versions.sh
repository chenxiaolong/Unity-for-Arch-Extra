#!/usr/bin/env bash

source "$(dirname ${0})/PKGBUILD"

echo "Getting latest Ubuntu version..."
UBUNTU_VER=($(wget -q 'http://packages.ubuntu.com/quantal/source/file' -O - | sed -n 's/.*>file_\(.*\)-\(.*\)\.debian\.tar\.xz<.*/\1 \2/p'))

echo "Getting latest upstream version..."
UPSTREAM_VER=$(wget -q 'ftp://ftp.astron.com/pub/file/' -O - | sed -n 's/.*>file-\(.*\)\.tar\.gz<.*/\1/p' | tail -1)

echo ""

echo -e "PKGBUILD version: ${pkgver}"
echo -e "Upstream version: ${UPSTREAM_VER}"
echo -e "Ubuntu version:   ${UBUNTU_VER[@]}"
