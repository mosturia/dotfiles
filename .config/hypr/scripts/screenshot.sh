#!/bin/sh
# Takes a screenshot and sends a notification, with a sound and the screenshot taken as the icon,
# which the --notify option of grimshot doesn't do
screen_loc="$(grimshot save screen)"
mpv "/usr/share/sounds/freedesktop/stereo/camera-shutter.oga" &
notify-send -a "Screenshot" -e -i "$screen_loc" "$screen_loc"
