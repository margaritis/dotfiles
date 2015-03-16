#!/usr/bin/env bash

# Apps
apps=(
  alfred
  qlcolorcode
  coconutbattery
  qlstephen
  qlmarkdown
  quicklook-json
  qlprettypatch
  quicklook-csv
  betterzipql
  qlimagesize
  webpquicklook
  suspicious-package
  google-drive
  dropbox
  google-chrome
  google-hangouts
  firefox
  opera
  slack
  skype
  spotify
  appcleaner
  hazel
  karabiner
  virtualbox
  vagrant
  vagrant-manager
  flash
  iterm2
  shiori
  atom
  sublime-text3
  teamviewer
  texmaker
  totalterminal
  yemuzip
  jeromelebel-mongohub
  mysqlworkbench
  mamp
  cyberduck
  transmission
  dash
  mailbox
  vlc
  cloudup
  firefoxdeveloperedition
  cheatsheet
  eclipse-ide
  github
  java
  sourcetree
  # slate
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}
