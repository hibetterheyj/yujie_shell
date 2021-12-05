#!/bin/bash

# File      :  link_dotfile.sh
# Time      :  2021/12/05
# Author    :  Yujie He
# Contact   :  he-yujie@outlook.com
# State     :  Deployed
# Reference :  -

# customised dotfiles
ln -s ~/yujie_shell/dotfiles/.aliases ~/.aliases

# additional settings in bashrc
echo -e "\n" >>~/.bashrc
cat ~/yujie_shell/dotfiles/.bashrc_extras >>~/.bashrc

# incremental history searching
# https://codeinthehole.com/tips/the-most-important-command-line-tip-incremental-history-searching-with-inputrc/
ln -s ~/yujie_shell/dotfiles/.inputrc ~/.inputrc
