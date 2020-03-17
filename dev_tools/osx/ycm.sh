#!/usr/bin/env bash

# Requirements:
#     macOS: cmake, vundle, vim (homebrew), python3 (homebrew)

cd ~/.vim/bundle
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
mkdir ycmbuild
cd ycmbuild
cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/
make ycm_core
