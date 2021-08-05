#!/usr/bin/env bash

function install_packages {
	# Update the list of packages in 'data/favs.list' to suit your preferences
	install_from_list "preferred applications" "packages" main
}

# https://github.com/snwh/ubuntu-post-install/blob/e88643542ac9388074a256535786f50d799e50bc/functions/install_functions

function install_from_list() {
    # echo
    LIST=$(dirname "$0")'/data/'${2}'.list'

    for PACKAGE in $(cat $LIST); do


function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    apt install $1 -y
  else
    echo "Already installed: ${1}"
  fi
}