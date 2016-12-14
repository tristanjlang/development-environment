#!/bin/bash

# install zsh
# based on - http://sourabhbajaj.com/mac-setup/iTerm/zsh.html
brew install zsh zsh-completions
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh -s /usr/local/bin/zsh

# install gvm
zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
gvm install go1.4
gvm use go1.4
gvm install go1.6.2
gvm use go1.6.2

# install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.6/install.sh | zsh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
nvm install 4.2.6

# set up .tmux.conf
echo "set-option -g history-limit 100000" > .tmux.conf

# set up .vimrc
echo "set number" > .vimrc

# install development dependencies
brew install autoconf
brew install automake
brew install cmake
brew install libtool
brew install llvm37
