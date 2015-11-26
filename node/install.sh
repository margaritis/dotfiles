#!/usr/bin/env bash

# https://github.com/creationix/nvm
# Install nodejs and iojs throught nvm.
# TODO: add more options
brew install nvm
source $(brew --prefix nvm)/nvm.sh
mkdir ~/.nvm
export NVM_DIR=~/.nvm;

# Install node & npm packages for 0.12.6

nvm install 4.0.0
source ./node/npm.sh;

nvm install 0.12.6
nvm reinstall-packages 4.0.0

nvm install 0.10.26
nvm reinstall-packages 4.0.0

nvm install 0.10.24
nvm reinstall-packages 4.0.0

nvm install iojs
nvm use 0.12.6
nvm alias default 0.12.6

ln -sf `which node` /usr/local/bin/node
ln -sf `which jscs` /usr/local/bin/jscs
ln -sf `which jshint` /usr/local/bin/jshint
ln -sf `which tern` /usr/local/bin/tern
ln -sf `which grunt` /usr/local/bin/grunt
ln -sf `which bower` /usr/local/bin/bower
ln -sf `which r.js` /usr/local/bin/r.js
