#!/usr/bin/env bash

# https://github.com/creationix/nvm
# Install nodejs and iojs throught nvm.
# TODO: add more options
brew install nvm
source $(brew --prefix nvm)/nvm.sh
mkdir ~/.nvm
export NVM_DIR=~/.nvm;

# Install node & npm packages for 0.12.0
nvm install 0.12.0
source ./node/npm.sh;

# Install node & npm packages for 0.10.26
nvm install 0.10.26
source ./node/npm.sh;

# Install node & npm packages for 0.10.24
nvm install 0.10.24
source ./node/npm.sh;

nvm install iojs
nvm use 0.12.0
nvm alias default 0.12.0

