#!/usr/bin/env bash

echo "[+] Installing shell utilities"
sudo apt install -y silversearcher-ag
sudo apt install -y fzf
sudo apt install -y tree
sudo apt install -y htop

echo "[+] Installing network utilities"
sudo apt install -y ncat
sudo apt install -y nmap
sudo apt install -y net-tools

echo "[+] Installing development utilities"
sudo apt install -y vim
sudo apt install -y tmux
sudo apt install -y tmuxinator
sudo apt install -y ctags
sudo apt install -y cscope
sudo apt install -y cmake
sudo apt install -y ninja-build
sudo apt install -y git
sudo apt install -y gcc
sudo apt install -y gdb
sudo apt install -y clang
sudo apt install -y llvm

echo "[+] Installing x86_64-linux toolchain"
sudo apt install -y build-essential
sudo apt install -y linux-headers-$(uname -r)

echo "[+] Installing i686-linux cross-compiler toolchain"
sudo apt install -y binutils-i686-linux-gnu
sudo apt install -y gcc-i686-linux-gnu
sudo apt install -y g++-i686-linux-gnu
sudo apt install -y libc6-dev-i386-cross

echo "[+] Installing arm-linux cross-compiler toolchain"
sudo apt install -y binutils-arm-linux-gnueabi
sudo apt install -y gcc-arm-linux-gnueabi
sudo apt install -y g++-arm-linux-gnueabi
sudo apt install -y libc6-dev-armhf-cross
sudo apt install -y libc6-dev-armel-cross

echo "[+] Installing arm64-linux cross-compiler toolchain"
sudo apt install -y binutils-aarch64-linux-gnu
sudo apt install -y gcc-aarch64-linux-gnu
sudo apt install -y g++-aarch64-linux-gnu
sudo apt install -y libc6-dev-arm64-cross
