#!/usr/bin/env bash

brew install uv

# Install all Python versions
uv python install 3.12 3.13 3.14

# Set global default to 3.12 (powerline-status requires 3.12)
echo "3.12" > ~/.python-version

# Create the venv at ~/.virtualenvs/venv with Python 3.12 so powerline paths still work
uv venv --python 3.12 ~/.virtualenvs/venv

# Install packages into the venv
uv pip install --python ~/.virtualenvs/venv powerline-status pyodbc

# Install CLI tools in isolated uv-managed environments
uv tool install awsebcli
uv tool install checkov
