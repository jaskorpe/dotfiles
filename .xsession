#!/bin/bash

# Maybe symlink this to .xinitrc also so you can start X by using
# startx

export LANG=en_US.utf8

xrdb $HOME/.Xresources
xset b off

setxkbmap no
xmodmap $HOME/.Xmodmap

xscreensaver -nosplash&

synclient VertEdgeScroll=0
synclient RBCornerButton=0
synclient RTCornerButton=0
synclient HorizTwoFingerScroll=1

exec $HOME/programs/stumpwm/stumpwm
