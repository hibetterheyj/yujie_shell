#!/bin/bash

# File      :  desktop_apps.sh
# Time      :  2021/12/05
# Author    :  Yujie He
# Contact   :  he-yujie@outlook.com
# State     :  Todo
# Reference :  https://github.com/davidoort/setup/blob/master/ubuntu/scripts/desktop_apps.sh

set -e
set -x

source ./scriptutils.sh

# clipboard manager: copyq
check_install copyq

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
rm -rf zoom_amd64.deb

# OpenConnect
if isInstalled "openconnect"; then
    echo "Skipping installation of openconnect because it is already installed."
else
    sudo apt-get install -y openconnect network-manager-openconnect network-manager-openconnect-gnome
fi

# Kazam: screen recording
check_install kazam

# OBS Studio
# TODO: replace with portable version
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install obs-studio -y

# TODO: Typora
# need activation code
# https://download.typora.io/linux/typora_0.11.18_amd64.deb

