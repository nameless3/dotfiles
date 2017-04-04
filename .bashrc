#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -hF --color=auto'
alias grep='grep --color=auto'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'
alias ln='ln -i'
alias ping='ping -c 5'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias ip='ip -c'

#PS1="[\u@\h \W]\$ " #default
#PS1="\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] "
PS1="\[\e[34;44m\][\[\e[m\]\[\e[37;44m\]\u\[\e[m\]\[\e[44m\] \[\e[m\]\[\e[45m\] \[\e[m\]\[\e[37;45m\]\h\[\e[m\]\[\e[45m\] \[\e[m\]\[\e[43m\] \[\e[m\]\[\e[30;43m\]\w\[\e[m\]\[\e[33;43m\]]\[\e[m\]\[\e[33m\]\\$\[\e[m\] "

HISTCONTROL=ignoreboth
export SUDO_EDITOR=nano
#export RANGER_LOAD_DEFAULT_RC=false
export QT_QPA_PLATFORMTHEME=qt5ct
