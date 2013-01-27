#!/usr/bin/env bash

source "$(dirname ${0})/PKGBUILD"
source "$(dirname ${0})/../version_checker.sh"

echo -e "PKGBUILD version: ${pkgver}"
echo -e "Upstream version: $(get_pypi_version oauth2)"
echo -e "Ubuntu version:   $(get_ubuntu_version python-oauth2 ${1:-raring})"
