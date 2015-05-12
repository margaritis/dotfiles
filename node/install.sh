#!/usr/bin/env bash

# https://github.com/creationix/nvm
# Install nodejs and iojs throught nvm.
# TODO: add more options
brew install nvm
source $(brew --prefix nvm)/nvm.sh
mkdir ~/.nvm
export NVM_DIR=~/.nvm;

# Install node & npm packages for 0.12.2
nvm install 0.12.2
source ./node/npm.sh;

nvm install 0.10.26
nvm reinstall-packages 0.12.2

nvm install 0.10.24
nvm reinstall-packages 0.12.2

nvm install iojs
nvm use 0.12.2
nvm alias default 0.12.2

ln -s `which node` /usr/local/bin/node
ln -s `which jscs` /usr/local/bin/jscs
ln -s `which tern` /usr/local/bin/tern
