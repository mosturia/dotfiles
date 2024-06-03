#!/bin/sh
# Takes a screenshot and sends a notification, with a sound and the screenshot taken as the icon,
# which the --notify option of grimshot doesn't do

mode="$1"

screen_loc="$(grimshot savecopy $mode)"
if [ -f "$screen_loc" ]
then
	paplay "/usr/share/sounds/freedesktop/stereo/camera-shutter.oga" &
	notify-send -a "Screenshot" -e -i "$screen_loc" "$screen_loc"
fi
