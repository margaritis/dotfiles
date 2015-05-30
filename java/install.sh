#!/usr/bin/env bash

brew install jenv
brew install maven

# Configure jenv
#
eval "$(jenv init -)"
jenv enable-plugin export
jenv enable-plugin ant
jenv enable-plugin scala
jenv enable-plugin gradle
jenv enable-plugin groovy
jenv enable-plugin maven
