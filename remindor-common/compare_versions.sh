#!/usr/bin/env bash

source "$(dirname ${0})/PKGBUILD"
source "$(dirname ${0})/../version_checker.sh"

echo -e "PKGBUILD version: ${pkgver} ${_ppa_rel}"
echo -e "PPA version:      $(get_ppa_version ${pkgname} ppa:bhdouglass/indicator-remindor native)"
