#!/bin/sh

type brew 1>/dev/null 2>&1 || ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap caskroom/fonts

brew cask install java
brew install fish git ruby rbenv ruby-build scala sbt giter8 git-extras maven wget jq fx dos2unix p7zip unrar tree awscli coreutils typesafe-activator pigz exa ripgrep fd pup ansible bat python python3 gawk
brew cask install alfred spectacle sourcetree dash qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzip webpquicklook p4v font-fira-code visual-studio-code bartender docker gitter hyperswitch
brew tap caskroom/versions
brew cask install java8
brew install vim --with-override-system-vi
