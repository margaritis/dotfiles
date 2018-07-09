#!/usr/bin/env bash

rvm use 2.2.10
gem install bundler jekyll rails passenger cheatset sass --no-document

rvm use 2.3.7
gem install bundler jekyll rails passenger cheatset sass --no-document

rvm use 2.4.4
gem install bundler jekyll rails passenger cheatset sass --no-document

rvm use 2.5.1
gem install bundler jekyll rails passenger cheatset sass --no-document

rvm use 2.2.10 --default
