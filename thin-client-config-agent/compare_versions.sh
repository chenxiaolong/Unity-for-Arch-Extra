#!/usr/bin/env bash

source "$(dirname ${0})/PKGBUILD"

echo "Getting latest Ubuntu version..."
UBUNTU_VER=($(wget -q 'http://packages.ubuntu.com/quantal/source/thin-client-config-agent' -O - | sed -n 's/.*>thin-client-config-agent_\(.*\)\.tar\.gz<.*/\1/p'))

echo ""

echo -e "PKGBUILD version: ${pkgver}"
echo -e "Upstream version: (none)"
echo -e "Ubuntu version:   ${UBUNTU_VER[@]}"
