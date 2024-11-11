set -x -g P4MERGE /Applications/p4merge.app/Contents/Resources/launchp4merge

if test -e /Applications/Tailscale.app/Contents/MacOS/Tailscale
  alias tailscale "/Applications/Tailscale.app/Contents/MacOS/Tailscale"
end
