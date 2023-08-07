# Defined in /tmp/fish.gAgnRb/new_ruby_script.fish @ line 2
function new_ruby_script
  set -l (mktemp script.rb.XXXX)
  if test -n "$argv"
    set script "$argv"
  end
  set -l url "https://raw.githubusercontent.com/pazdera/scriptster/master"
  curl "$url/examples/minimal-template.rb" >"$script"
  chmod +x "$script"
  $EDITOR "$script"
end
