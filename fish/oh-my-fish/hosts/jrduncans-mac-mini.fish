if status --is-login
  set PATH /opt/homebrew/bin $PATH
end

function ibrew --wraps brew
  arch -x86_64 /usr/local/bin/brew $argv
end
