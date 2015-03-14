#!/usr/bin/env bash

brew install boot2docker
$(boot2docker shellinit)
boot2docker init
boot2docker up
