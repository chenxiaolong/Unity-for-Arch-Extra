#!/usr/bin/env bash

source "$(dirname ${0})/PKGBUILD"

#echo "Getting latest Ubuntu version..."
#UBUNTU_VER=($(wget -q 'http://packages.ubuntu.com/quantal/source/libunity' -O - | sed -n 's/.*>libunity_\(.*\)-\(.*\)\.diff\.gz<.*/\1 \2/p'))

echo "Getting PPA version..."
PPA_VER=($(wget -q 'https://launchpad.net/~nvbn-rm/+archive/ppa/+packages' -O - | sed -n 's/.*title.*everpad_\(.*\)-\(.*\)_source.changes.*/\1 \2/p' | head -1))

#echo "Getting latest upstream version..."
#UPSTREAM_VER=$(wget -q 'https://launchpad.net/libunity/+download' -O - | sed -n 's/.*libunity-\(.*\)\.tar\.gz.*/\1/p' | head -n 1)

echo ""

echo -e "PKGBUILD version: ${pkgver}"
#echo -e "Upstream version: ${UPSTREAM_VER}"
echo -e "Upstream version: (none)"
#echo -e "Ubuntu version:   ${UBUNTU_VER[@]}"
echo -e "PPA version:      ${PPA_VER[@]}"
