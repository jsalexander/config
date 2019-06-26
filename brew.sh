#!/usr/bin/env bash

brew update
brew upgrade

brew install gnupg

brew install coreutils
brew install moreutils
brew install findutils
brew install gnu-sed --with-default-names
brew install grep
brew install ctags
brew install cscope
brew install the_silver_searcher
brew install openssh
brew install wget
brew install lftp

brew install bash
brew install bash-completion2

brew install vim --with-override-system-vi
brew install tmux

brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp
brew install xpdf
brew install xz

brew install ack
brew install git
brew install cmake
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install p7zip
brew install openvpn

brew install go
brew install java

brew cask install google-chrome
brew cask install iterm2
brew cask install wireshark
brew cask install osxfuse
    
brew install --HEAD usbmuxd
brew install --HEAD libimobiledevice
brew install --HEAD ideviceinstaller
brew install --HEAD ifuse

brew cleanup
