#!/usr/bin/env bash
# http://virtualenvwrapper.readthedocs.org/en/latest/index.html

brew install python
brew install python3
brew install autoenv
pip3 install --upgrade pip
pip3 install --upgrade setuptools
pip3 install virtualenv
pip3 install virtualenvwrapper
mkdir ~/.virtualenvs

export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
source /usr/local/bin/virtualenvwrapper.sh
# mkvirtualenv venv
mkvirtualenv --python=`which python3` venv
workon venv

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/Library/Caches/pip

pip install awsebcli
pip install powerline-status
# Codeintel issue with python3.
# pip install codeintel
pip install pyodbc
