#!/usr/bin/env bash

# Check for rvm
if test ! $(which rvm); then
  echo "Installing RVM for you."
  ruby -e "$(curl -sSL https://get.rvm.io | bash -s stable)"
else
  printf "RVM is already installed."
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
rvm install 1.9.3
rvm install 2.2.0

# Install gems
source ./deps.sh;
