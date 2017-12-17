#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# Source .xprofile
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile
#
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Set a default DE/WM
session=${1:-cinnamon}

case $session in
    cinnamon        ) exec cinnamon-session;;
    cinnamon2d      ) exec cinnamon-session-cinnamon2d;;
    i3|i3wm         ) exec i3;;
    gnome           ) exec gnome-session;;
    gnome-classic   ) exec gnome-session --session=gnome-classic;;
    kde             ) exec startkde;;
    xfce4           ) exec startxfce4;;
    mate            ) exec mate-session;;
    # No known session, try to run it as command
    *               ) exec $1;;
esac
