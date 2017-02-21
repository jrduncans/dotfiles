function mkdir --wraps mdkir
  command mkdir -p $argv;
end

function jl --description 'colorized pretty-printed JSON in less'
  jq -C . | less -R $argv;
end

if status --is-login
  set PATH $PATH ~/bin ~/.local/bin
end
