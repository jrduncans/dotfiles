#!/bin/sh

which brew > /dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install fish git vim rbenv wget jq dos2unix awscli coreutils pigz exa ripgrep fd pup bat dust choose-rust xh sd gh starship coursier plantuml python3 gawk htop p4v font-fira-code font-fira-code-nerd-font jrduncans/timeturner/timeturner
