function mkdir --wraps mkdir
  command mkdir -p $argv;
end

function jl --description 'colorized pretty-printed JSON in less'
  jq -C . | less -R
end

function __path_prepend
  set p $argv[1]
  if test -e $p
    set PATH $p $PATH
  end
end

if status --is-login
  __path_prepend /opt/homebrew/bin
  __path_prepend /opt/homebrew/sbin
  __path_prepend ~/local/bin
  __path_prepend ~/.local/bin
  __path_prepend ~/bin
  __path_prepend ~/.cargo/bin
  __path_prepend ~/Library/Application\ Support/Coursier/bin
end

functions -e __path_prepend

if test -e /opt/homebrew/bin
  function ibrew --wraps brew
    arch -x86_64 /usr/local/bin/brew $argv
  end
end

function ll --wraps eza
  eza -lh --git $argv
end

function amm --description 'Scala REPL'
  sh -c 'amm "$@"' amm $argv
end

function amm-cats --wraps amm
  amm -p ~/dotfiles/amm/cats-predef.sc
end

complete --command aws --no-files --arguments '(begin; set --local --export COMP_SHELL fish; set --local --export COMP_LINE (commandline); aws_completer | sed \'s/ $//\'; end)'
