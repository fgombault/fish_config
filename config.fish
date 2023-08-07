which brew 1&>/dev/null
or set -g -a PATH /opt/homebrew/bin /opt/homebrew/sbin

which lvim 1&>/dev/null
or set -g -a PATH ~/.local/bin

# which cargo 1&>/dev/null
# or set -g -a PATH ~/.cargo/bin

if status --is-interactive
  fgo_ssh_agent
  source /Users/fgo/.config/fish/functions/react_to_pwd.fish
end
# rvm default

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/homebrew/Caskroom/miniconda/base/bin/conda
    eval /opt/homebrew/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

zoxide init fish --cmd t | source

abbr -a -- su 'sudo fish'
abbr -a -- flast 'ls -trlh --color'
abbr -a -- vim 'nvim -O'
abbr -a --position anywhere -- ff '(fzf)'
abbr -a -- td 'todo'
