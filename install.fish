#!/usr/bin/env fish

set DOTFILES $HOME/dotfiles

source $DOTFILES/fish/functions/colored.fish

function make_link
  if test -e $argv[2]
    colored yellow "$argv[2] already exists"
  else
    echo "creating symlink $argv[2]"
    ln -s $argv[1] $argv[2]
  end
end

make_link $DOTFILES/fish/config.fish ~/.config/fish/config.fish
make_link $DOTFILES/fish/functions ~/.config/fish/functions
