#!/bin/bash

mkdir -p $HOME/.local/bin

wget https://github.com/BurntSushi/ripgrep/releases/download/12.0.1/ripgrep_12.0.1_amd64.deb -O /tmp/rg.deb
sudo dpkg -i /tmp/rg.deb

wget https://github.com/gopasspw/gopass/releases/download/v1.9.0/gopass_1.9.0_linux_amd64.deb -O /tmp/gopass.deb
sudo dpkg -i /tmp/gopass.deb

wget https://github.com/ogham/exa/releases/download/v0.9.0/exa-linux-x86_64-0.9.0.zip -O /tmp/exa.zip
cd $HOME/.local/bin
unzip /tmp/exa.zip
mv exa-linux-x86_64 exa

wget https://github.com/dalance/procs/releases/download/v0.10.1/procs-v0.10.1-x86_64-lnx.zip -O /tmp/procs.zip
cd $HOME/.local/bin
unzip /tmp/procs.zip

cd $HOME/.local/bin
wget https://github.com/mvdan/sh/releases/download/v3.1.1/shfmt_v3.1.1_linux_amd64
mv shfmt_v3.1.1_linux_amd64 shfmt
chmod a+x shfmt
