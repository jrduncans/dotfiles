function update_git_email
  if not set -q argv[1]
    echo 'Directory to search not provided'
    return 1
  end

  if not set -q argv[2]
    echo 'Email to set not provided'
    return 1
  end

  set cwd (pwd)
  for repo in (find $argv[1] -type d -name .git | xargs -n 1 dirname); cd $repo; and git config user.email $argv[2]; and cd $cwd; end
end
