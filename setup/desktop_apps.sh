#!/bin/bash

# File      :  desktop_apps.sh
# Time      :  2021/12/05
# Author    :  Yujie He
# Contact   :  he-yujie@outlook.com
# State     :  Todo
# Reference :  https://github.com/davidoort/setup/blob/master/ubuntu/scripts/desktop_apps.sh

set -e
set -x

source setup/ubuntu/utils/scriptutils.sh

# Chrome
if isInstalled "google-chrome-stable"; then
    echo "Skipping installation of google-chrome because it is already installed."
else
    echo "Installing Chrome Browser..."
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
    echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
    sudo apt-get update
    sudo DEBIAN_FRONTEND=noninteractive apt-get install -y google-chrome-stable
fi

# VS Code
if isInstalled "code"; then
    echo "Skipping installation of Visual Studio Code because it is already installed."
else
    tmp
    echo "Installing Visual Studio Code..." $'\n'

    sudo touch /etc/apt/sources.list.d/vscode.list
    echo "deb [arch=amd64] http://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list

    curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >microsoft.gpg
    sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg

    sudo apt-get update
    sudo DEBIAN_FRONTEND=noninteractive apt-get install code -y
    tmpExit
fi

# Terminator
if isInstalled "terminator"; then
    echo "Skipping installation of terminator because it is already installed."
else
    tmp
    echo "Installing Terminator..." $'\n'
    sudo apt-get update
    sudo DEBIAN_FRONTEND=noninteractive apt-get install terminator -y
    tmpExit
fi

# Zoom
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt install ./zoom_amd64.deb -y

# OpenConnect
if isInstalled "openconnect"; then
    echo "Skipping installation of openconnect because it is already installed."
else
    sudo apt-get install -y openconnect network-manager-openconnect network-manager-openconnect-gnome
fi

# TODO: Kazam
# OpenConnect
if isInstalled "kazam"; then
    echo "Skipping installation of kazam because it is already installed."
else
    sudo apt-get install kazam
fi

# TODO: Typora
# https://download.typora.io/linux/typora_0.11.18_amd64.deb
