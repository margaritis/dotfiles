#!/usr/bin/env bash

rvm use 1.9.3
gem install bundler jekyll rails passenger

rvm use 2.2.0
gem install bundler jekyll rails passenger

rvm use 2.2.0 --default
