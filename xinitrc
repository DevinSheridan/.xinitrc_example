#!/bin/sh

#Open RC Only      

if test -z "$XDG_RUNTIME_DIR"; then
    exUport XDG_RUNTIME_DIR=$(mktemp -d /tmp/$(id -u)-runtime-dir.XXX)
fi

eval "$(dbus-launch --sh-syntax --exit-with-session)"

#####Put Fun Things Below Here####

#clearing wal command before compositor and then setting wal after stops problems
wal -c &
/home/guts/.venv/bin/wal -c &

#start compositor
picom &

#set wallpaper with wal
  /home/guts/.venv/bin/wal -i /home/guts/Pictures/BerserkHorseMountain.jpg

#Start xbindkeys - I do this twice... probably don't need to.
 xbindkeys &

#start slstatus
 /home/guts/.slstatus/slstatus-1.0/slstatus &


# Start xbindkeys using the script
/home/guts/.scripts/start_xbindkeys.sh &

#start window manager (dwm)
exec dwm

