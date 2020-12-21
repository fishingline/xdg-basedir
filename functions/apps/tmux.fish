# https://github.com/tmux/tmux/wiki
set -gx TMUX_CONFIG $XDG_CONFIG_HOME/tmux/tmux.conf
alias tmux='tmux -f "$TMUX_CONFIG"'
