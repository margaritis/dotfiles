#!/usr/bin/env bash

# https://github.com/creationix/nvm
# Install nodejs and iojs throught nvm.
# TODO: add more options
brew install nvm
source $(brew --prefix nvm)/nvm.sh
mkdir ~/.nvm
export NVM_DIR=~/.nvm;

# Install node & npm packages

nvm install lts/jod

nvm install lts/krypton

source ./node/npm.sh;

nvm install 25.9.0

nvm use lts/krypton
nvm alias default lts/krypton

ln -sf `which node` /opt/homebrew/bin/node
ln -sf `which jshint` /opt/homebrew/bin/jshint
