function idea
  set project $argv[1]

  set ideas \
    Intellij\ IDEA\ 14.app \
    IntelliJ\ IDEA\ 14\ CE.app

  set foundIdea 0
  for idea in $ideas
    if test -e /Applications/$idea
      echo "opening with $idea"
      set foundIdea 1
      open $project -a /Applications/$idea
      break;
    end
  end

  if test $foundIdea -eq 0
    echo "IDEA not found!"
  end
end
