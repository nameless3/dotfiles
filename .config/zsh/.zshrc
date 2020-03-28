. /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
. /usr/share/fzf/completion.zsh
. $XDG_CONFIG_HOME/aliases
set -o vi
HISTFILE=$XDG_DATA_HOME/bash_history

autoload -Uz compinit promptinit
compinit
promptinit

setopt COMPLETE_ALIASES

tb() { nc termbin.com 9999; }
