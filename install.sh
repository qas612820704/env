#!/bin/bash

## Vim Setting

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln ./.vimrc ~
vim +PluginInstall +qall

## Zshrc

git clone https://github.com/olivierverdier/zsh-git-prompt.git ~/zsh-git-prompt
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/zsh-syntax-highlighting
ln ./.zshrc ~

## Alias file

ln ./.aliases ~


## awesome config

mkdir -p ~/.config/awesome/
ln ./rc.lua ~/.config/awesome/
