#!/usr/bin/env bash

source "$(dirname ${0})/PKGBUILD"

echo -e "PKGBUILD version: ${pkgver}"
UPSTREAM_VER=$(wget -q -O - 'https://code.launchpad.net/~extension-hackers/globalmenu-extension' | grep Releasing | sed -n 's/^.*<p>Releasing\ \(.*\)<\/p>/\1/p' | head -n 1)
echo -e "Upstream version: ${UPSTREAM_VER}"
echo -e "Ubuntu version:   (n/a)"
