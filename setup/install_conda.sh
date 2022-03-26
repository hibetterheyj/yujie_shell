#!/bin/bash

# File      :  install_conda.sh
# Time      :  2021/12/05
# Author    :  Yujie He
# Contact   :  he-yujie@outlook.com
# State     :  Deployed
# Reference :  https://gist.github.com/arose13/fcc1d2d5ad67503ba9842ea64f6bac35

# Setup Ubuntu
sudo apt update --yes
sudo apt upgrade --yes

# Get Miniconda and make it the main Python interpreter
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p ~/miniconda
rm ~/miniconda.sh

# export PATH=~/miniconda/bin:$PATH
source ~/miniconda/etc/profile.d/conda.sh
conda init bash
# https://stackoverflow.com/questions/54429210/how-do-i-prevent-conda-from-activating-the-base-environment-by-default
conda config --set auto_activate_base false
