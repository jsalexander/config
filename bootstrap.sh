OS_NAME=$(uname)

# Clean-up any existing environment
#rm -rf ~/.vim

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
vim -c "PluginInstall" +qall
cp -rf .vim ~/
cp -rf .vimrc ~/

# Setup tmux
cp -rf .tmux.conf ~/

# Intall pip for all python
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python2 get-pip.py --user
python3 get-pip.py --user
rm get-pip.py
