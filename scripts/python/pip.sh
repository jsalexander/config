#!/usr/bin/env bash

echo "[+] Installing pip for python2 and python3"
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
#python2 get-pip.py --user
python3 get-pip.py --user
rm get-pip.py

echo "[+] Installing pip dependencies"
python3 -m pip install future
python3 -m pip install requests urllib3
#python3 -m pip install pyyaml
python3 -m pip install pynacl pycrypto
#python3 -m pip install voltron pygments
python3 -m pip install dpkt pcapy pypcap python-ptrace scapy
#python3 -m pip install pypdf2
python3 -m pip install pwntools
python3 -m pip install jupyter pandas
python3 -m pip install matplotlib
python3 -m pip install numpy
python3 -m pip install terminaltables
python3 -m pip install argcomplete
python3 -m pip install fido yubikey-manager python-yubico
