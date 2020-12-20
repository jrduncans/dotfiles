#!/bin/sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew tap homebrew/cask-fonts

brew install fish git rbenv wget jq dos2unix awscli coreutils pigz exa ripgrep fd pup bat python3 gawk
brew install qlcolorcode qlstephen qlmarkdown quicklook-json p4v font-fira-code gitter

brew install vim --with-override-system-vi
