#!/usr/bin/env fish

set DOTFILES ~/dotfiles

source $DOTFILES/fish/functions/colored.fish

function make_link
  if test -e $argv[2]
    colored yellow "$argv[2] already exists"
  else
    if test -e $argv[1]
      set parent (dirname $argv[2])

	  if not test -e $parent
        echo "creating parent directory $parent"
        mkdir -p $parent
      end

      echo "creating symlink $argv[2]"
      ln -s $argv[1] $argv[2]
    else
      colored yellow "$argv[1] does not exist"
    end
  end
end

make_link $DOTFILES/fish/config.fish ~/.config/fish/config.fish
make_link $DOTFILES/fish/functions ~/.config/fish/functions
make_link $DOTFILES/fish/completions ~/.config/fish/completions
make_link $DOTFILES/git/gitconfig ~/.gitconfig
make_link $DOTFILES/vim/vimrc ~/.vimrc
make_link $DOTFILES/ruby/irbrc ~/.irbrc
make_link ~/workspace/third-party/solarized/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/solarized.vim
