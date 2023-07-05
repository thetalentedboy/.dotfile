#!/bin/sh

export DWM =~/dwm

xrdb -merge ~/.Xresources
sh ~/tools/sh/xrandr.sh &
picom --config ~/tools/scripts/config/picom.conf &
fcitx5 &
albert &
exec dwm
