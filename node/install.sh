#!/usr/bin/env bash

# https://github.com/creationix/nvm
# Install nodejs and iojs throught nvm.
# TODO: add more options
brew install nvm
source $(brew --prefix nvm)/nvm.sh
mkdir ~/.nvm
export NVM_DIR=~/.nvm;

# Install node & npm packages for 0.12.6

nvm install lts/argon
source ./node/npm.sh;

nvm install lts/boron
nvm reinstall-packages lts/argon

nvm install lts/carbon
nvm reinstall-packages lts/argon

nvm install lts/dubnium
nvm reinstall-packages lts/argon

nvm use lts/carbon
nvm alias default lts/carbon

ln -sf `which node` /usr/local/bin/node
ln -sf `which jscs` /usr/local/bin/jscs
ln -sf `which jshint` /usr/local/bin/jshint
ln -sf `which tern` /usr/local/bin/tern
ln -sf `which grunt` /usr/local/bin/grunt
ln -sf `which bower` /usr/local/bin/bower
ln -sf `which r.js` /usr/local/bin/r.js
ln -sf `which pug-lint` /usr/local/bin/pug-lint
