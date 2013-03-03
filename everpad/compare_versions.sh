#!/usr/bin/env bash

source "$(dirname ${0})/PKGBUILD"

echo -e "PKGBUILD version: ${pkgver}"
echo -e "Upstream version: (none)"
PPA_VER=($(wget -q 'https://launchpad.net/~nvbn-rm/+archive/ppa/+packages' -O - | sed -n 's/.*title.*everpad_\(.*\)-\(.*\)_source.changes.*/\1 \2/p' | head -1))
echo -e "PPA version:      ${PPA_VER[@]}"
