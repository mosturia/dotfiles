#!/bin/bash
wifi="$(nmcli r wifi | awk 'FNR = 2 {print $1}')"
if [ "$wifi" == "enabled" ] 
then
    nmcli r wifi off && notify-send -a "Airplane mode" -i "$HOME/.local/share/fetch_logos/toothfetch/toothless25.jpg" "󰀝  Airplane mode enabled"
else
    nmcli r wifi on && notify-send -a "Airplane mode" -i "$HOME/.local/share/fetch_logos/toothfetch/toothless17.jpg" "󰀞  Airplane mode disabled"
fi
