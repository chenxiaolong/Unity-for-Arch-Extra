#!/usr/bin/env bash

source "$(dirname ${0})/PKGBUILD"
source "$(dirname ${0})/../version_checker.sh"

echo -e "PKGBUILD version: ${pkgver}"
UPSTREAM_VER=$(wget -q 'https://distfiles.macports.org/py-shiboken/' -O - | sed -n 's/.*>shiboken-\(.*\)\.tar\.bz2<.*/\1/p' | grep -v latest | tail -1)
echo -e "Upstream version: ${UPSTREAM_VER}"
echo -e "Ubuntu version:   $(get_ubuntu_version shiboken ${1:-trusty})"
