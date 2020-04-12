# replacing ~/.bash_profile and ~/.xprofile

[[ -f ~/.bashrc ]] && . ~/.bashrc

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.share"

export ASPELL_CONF="personal $XDG_CONFIG_HOME/aspell/en.pws; repl $XDG_CONFIG_HOME/aspell/en.prepl"
export AUR_PAGER=ranger
#export DCONF_PROFILE="${XDG_CONFIG_HOME:-$HOME/config}"/dconf/user
export DIFFPROG="/usr/bin/nvim -d"
export EDITOR=/usr/bin/nvim
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
#export GDK_BACKEND=wayland
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
export LESSHISTFILE=-
export MAILCAPS="$XDG_CONFIG_HOME"/mailcap
export MOZ_DBUS_REMOTE=1
export MOZ_ENABLE_WAYLAND=1
#export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export RANGER_LOAD_DEFAULT_RC=false
export SUDO_EDITOR=/usr/bin/nvim
export SYSTEMD_LESS=FRXMK
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/nvim/init.vim" | source $MYVIMRC'
export WEECHAT_HOME="$XDG_CONFIG_HOME"/weechat
export WGETRC="$XDG_CONFIG_HOME"/wgetrc
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XKB_DEFAULT_OPTIONS=caps:swapescape,terminate:ctrl_alt_bksp
export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh

export GPG_TTY=$(tty)
