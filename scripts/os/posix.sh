OS_NAME=$(uname)

# Install software from OS-specific package manager
if [ $OS_NAME = "Darwin" ]
    then
        echo "[+] Installing macOS dependencies"
        source "macos.sh"
elif [ $OS_NAME = "OpenBSD" ]
    then
        echo "[+] Installing OpenBSD dependencies"
        source "openbsd.sh"
elif [ $OS_NAME = "FreeBSD" ]
    then
        echo "[+] Installing FreeBSD dependencies"
        source "freebsd.sh"
elif [ $OS_NAME = "Linux" ]
    then
        echo "[+] Installing Linux dependencies"
        source "linux.sh"
else
    echo "{+] No dependencies specified for ${OS_NAME}"
fi
