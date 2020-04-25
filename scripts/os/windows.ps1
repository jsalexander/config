Write-Output "[+] Installing Chocolatey"
# Install via cmd.exe (uncomment the next line if desired)
#@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command " [System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
# Installing via PowerShell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

Write-Output "[+] Installing shell utilities"
choco install ag
choco install fzf

Write-Output "[+] Installing compression utilities"
choco install 7zip.install

Write-Output "[+] Installing python2 and python3"
choco install python2
choco install python3

Write-Output "[+] Installing sysinternals"
choco install sysinternals

Write-Output "[+] Installing development utilities"
choco install git
choco install vim
choco install cmake
choco install ninja
choco install ctags
choco install cscope

Write-Output "[+] Installing WinDbg"
choco install windbg

Write-Output "[+] Installing Visual Studio components"
choco install visualstudio2019buildtools
choco install visualstudio2019-workload-vctools

Write-Output "[+] Installing Windows SDK"
choco install windows-sdk-10-version-1903-all
choco install windows-sdk-10.1
choco install windows-sdk-10
choco install windows-sdk-8.1
choco install windows-sdk-8.0
choco install windows-sdk-7.choco install windows-sdk-6.0
