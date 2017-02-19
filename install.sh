#!/bin/bash

## Vim Setting

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln ./.vimrc ~
vim +PluginInstall +qall

## Zshrc

git clone https://github.com/olivierverdier/zsh-git-prompt.git
ln ./.zshrc ~

## Alias file

ln ./.aliases ~
