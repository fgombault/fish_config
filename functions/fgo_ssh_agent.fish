# Defined in /tmp/fish.EPhJHJ/fgo_ssh_agent.fish @ line 2
function fgo_ssh_agent
  if ! pgrep ssh-agent >/dev/null
    ssh-agent -c >$HOME/.ssh_agent
    grep -v echo $HOME/.ssh_agent | sponge $HOME/.ssh_agent
  end
  source $HOME/.ssh_agent
  if ! ssh-add -l >/dev/null
    ssh-add $HOME/.ssh/id_rsa_grismouton
    # ssh-add $HOME/.ssh/id_rsa_boulot
  end
end
