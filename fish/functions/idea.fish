function idea
  set project $argv[1]

  set ideas \
    /Applications/Intellij\ IDEA\ 14.app \
    /Applications/IntelliJ\ IDEA\ 14\ CE.app \
    /opt/homebrew-cask/Caskroom/intellij-idea-ce/14.1.3/IntelliJ\ IDEA\ 14\ CE.app

  set foundIdea 0
  for idea in $ideas
    if test -e $idea
      echo "opening with $idea"
      set foundIdea 1
      open $project -a $idea
      break;
    end
  end

  if test $foundIdea -eq 0
    echo "IDEA not found!"
  end
end
