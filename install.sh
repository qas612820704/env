#!/bin/bash

## Vim Setting

git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
ln -s ./.vimrc $HOME
vim +PluginInstall +qall

## Zshrc

git clone https://github.com/olivierverdier/zsh-git-prompt.git $HOME/zsh-git-prompt
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/zsh-syntax-highlighting
ln -s ./.zshrc $HOME

## Alias file

ln -s ./.aliases $HOME


## awesome config

mkdir -p $HOME/.config/awesome/
ln -s ./rc.lua $HOME/.config/awesome/


## tmux conf

git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
ln -s ./.tmux.conf $HOME
