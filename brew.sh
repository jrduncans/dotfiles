#!/bin/sh

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install fish caskroom/cask/brew-cask git python ruby scala sbt giter8 git-extras vim maven wget jq dos2unix p7zip unrar tree awscli coreutils
brew cask install alfred iterm2 java spectacle sourcetree qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webpquicklook suspicious-package vagrant virtualbox p4merge intellij-idea-ce hipchat lastpass dropbox gitter skype
