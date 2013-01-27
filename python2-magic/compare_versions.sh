#!/usr/bin/env bash

source "$(dirname ${0})/PKGBUILD"
source "$(dirname ${0})/../version_checker.sh"

echo -e "PKGBUILD version: ${pkgver}"
UPSTREAM_VER=$(wget -q 'ftp://ftp.astron.com/pub/file/' -O - | sed -n 's/.*>file-\(.*\)\.tar\.gz<.*/\1/p' | tail -1)
echo -e "Upstream version: ${UPSTREAM_VER}"
echo -e "Ubuntu version:   $(get_ubuntu_version file ${1:-raring})"
