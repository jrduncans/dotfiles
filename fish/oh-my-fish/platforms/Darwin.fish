function java10
  set -x -g JAVA_HOME (/usr/libexec/java_home -v 10 ^/dev/null)
end

function java8
  set -x -g JAVA_HOME (/usr/libexec/java_home -v 1.8 ^/dev/null)
end

function java7
  set -x -g JAVA_HOME (/usr/libexec/java_home -v 1.7 ^/dev/null)
end

function java6
  set -x -g JAVA_HOME (/usr/libexec/java_home -v 1.6 ^/dev/null)
end

java8

set -x -g P4MERGE /Applications/p4merge.app/Contents/Resources/launchp4merge
