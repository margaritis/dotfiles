#!/usr/bin/env bash

rvm use  2.6.5
gem install bundler jekyll rails passenger cheatset sass --no-document

rvm use  2.7.2
gem install bundler jekyll rails passenger cheatset sass --no-document

rvm use 3.0.0
gem install bundler jekyll rails passenger cheatset sass --no-document

rvm use 2.7.2 --default
