test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish
brew --prefix asdf &> /dev/null; and source (brew --prefix asdf)/libexec/asdf.fish
test -e {$HOME}/.asdf/plugins/java/set-java-home.fish; and source {$HOME}/.asdf/plugins/java/set-java-home.fish
which starship > /dev/null; and starship init fish | source
which op > /dev/null; and op completion fish | source
