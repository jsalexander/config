OS_NAME=$(uname)

# Clean-up any existing environment
rm -rf ~/.vim

# Install software from OS-specific package manager
if [ $OS_NAME = "Darwin" ] 
    then
        echo "[+] Bootstrapping macOS"
        source "os/macos.sh"
elif [ $OS_NAME = "OpenBSD" ]
    then
        echo "[+] Bootstrapping OpenBSD"
        source "os/openbsd.sh"
elif [ $OS_NAME = "FreeBSD" ]
    then
        echo "[+] Bootstrapping FreeBSD"
        source "os/freebsd.sh"
elif [ $OS_NAME = "Linux" ]
    then
        echo "[+] Bootstrapping Linux"
        source "os/linux.sh"
else
    echo "{+] No bootstrap available for ${OS_NAME}"
fi

# Setup vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp -rf .vim ~/
cp -rf .vimrc ~/
vim -c "PluginInstall" +qall

# Setup tmux
cp -rf .tmux.conf ~/

# Setup gdb
cp -rf .gdbinit ~/

# Intall pip for all python
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python2 get-pip.py --user
python3 get-pip.py --user
rm get-pip.py
python3 -m pip install future
python3 -m pip install requests urllib3
python3 -m pip install pyyaml
python3 -m pip install pynacl pycrypto
python3 -m pip install voltron pygments
python3 -m pip install dpkt pcapy pypcap python-ptrace scapy
python3 -m pip install pypdf2
python3 -m pip install pwntools
python3 -m pip install jupyter pandas
