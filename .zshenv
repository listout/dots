typeset -U PATH path
path=("$HOME/.local/bin" "$path[@]")
export PATH

# fnm
export PATH=/home/gogo/.fnm:$PATH
eval "`fnm env`"

export EDITOR=/usr/bin/nvim
export PAGER="/usr/bin/nvim -u NONE +Man!"
export MANPAGER="/usr/bin/nvim -u NONE +Man!"
export VISUAL=/usr/bin/nvim
export BROWSER=/usr/bin/firefox
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_PLATFORM_PLUGIN=qt5ct
export QT_PLATFORMTHEME=qt5ct
export GPG_TTY=$(tty)
