#!/bin/sh

type brew 1>/dev/null 2>&1 || ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap caskroom/fonts

brew install fish git ruby scala sbt giter8 git-extras vim maven wget jq dos2unix p7zip unrar tree awscli coreutils typesafe-activator pigz exa ripgrep fd pup ammonite-repl ansible bat python python3
brew cask install alfred java spectacle sourcetree dash qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webpquicklook suspicious-package p4merge font-fira-code visual-studio-code bartender docker gitter iterm2
