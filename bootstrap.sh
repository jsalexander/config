#!/usr/bin/env bash

rm -rf ~/.vim
cp -rf .vim ~/
cp -rf .vimrc ~/
cp -rf .tmux.conf ~/

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim -c "PluginInstall" +qall
