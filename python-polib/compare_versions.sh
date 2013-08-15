#!/usr/bin/env bash

source "$(dirname ${0})/PKGBUILD"
source "$(dirname ${0})/../version_checker.sh"

echo -e "PKGBUILD version: ${pkgver}"
UPSTREAM_VER=$(wget -q 'https://bitbucket.org/izi/polib/downloads' -O - | sed -n 's/.*>polib-\(.*\)\.tar\.gz<.*/\1/p' | head -n 1)
echo -e "Upstream version: ${UPSTREAM_VER}"
echo -e "Ubuntu version:   $(get_ubuntu_version polib ${1:-saucy})"
