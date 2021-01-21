function __java_version_function
  set jv $argv[1]
  if /usr/libexec/java_home -v $jv &>/dev/null
    function "java$jv" --inherit-variable jv
      set -x -g JAVA_HOME (/usr/libexec/java_home -v $jv 2>/dev/null)
    end
  end
end

set __java_versions 1.8 11 12 13 14 15
for v in $__java_versions; __java_version_function $v; end

java11

set -x -g P4MERGE /Applications/p4merge.app/Contents/Resources/launchp4merge
