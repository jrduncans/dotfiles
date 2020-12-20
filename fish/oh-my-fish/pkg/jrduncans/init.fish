function mkdir --wraps mkdir
  command mkdir -p $argv;
end

function jl --description 'colorized pretty-printed JSON in less'
  jq -C . | less -R $argv;
end

if status --is-login
  set PATH $PATH ~/.cargo/bin ~/bin ~/.local/bin ~/Library/Application\ Support/Coursier/bin
end

status --is-interactive; and source (rbenv init -|psub)

function ll --wraps exa
  exa -lh --git $argv
end

function amm --description 'Scala REPL'
  sh -c 'amm "$@"' amm $argv
end

function amm-cats --wraps amm
  amm -p ~/dotfiles/amm/cats-predef.sc
end
