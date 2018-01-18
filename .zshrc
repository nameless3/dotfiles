. ~/.config/zsh/zsh-autosuggestions.zsh
. /usr/share/fzf/completion.zsh
. ~/.aliases
set -o vi
HISTFILE=~/.bash_history

autoload -Uz compinit promptinit
compinit
promptinit

setopt COMPLETE_ALIASES
