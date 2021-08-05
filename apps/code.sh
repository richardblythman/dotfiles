#!/usr/bin/env bash

function install_code(){
    # TODO: Check if installed 

    # retrieve the *.deb
    curl -o code.deb -L http://go.microsoft.com/fwlink/?LinkID=760868

    # install the *.deb
    sudo dpkg --install code.deb

    # install extensions
    code --install-extension ms-vscode-remote.vscode-remote-extensionpack
}