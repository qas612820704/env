#!/bin/bash

## Vim Setting

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln ./.vimrc ~
vim +PluginInstall +qall

## Zshrc

ln ./.zshrc ~

## Alias file

ln ./.aliases ~
