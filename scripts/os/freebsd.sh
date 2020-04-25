echo "[+] Installing python2 and python3"
pkg install python2
pkg install python3

echo "[+] Installing shell utilities"
pkg install fzf
pkg install htop

echo "[+] Installing development utilities"
pkg install autoconf
pkg install cmake
pkg install ninja
pkg install llvm
pkg install gcc
pkg install gdb
pkg install vim
pkg install tmux
pkg install ctags
pkg install cscope

echo "[+] Installing networking utilities"
pkg install nmap
pkg install netcat

echo "[+] Installing library dependencies"
pkg install libxslt
