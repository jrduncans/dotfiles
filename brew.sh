#!/bin/sh

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install fish brew-cask git python ruby scala sbt
brew cask install alfred iterm2 java p4merge spectacle
