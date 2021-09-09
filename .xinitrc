xsetroot -cursor_name left_ptr
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
xrdb ~/.Xresources &&
dbus-launch /usr/bin/i3

# vim: set ft=sh:
