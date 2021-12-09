#!/bin/bash

# File      :  cli_optional.sh
# Time      :  2021/12/09
# Author    :  Yujie He
# Contact   :  he-yujie@outlook.com
# State     :  Tested
# Reference :  -

source ./scriptutils.sh

# howdoi: https://github.com/gleitz/howdoi
# '' which is not on PATH.
python3 -m pip install howdoi
source ~/.profile

# gpustat
check_install gpustat

# diskonaut
wget https://github.com/imsnif/diskonaut/releases/download/0.11.0/diskonaut-0.11.0-unknown-linux-musl.tar.gz -P ~/
tar zxvf ~/diskonaut*.tar.gz -C ~/.local/bin/
rm -rf ~/diskonaut*.tar.gz

# youtube-dl
# sudo -H pip install --upgrade youtube-dl

# https://github.com/jarun/nnn
# https://github.com/ranger/ranger (.tar.gz or pip)
# https://github.com/jhotmann/node-rename-cli (npm)
# https://github.com/kefranabg/readme-md-generator (npx)
# https://github.com/agarrharr/awesome-cli-apps
