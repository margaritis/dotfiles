#!/usr/bin/env bash
# http://virtualenvwrapper.readthedocs.org/en/latest/index.html

brew install python
brew install python3
pip install virtualenv
virtualenv ~/Envs/DevVirtualEnv
source ~/Envs/DevVirtualEnv/bin/activate

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

pip install awsebcli
