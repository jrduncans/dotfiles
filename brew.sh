#!/bin/sh

which brew > /dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew tap homebrew/cask-fonts
brew install fish git git-trim git-delta vim rbenv wget jq dos2unix awscli coreutils pigz eza ripgrep fd pup bat dust choose-rust xh sd gh starship coursier plantuml python3 gawk htop p4v font-fira-code font-fira-code-nerd-font jrduncans/timeturner/timeturner asdf
brew install --cask 1password/tap/1password-cli
