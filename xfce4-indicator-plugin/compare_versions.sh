#!/usr/bin/env bash

source "$(dirname ${0})/PKGBUILD"
source "$(dirname ${0})/../version_checker.sh"

echo -e "PKGBUILD version: ${pkgver}"
UPSTREAM_VER=$(wget -q "http://goodies.xfce.org/projects/panel-plugins/xfce4-indicator-plugin" -O - | sed -n 's/.*xfce4-indicator-plugin-\(.*\)\.tar\.bz2.*/\1/p' | head -n 1)
echo -e "Upstream version: ${UPSTREAM_VER}"
echo -e "Ubuntu version:   $(get_ubuntu_version ${pkgname} ${1:-saucy})"
