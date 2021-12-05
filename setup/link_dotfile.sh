# customised dotfiles
ln -s ~/yujie_shell/dotfiles/.aliases ~/.aliases

# additional settings in bashrc
echo -e "\n" >>~/.bashrc
cat ~/yujie_shell/dotfiles/.bashrc_extras >>~/.bashrc

# incremental history searching
# https://codeinthehole.com/tips/the-most-important-command-line-tip-incremental-history-searching-with-inputrc/
ln -s ~/yujie_shell/dotfiles/.inputrc ~/.inputrc
