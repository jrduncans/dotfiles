balias mkdir 'mkdir -p'
balias jl 'jq -C . | less -R'

if status --is-login
  set PATH $PATH ~/bin ~/.local/bin
end
