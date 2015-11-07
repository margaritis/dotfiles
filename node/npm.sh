#!/usr/bin/env bash

# Npm packages
packages=(
  jshint
  jscs
  jsxhint
  grunt-cli
  bower
  yo
  generator-angular-fullstack
  generator-api-service
  tern
  requirejs
  yaml2json
  node-inspector
  gulp
  browserify
  pm2
  mocha
  forever
  forever-service
  jade
  karma-cli
  phonegap
  babel
)

echo "installing npm packages..."
npm install -g  ${packages[@]}

# These packages will be added in quick install script for local repos
#socket.io
#memwatch-next
#commander
#chalk
#passport
#mysql
#bluebird
#karma
#underscore
#react
