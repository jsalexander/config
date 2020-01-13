#!/usr/bin/env bash

rm -rf ~/.vimrc
cp -rf .vimrc ~/
cp -rf .tmux.conf ~/

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim -c "PluginInstall" +qall
