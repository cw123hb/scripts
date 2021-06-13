#!/bin/bash
sudo apt-get install -y \
  apt-transport-https \  
  gnupg2 \
  software-properties-common \
  wget

sudo apt-get update

sudo apt-get install -y \
  git \
  htop \
  mycli \
  pgcli \
  python3-pip \
  rsync \
  software-properties-common \
  borgbackup \
  tmux \
  tree \ 
  mc \
  vim \
  visidata \
  
# Setup node
echo 'export PATH=$HOME/local/bin:$PATH' >> ~/.bashrc
. ~/.bashrc
mkdir ~/local
mkdir ~/node-latest-install
cd ~/node-latest-install
curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
./configure --prefix=~/local
make install # ok, fine, this step probably takes more than 30 seconds...
curl https://www.npmjs.org/install.sh | sh

# Setup go
GOVERSION=1.10.2
cd ~ && wget https://storage.googleapis.com/golang/go$GOVERSION.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go$GOVERSION.linux-amd64.tar.gz
nano ~/.bashrc
  Add "export PATH=$PATH:/usr/local/go/bin"
  Add "export GOPATH=~/go"
. ~/.bashrc
mkdir -p ~/go/src

curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env

# Setup tmux
curl -L https://gist.github.com/mitmul/bd25b9630177bdb0b5d2da5a5251b883/raw/tmux.conf -o ~/.tmux.conf
# Setup vim
curl -L https://gist.github.com/mitmul/bd25b9630177bdb0b5d2da5a5251b883/raw/vimrc -o ~/.vimrc

wget https://github.com/BurntSushi/ripgrep/releases/download/12.0.1/ripgrep_12.0.1_amd64.deb -O /tmp/rg.deb
sudo dpkg -i /tmp/rg.deb

wget https://github.com/gopasspw/gopass/releases/download/v1.9.0/gopass_1.9.0_linux_amd64.deb -O /tmp/gopass.deb
sudo dpkg -i /tmp/gopass.deb
# chmod a+x

# Setup TUN
# setup nebula


