#!/usr/bin/env bash

# Npm packages
packages=(
  eslint
  jshint
  yo
  gulp
  pm2
  mocha
  babel-cli
  # depcheck
  # karma-cli
  # pug
  # yaml2json
  # tern
  # pug-lint
  # grunt-cli
  # generator-api-service
  # nsp
  # jscs
  # jsxhint
  # bower
  # generator-angular-fullstack
  # requirejs
  # node-inspector
  # browserify
  # forever
  # forever-service
  # phonegap
  # jade-to-handlebars
  # sass-lint
)

npm install npm@11.13.0 -g

echo "installing npm packages..."
npm install -g  ${packages[@]}

# These packages will be added in quick install script for local repos
# socket.io
# memwatch-next
# commander
# chalk
# passport
# mysql
# bluebird
# karma
# underscore
# react
