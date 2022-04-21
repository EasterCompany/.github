# [REMOVE OLD] General APT Requirements
sudo apt purge -y --auto-remove nodejs npm
sudo apt purge -y --auto-remove docker docker-compose

# [INSTALL NEW] General APT Requirements
sudo apt install -y git wget curl snapd docker docker-compose gnome-keyring
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y

# Python Requirements
sudo apt install -y python3.9 python-is-python3 python3-pip
sudo python3.9 -m pip install --upgrade django cors django-cors-headers whitenoise pylint pytest pytest-django django-extensions
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y

# Node (LTS Version 16) Requirements
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y

sudo apt-get install -y gcc g++ make
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y

# Setup Home Directory
cd
sudo rm -rf Music
sudo rm -rf Pictures
sudo rm -rf Public
sudo rm -rf Templates
sudo rm -rf Videos
mkdir .logs
mkdir Media
mkdir Games
mkdir Beeks
mkdir Easter

# Microsoft VSCode (IDE for Work & Personal)
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] \
https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt update -y
sudo apt install -y code

# Microsoft Teams (Default Communication Platform for Work)
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/ms-teams stable main" > /etc/apt/sources.list.d/teams.list'

sudo apt update -y
sudo apt install -y teams

# Discord (Default Personal Communication Platform)
sudo snap install discord

# VLC Media Player (Default Media Player)
sudo snap install vlc

# Youtube Music (Default Music App)
sudo snap install youtube-music-desktop-app

# Keybase (Encrypted Cloud Storage)
curl --remote-name https://prerelease.keybase.io/keybase_amd64.deb
sudo apt install -y ./keybase_amd64.deb
sudo rm -rf ./keybase_amd64.deb

# Deluge (Default Torrent Client)
sudo apt install -y deluge

# Steam (Default Personal Game Store & Library)
sudo apt install -y steam

# Vivaldi (Default Work & Business; Browser, Email & General productivity engine)
wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | gpg --dearmor | sudo dd of=/usr/share/keyrings/vivaldi-browser.gpg
echo "deb [signed-by=/usr/share/keyrings/vivaldi-browser.gpg arch=$(dpkg --print-architecture)] https://repo.vivaldi.com/archive/deb/ stable main" | sudo dd of=/etc/apt/sources.list.d/vivaldi-archive.list
sudo apt update && sudo apt install vivaldi-stable
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y

# Finalize System Setup with Update, Upgrade and Autoremove
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y
