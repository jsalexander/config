#!/usr/bin/env bash

# Setup vim
echo "[+] Setting up vim"
rm -rf ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp -rf ../../.vim ~/
cp -rf ../../.vimrc ~/
vim -c "PluginInstall" +qall

# Setup tmux
echo "[+] Setting up tmux"
cp -rf ../../.tmux.conf ~/

# Setup tmuxinator
echo "[+] Setting up tmuxinator"
cp -rf ../../.tmuxinator ~/

# Setup gdb
echo "[+] Setting up gdb"
cp -rf ../../.gdbinit ~/
cp -rf ../../.gdbinit.d ~/
