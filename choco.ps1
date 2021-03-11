#install
https://chocolatey.org/install


#command
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#syntax
choco -?

#choco search
choco find | search|list
choco find chrome

#install
chocolatey.exe install chrome-remote-desktop-chrome 63.0.3239.17 

#Review
chocolatey.exe find --local-only
choco outdated
choco update docker-cli 

# Update all
cup all -y

#uninstall software

choco uninstall dopdf 10.8.125