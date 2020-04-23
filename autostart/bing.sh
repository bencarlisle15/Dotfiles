{ gsettings monitor org.gnome.desktop.background picture-uri |
  while read x; do
    case "$x" in
      *"/usr/share/"*) bing-wallpaper &;;
   esac
  done
} &
{ dbus-monitor --session "type='signal',interface='org.gnome.ScreenSaver'" |
  while read x; do
    case "$x" in
      *"boolean false"*) bing-wallpaper &;;
    esac
  done
} &
