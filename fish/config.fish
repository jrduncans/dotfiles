set -gx LC_ALL en_US.UTF-8
set DOTFILES ~/dotfiles

# Path to your oh-my-fish.
set fish_path ~/.oh-my-fish

# Theme
set fish_theme bobthefish

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler
set fish_plugins balias brew extract local-config peco sublime keys

# Path to your custom folder (default path is $FISH/custom)
set fish_custom $DOTFILES/fish/oh-my-fish

# Load oh-my-fish configuration.
source $fish_path/oh-my-fish.fish
