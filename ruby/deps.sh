#!/usr/bin/env bash

rvm use 2.4.9
gem install bundler jekyll rails passenger cheatset sass --no-document

rvm use 2.5.7
gem install bundler jekyll rails passenger cheatset sass --no-document

rvm use 2.6.5
gem install bundler jekyll rails passenger cheatset sass --no-document

rvm use 2.6.5 --default
