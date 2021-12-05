#!/bin/bash
set -e
set -x

source ./scriptutils.sh

myfonts_dir=/usr/share/fonts/truetype/hack
sudo mkdir $myfonts_dir 2>/dev/null

# download
mkdir ~/hack_font
cd ~/hack_font
wget https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip
unzip -o Hack-v3.003-ttf.zip
wget https://raw.githubusercontent.com/source-foundry/Hack/master/config/fontconfig/45-Hack.conf

# move
echo "${pwd}"
sudo mv ./ttf/* $myfonts_dir
sudo mv 45-Hack.conf /etc/fonts/conf.d/

cd $myfonts_dir
sudo chmod 555 *
sudo mkfontscale 1>/dev/null
sudo mkfontdir 1>/dev/null
sudo fc-cache -v 1>/dev/null

rm -rf ~/hack_font

echo "Hack is installed"
fc-list | grep "Hack"

echo "you can set fontfamily as hack in VSCode"
