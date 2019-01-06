. /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
. /usr/share/fzf/completion.zsh
. ~/.config/aliases
set -o vi
HISTFILE=~/.local/share/bash_history

autoload -Uz compinit promptinit
compinit
promptinit

setopt COMPLETE_ALIASES
