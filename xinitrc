#!/bin/sh

#closes any cached instance of wal to prevent picom errors
wal -c &
/home/light/wal/wal -c &

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

#end
