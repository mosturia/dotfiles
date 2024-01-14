export MOZ_ENABLE_WAYLAND=1
export GTK_USE_PORTAL=1
export XDG_SCREENSHOTS_DIR="$HOME/Pictures/Screenshots"
#export XWAYLAND_NO_GLAMOR=1

$DE='Hyprland'

export QT_QPA_PLATFORMTHEME=qt5ct

# Execute graphical session
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  echo "Executing $DE ..."
  exec $DE
fi
