# replacing ~/.bash_profile and ~/.xprofile

[[ -f ~/.bashrc ]] && . ~/.bashrc

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/share"

export ASPELL_CONF="personal $XDG_CONFIG_HOME/aspell/en.pws; repl $XDG_CONFIG_HOME/aspell/en.prepl"
export AUR_PAGER=ranger
export DIFFPROG=/usr/bin/nvim
export EDITOR=/usr/bin/nvim
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export GIMP2_DIRECTORY="$XDG_CONFIG_HOME"/gimp
export __GL_SHADER_DISK_CACHE_PATH="$XDG_CACHE_HOME"/nv
export GNUPGPHOME="$XDG_DATA_HOME"/gnupgp
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
export LANG=en_US.utf8
export LESSHISTFILE=-
export NO_AT_BRIDGE=1
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
export QT_QPA_PLATFORMTHEME=gtk2
export RANGER_LOAD_DEFAULT_RC=false
export SUDO_EDITOR="/usr/bin/nvim -d"
export SYSTEMD_LESS="FRXMK"
export WEECHAT_HOME="$XDG_CONFIG_HOME"/weechat
export WGETRC="$XDG_CONFIG_HOME"/wgetrc
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XKB_DEFAULT_OPTIONS=caps:swapescape,terminate:ctrl_alt_bksp
export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc
#export JSGC_DISABLE_POISONING=1
#export MOZ_WEBRENDER=1