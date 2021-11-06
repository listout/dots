xsetroot -cursor_name left_ptr
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
xrdb ~/.Xresources &&
dbus-launch /usr/bin/bspwm

# vim: set ft=sh:
