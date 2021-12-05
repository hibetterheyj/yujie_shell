#!/bin/bash

# File      :  link_dotfile.sh
# Time      :  2021/12/05
# Author    :  Yujie He
# Contact   :  he-yujie@outlook.com
# State     :  Deployed
# Reference :  -

ABSPATH=$(realpath $0)
SETUPDIR=$(dirname $ABSPATH)

# customised dotfiles
echo "adding .aliases"
ln -sf "${SETUPDIR}/../dotfiles/.aliases" ~/.aliases

# additional settings in bashrc
echo "appending .bashrc_extras"
echo -e "\n" >>~/.bashrc
cat "${SETUPDIR}/../dotfiles/.bashrc_extras" >>~/.bashrc
source ~/.bashrc

# incremental history searching
# https://codeinthehole.com/tips/the-most-important-command-line-tip-incremental-history-searching-with-inputrc/
echo "adding .inputrc"
ln -sf "${SETUPDIR}/../dotfiles/.inputrc" ~/.inputrc
