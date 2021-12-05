#!/bin/bash

# File      :  dev_tools.sh
# Time      :  2021/12/05
# Author    :  Yujie He
# Contact   :  he-yujie@outlook.com
# State     :  Todo
# Reference :  -

set -e
set -x

source setup/ubuntu/utils/scriptutils.sh

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

# conda
echo "Installing conda ..."
bash ./install_conda.sh

# ros
echo "Installing ros ..."
bash ./install_ros_noetic.sh

# TODO: llvm
echo "Installing llvm ..."
