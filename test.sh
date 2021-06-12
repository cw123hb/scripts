#!/usr/bin/env bash

# Setup oh-my-zsh
if [ ! -d ~/.oh-my-zsh ]; then
    yes n | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Setup tmux
curl -L https://gist.github.com/mitmul/bd25b9630177bdb0b5d2da5a5251b883/raw/tmux.conf -o ~/.tmux.conf

# Setup vim
if [ ! -d ~/.vim/colors ]; then
    mkdir -p ~/.vim/colors
fi
curl -L https://github.com/jonathanfilip/vim-lucius/raw/master/colors/lucius.vim -o ~/.vim/colors/lucius.vim
curl -L https://github.com/tomasr/molokai/raw/master/colors/molokai.vim -o ~/.vim/colors/molokai.vim
curl -L https://gist.github.com/mitmul/bd25b9630177bdb0b5d2da5a5251b883/raw/vimrc -o ~/.vimrc

# Setup linuxbrew
if [ ! -d ~/.linuxbrew ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval $($HOME/.linuxbrew/bin/brew shellenv)' >> ~/.zshrc
    eval $($HOME/.linuxbrew/bin/brew shellenv)
    echo 'export PATH="$HOME/.linuxbrew/bin:$PATH"' >> ~/.zshrc
fi
brew install node
brew install vim
brew install ag

# Setup envvars
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.zshrc
