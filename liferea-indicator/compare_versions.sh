#!/usr/bin/env bash

source "$(dirname ${0})/PKGBUILD"
source "$(dirname ${0})/../version_checker.sh"

echo -e "PKGBUILD version: ${pkgver} ${_ubuntu_rel}"
UPSTREAM_VER=$(wget -q -O - 'http://sourceforge.net/projects/liferea/files/Liferea%20Stable/' | sed -n 's/^.*Download\ liferea-\(.*\)\.tar\..*$/\1/p')
echo -e "Upstream version: ${UPSTREAM_VER}"
echo -e "Ubuntu version:   $(get_ubuntu_version liferea ${1:-trusty})"
