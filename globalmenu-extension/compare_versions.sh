#!/usr/bin/env bash

source "$(dirname ${0})/PKGBUILD"

echo "Getting latest upstream version..."
UPSTREAM_VER=$(wget -q -O - 'https://code.launchpad.net/~extension-hackers/globalmenu-extension/3.2' | grep Releasing | sed -n 's/^.*<p>Releasing\ \(.*\)<\/p>/\1/p' | head -n 1)

echo ""

echo -e "PKGBUILD version: ${pkgver}"
echo -e "Upstream version: ${UPSTREAM_VER}"
echo -e "Ubuntu version:   (n/a)"
