function java8
  set -x -g JAVA_HOME (/usr/libexec/java_home -v 1.8)
end

function java7
  set -x -g JAVA_HOME (/usr/libexec/java_home -v 1.7)
end

function java6
  set -x -g JAVA_HOME (/usr/libexec/java_home -v 1.6)
end

java8

set -x -g P4MERGE /Applications/p4merge.app/Contents/Resources/launchp4merge
