test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish
which starship > /dev/null; and starship init fish | source
which op > /dev/null; and op completion fish | source
which fzf > /dev/null; and fzf --fish | source
which fx > /dev/null; and fx --comp fish | source

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
