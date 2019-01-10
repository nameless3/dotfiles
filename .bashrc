#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

. /usr/share/fzf/completion.bash
. $XDG_CONFIG_HOME/aliases

#PS1='[\u@\h \W]\$ ' # default
PS1='\[\e[1;32m\]\u@\h \w>\[\e[0m\] '
#PS1='\[\e[34;44m\][\[\e[m\]\[\e[37;44m\]\u\[\e[m\]\[\e[44m\] \[\e[m\]\[\e[45m\] \[\e[m\]\[\e[37;45m\]\h\[\e[m\]\[\e[45m\] \[\e[m\]\[\e[43m\] \[\e[m\]\[\e[30;43m\]\w\[\e[m\]\[\e[33;43m\]]\[\e[m\]\[\e[33m\]\\$\[\e[m\] '
set -o vi
HISTCONTROL=ignoreboth
HISTFILE=$XDG_DATA_HOME/bash_history
