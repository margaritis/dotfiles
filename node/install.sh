#!/usr/bin/env bash

# Install nodejs and iojs throught nvm.
# TODO: add more options
brew install nvm
source $(brew --prefix nvm)/nvm.sh
nvm install node
nvm install iojs
nvm use node