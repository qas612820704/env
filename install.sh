#!/bin/bash

## Vim Setting

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s ./.vimrc ~
vim +PluginInstall +qall

## Zshrc

git clone https://github.com/olivierverdier/zsh-git-prompt.git ~/zsh-git-prompt
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/zsh-syntax-highlighting
ln -s ./.zshrc ~

## Alias file

ln -s ./.aliases ~


## awesome config

mkdir -p ~/.config/awesome/
ln -s ./rc.lua ~/.config/awesome/


## tmux conf

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s ./.tmux.conf ~
