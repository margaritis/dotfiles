#!/usr/bin/env bash

# Check for rvm
if test ! $(which rvm); then
  echo "Installing RVM for you."
  ruby -e "$(curl -sSL https://get.rvm.io | bash -s stable)"
else
  printf "RVM is already installed."
fi

export PATH="$HOME/.rvm/bin:$PATH";
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
#rvm install 1.9.3 --with-gcc=clang
# rvm install 2.2.10
# rvm install 2.3.7
rvm install 2.4.9
rvm install 2.5.7
rvm install 2.6.5


# Install gems
source ./ruby/deps.sh;
