#!/usr/bin/env bash

echo "[+] Setting up Voltron"
git clone https://github.com/snare/voltron
cd voltron
./install -s
cd ..
rm -rf voltron
