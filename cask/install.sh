#!/usr/bin/env bash

# You can check available fonts here
# https://github.com/caskroom/homebrew-fonts/tree/master/Casks

# Apps
apps=(
  teamviewer
  google-drive
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
  hyperswitch
  dropbox
  google-chrome
  google-hangouts
  firefox
  keka
  opera
  slack
  skype
  spotify
  appcleaner
  karabiner
  virtualbox
  vagrant
  vagrant-manager
  flash
  iterm2
  shiori
  atom
  sublime-text3
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
  java7
  java6
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
