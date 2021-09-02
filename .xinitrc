xsetroot -cursor_name left_ptr
xset +fp $HOME/.local/share/fonts/uw_ttyp0/
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
xrdb ~/.Xresources &&
dbus-launch bspwm

# vim: set ft=sh:
