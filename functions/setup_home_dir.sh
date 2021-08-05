#!/usr/bin/env bash

function create_folders(){
    # All personal development here
  mkdir ~/Development
  # All projects not created by me here
  mkdir ~/OpenSource
  # Folder for the desktop to cycle through pictures I like
  mkdir ~/Pictures/Backgrounds
}

mkdir -p $BASEDIR/code
mkdir -p $BASEDIR/data