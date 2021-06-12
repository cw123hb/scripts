#!/bin/bash
sudo apt-get install -y \
  apt-transport-https \
  apt-utils \
  ca-certificates \
  locales \
  gnupg2 \
  software-properties-common \
  wget

sudo add-apt-repository -y ppa:jonathonf/vim
sudo add-apt-repository -y ppa:fish-shell/release-3
sudo add-apt-repository -y ppa:git-core/ppa
sudo apt-get update

sudo apt-get install -y \
  aptitude \
  aria2 \
  aspell \
  cmake \
  fd-find \
  fish \
  git \
  htop \
  httpie \
  jq \
  mariadb-client \
  mcrypt \
  memcached \
  mycli \
  ncdu \
  ntp \
  ntpdate \
  p7zip \
  pgcli \
  python3-pip \
  python3-tmuxp \
  python3-venv \
  rsync \
  ruby \
  ruby-dev \
  silversearcher-ag \
  software-properties-common \
  tig \
  tmux \
  tree \
  unrar \
  unzip \
  vim \
  virtualenv \
  wajig \
  wbritish \
  xz-utils

sudo sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen &&
  dpkg-reconfigure --frontend=noninteractive locales &&
  update-locale LANG=en_US.UTF-8
sudo ln -fs /usr/share/zoneinfo/Australia/Sydney /etc/localtime
