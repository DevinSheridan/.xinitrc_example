#!/bin/sh

#picom &

wal -c &
/home/light/wal/wal -c &
#pipx run pywal -i Misa.png &

#/home/light/wal/wal -i /home/light/Pictures/Misa.png &

#feh --no-fehbg --bg-fill #placesinglequoteherez/home/light/Pictures/Misa.png'

#/home/light/slstatus/slstatus &

#exec dwm

#pipx run pywal -i Misa.png

###################################

# Start compositor (picom)
picom &

# Set wallpaper with wal
exec /home/light/wal/wal -i /home/light/Pictures/Misa.png &

# Start status bar (slstatus)
/home/light/slstatus/slstatus &

#hotkey
exec xbindkeys &

# Start window manager (dwm)
exec dwm
