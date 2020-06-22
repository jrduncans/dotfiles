function git_cleanup_merged_branches
  git branch --merged | grep -v (git branch --show-current)

  read -p "echo 'delete all of these branches? (y/N): '" do_delete

  if test $do_delete = "y"
    echo "deleting..."
    git branch --merged | grep -v (git branch --show-current) | xargs -n 1 git branch -d
  end
end
