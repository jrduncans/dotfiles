function colored
  set_color $argv[1]
  set -e argv[1]
  echo $argv
  set_color normal
end
