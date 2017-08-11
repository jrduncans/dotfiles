#!/bin/sh

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install fish caskroom/cask/brew-cask git ruby scala sbt giter8 git-extras vim maven wget jq dos2unix p7zip unrar tree awscli coreutils typesafe-activator pigz exa
brew cask install dropbox 1password alfred iterm2 java spectacle sourcetree dash qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webpquicklook suspicious-package p4merge font-fira-code
