. ~/.config/zsh/zsh-autosuggestions.zsh
. /usr/share/fzf/completion.zsh
. ~/.aliases
# Lines configured by zsh-newuser-install
HISTFILE=~/.bash_history
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install

autoload -Uz compinit promptinit
compinit
promptinit
