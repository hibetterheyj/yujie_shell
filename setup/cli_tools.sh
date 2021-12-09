#!/bin/bash

# File      :  cli_tools.sh
# Time      :  2021/12/05
# Author    :  Yujie He
# Contact   :  he-yujie@outlook.com
# State     :  Deployed
# Reference :  -

# Exit immediately if a command exits with a non-zero exit status.
# set -e
# Print commands and their arguments as they are executed.
set -x

source ./scriptutils.sh

sudo apt update

## dev
# git
check_install git
# python3-pip
check_install python3-pip

## files
# zip, unzip
check_install zip
check_install unzip

# tldr
check_install tldr

# tmux
check_install tmux

# net-tools (ifconfig)
check_install net-tools

# htop
check_install htop

# ffmpeg
check_install ffmpeg
echo "Video Generation Test from https://www.bogotobogo.com/FFMpeg/ffmpeg_video_test_patterns_src.php"
echo "ffmpeg -f lavfi -i testsrc=duration=5.3:size=qcif:rate=10 testsrc2.mp4"

# clipboard manager: copyq
check_install copyq

# trash-cli
# https://github.com/andreafrancia/trash-cli
check_install trash-cli

# vim
# sudo apt install vim -y
