{ dbus-monitor --session "type='signal',interface='org.gnome.ScreenSaver'" |
  while read x; do
    case "$x" in
      *"boolean false"*) bing-wallpaper &;;  
    esac
  done
} &