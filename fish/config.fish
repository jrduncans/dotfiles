set -gx LC_ALL en_US.UTF-8
set DOTFILES ~/dotfiles

set fish_path ~/.oh-my-fish
set fish_custom $DOTFILES/fish/oh-my-fish
. $fish_path/oh-my-fish.fish

Theme "bobthefish"
Plugin "balias"
Plugin "brew"
Plugin "extract"
Plugin "local-config"
Plugin "peco"
Plugin "sublime"
Plugin "jrduncans"
Plugin "java"
Plugin "timesheet"
Plugin "keys"
Plugin "aws"

eval (python -m virtualfish auto_activation)
