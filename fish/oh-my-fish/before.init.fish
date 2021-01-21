if test -e /opt/homebrew/bin/python3
  set -g VIRTUALFISH_PYTHON "/opt/homebrew/bin/python3"
else if test -e /usr/local/bin/python3
  set -g VIRTUALFISH_PYTHON "/usr/local/bin/python3"
end
