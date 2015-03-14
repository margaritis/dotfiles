#!/bin/sh

# Install nodejs and iojs throught nvm.
# TODO: add more options

source $(brew --prefix nvm)/nvm.sh
nvm install node
nvm install iojs