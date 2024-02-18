#!/bin/sh
# Takes a screenshot and sends a notification, with a sound and the screenshot taken as the icon,
# which the --notify option of grimshot doesn't do

# Now copies the path to the clipboard
screen_loc="$(grimshot savecopy anything)"
mpv "/usr/share/sounds/freedesktop/stereo/camera-shutter.oga" &
notify-send -a "Screenshot" -e -i "$screen_loc" "$screen_loc"
