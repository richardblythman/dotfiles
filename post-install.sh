#!/usr/bin/env bash

# Goal: Script which automatically sets up a new Ubuntu Machine after installation

# Test to see if user is running with root privileges.
if [[ "${UID}" -ne 0 ]]
then
 echo 'Must execute with sudo or root' >&2
 exit 1
fi

include_directory "$(dirname $0)/install/*"

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

system_update
setup_home_dir
install_packages
install_apps
setup_dotfiles
system_configure
system_cleanup


