#!/usr/bin/env bash
# http://virtualenvwrapper.readthedocs.org/en/latest/index.html

brew install python
brew install python3
brew install autoenv
pip install virtualenv
virtualenv ~/Envs/DevVirtualEnv
source ~/Envs/DevVirtualEnv/bin/activate

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/Library/Caches/pip


pip install awsebcli
pip install powerline-status
pip install codeintel
pip install pyodbc
