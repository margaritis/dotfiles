#!/usr/bin/env bash

# You can check available fonts here
# https://github.com/caskroom/homebrew-fonts/tree/master/Casks

# Apps
apps=(
  teamviewer
  google-drive-file-stream
  google-backup-and-sync
  alfred
  qlcolorcode
  qlstephen
  qlmarkdown
  quicklook-json
  qlprettypatch
  quicklook-csv
  betterzipql
  qlimagesize
  webpquicklook
  hyperswitch
  dropbox
  google-chrome
  google-chrome-canary
  google-hangouts
  firefox
  firefoxdeveloperedition
  keka
  opera
  slack
  hipchat
  gitter
  skype
  spotify
  appcleaner
  karabiner
  flash-player
  iterm2
  shiori
  atom
  sublime-text
  visual-studio-code
  texmaker
  yemuzip
  jeromelebel-mongohub
  mysqlworkbench
  sequel-pro
  mamp
  cyberduck
  transmission
  dash
  vlc
  cheatsheet
  eclipse-ide
  github
  java
  java8
  #java7
  java6
  sourcetree
  flashlight
  fluid
  spectacle
  docker
  xquartz
  font-inconsolata
  font-anonymous-pro
  font-anonymice-powerline
  font-courier-prime
  font-source-code-pro
  font-source-code-pro-for-powerline
  # soundnode
  # virtualbox
  # tunnelblick
  # vagrant
  # vagrant-manager
  # suspicious-package
  # slate
  # bee (if available)
  # Majic (attlasian)
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}
