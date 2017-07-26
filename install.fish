#!/usr/bin/env fish

set DOTFILES ~/dotfiles
set THIRDPARTY ~/workspace/third-party
set SUBLIME_PREFS ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
set VSCODE_PREFS ~/Library/Application\ Support/Code/User
set CWD (pwd)

source $DOTFILES/fish/functions/colored.fish

function ensure_parent
  set parent (dirname $argv[1])

  if not test -e $parent
    echo "creating parent directory $parent"
    mkdir -p $parent
  end
end

function make_link
  if test -e $argv[2]
    colored yellow "$argv[2] already exists"
  else
    if test -e $argv[1]
      ensure_parent $argv[2]

      echo "creating symlink $argv[2]"
      ln -s $argv[1] $argv[2]
    else
      colored yellow "$argv[1] does not exist"
    end
  end
end

function clone_git_repo
  if test -e $argv[2]
    colored yellow "$argv[2] already exists"
  else
    ensure_parent $argv[2]
    git clone $argv[1] $argv[2]
  end
end

make_link $DOTFILES/fish/config.fish ~/.config/fish/config.fish
make_link $DOTFILES/fish/functions ~/.config/fish/functions
make_link $DOTFILES/fish/completions ~/.config/fish/completions
make_link $DOTFILES/fish/oh-my-fish ~/.config/omf
make_link $DOTFILES/git/gitconfig ~/.gitconfig
make_link $DOTFILES/git/gitconfig_nike ~/.gitconfig_nike
make_link $DOTFILES/vim/vimrc ~/.vimrc
make_link $DOTFILES/ruby/irbrc ~/.irbrc
make_link $DOTFILES/sbt/global.sbt ~/.sbt/0.13/global.sbt
make_link $DOTFILES/sbt/plugins/plugins.sbt ~/.sbt/0.13/plugins/plugins.sbt
make_link $DOTFILES/sublime/Preferences.sublime-settings $SUBLIME_PREFS/Preferences.sublime-settings
make_link $DOTFILES/sublime/Scala.sublime-settings $SUBLIME_PREFS/Scala.sublime-settings
make_link $DOTFILES/sublime/Ruby.sublime-settings $SUBLIME_PREFS/Ruby.sublime-settings
make_link $DOTFILES/sublime/Ensime.sublime-settings $SUBLIME_PREFS/Ensime.sublime-settings
make_link $DOTFILES/sublime/Package\ Control.sublime-settings $SUBLIME_PREFS/Package\ Control.sublime-settings
make_link $DOTFILES/sublime/fish.sublime-settings $SUBLIME_PREFS/fish.sublime-settings
make_link $DOTFILES/vscode/settings.json $VSCODE_PREFS/settings.json

mkdir -p ~/bin
mkdir -p ~/.local/bin

clone_git_repo https://github.com/oh-my-fish/oh-my-fish.git $THIRDPARTY/oh-my-fish
cd $THIRDPARTY/oh-my-fish
eval ./bin/install --offline
cd $CWD

clone_git_repo https://github.com/gmarik/Vundle.vim.git $THIRDPARTY/Vundle.vim
make_link $THIRDPARTY/Vundle.vim ~/.vim/bundle/Vundle.vim

clone_git_repo https://github.com/altercation/solarized.git $THIRDPARTY/solarized
clone_git_repo https://github.com/jkaving/intellij-colors-solarized.git $THIRDPARTY/intellij-colors-solarized

clone_git_repo https://github.com/jrduncans/timetracker.git ~/apps/timetracker

make_link ~/workspace/third-party/solarized/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/solarized.vim

vi +PluginInstall +qall

sudo pip install virtualenv
pip install --user virtualfish

grep "/usr/local/bin/fish" /etc/shells > /dev/null; or echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
echo "To set fish as default shell, run:  chsh -s /usr/local/bin/fish"
