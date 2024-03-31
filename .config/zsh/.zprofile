export MOZ_ENABLE_WAYLAND=1
export GTK_USE_PORTAL=1
export XDG_SCREENSHOTS_DIR="$HOME/Pictures/Screenshots"
export QT_QPA_PLATFORMTHEME=qt5ct
HISTFILE="$XDG_STATE_HOME"/zsh/history
#export XWAYLAND_NO_GLAMOR=1

export SWWW_TRANSITION=grow
export SWWW_TRANSITION_POS=center
export SWWW_TRANSITION_DURATION=1
export SWWW_TRANSITION_FPS=144

eval "$(ssh-agent -s)"

#$DE='Hyprland'

# Execute graphical session
#if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
#  echo "Executing $DE ..."
#  exec $DE
#fi
