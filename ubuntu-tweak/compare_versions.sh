#!/usr/bin/env bash

source "$(dirname ${0})/PKGBUILD"

echo "Getting latest PPA version..."
PPA_VER=($(wget -q 'https://launchpad.net/~tualatrix/+archive/ppa/+packages' -O - | sed -n 's/.*ubuntu-tweak_\(.*\)-\(.*\)_source.changes.*/\1 \2/p' | head -n 1 | echo -e "$(sed 's/%/\\x/g')"))

echo "Getting latest upstream version..."
UPSTREAM_VER=$(wget -q 'https://launchpad.net/ubuntu-tweak/+download' -O - | sed -n 's/.*ubuntu-tweak-\(.*\)\.tar\.gz.*/\1/p' | head -n 1)

echo ""

echo -e "PKGBUILD version: ${pkgver}"
echo -e "Upstream version: ${UPSTREAM_VER}"
echo -e "PPA version:      ${PPA_VER[@]}"
