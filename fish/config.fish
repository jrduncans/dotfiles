test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish
which starship > /dev/null; and starship init fish | source
which op > /dev/null; and op completion fish | source
which fzf > /dev/null; and fzf --fish | source
