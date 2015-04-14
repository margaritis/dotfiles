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
  flashlight
  fluid
  spectacle
  font-inconsolata
  font-anonymous-pro
  font-anonymous-pro-for-powerline
  font-courier-prime
  font-source-code-pro
  font-source-code-pro-for-powerline
  # slate
  # bee (if available)
  # Majic (attlasian)
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}
