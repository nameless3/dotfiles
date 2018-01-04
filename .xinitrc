#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

[[ -f ~/.session-errors ]] && mv ~/.xsession-errors ~/.xsession-errors.old

# Source .xprofile
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xset s off -dpms
setxkbmap -option caps:escape

# Set a default DE/WM
session=${1:-cinnamon}

case $session in
    cinnamon        ) exec cinnamon-session;;
    cinnamon2d      ) exec cinnamon-session-cinnamon2d;;
    i3|i3wm         ) exec i3;;
    xfce4           ) exec startxfce4;;
    # No known session, try to run it as command
    *               ) exec $1;;
esac
