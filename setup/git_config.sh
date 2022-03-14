#!/bin/bash

# File      :  git_config.sh
# Time      :  2022/03/14
# Author    :  Yujie He
# Contact   :  he-yujie@outlook.com
# State     :  Tested
# Reference :  xxx

echo "Add git config"
git config --global  user.name "hibetterheyj"
git config --global user.email "he-yujie@outlook.com"

echo "Print current git config"
git config -l

echo "Generate SSH key for GitHub"
ssh-keygen
