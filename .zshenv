typeset -U PATH path
path=("$HOME/.local/bin" "$path[@]")
export PATH

export EDITOR=/usr/bin/nvim
export PAGER="/usr/bin/nvim -u NORC +Man!"
export MANPAGER="/usr/bin/nvim -u NORC +Man!"
export VISUAL=/usr/bin/nvim
export BROWSER=/usr/bin/firefox
export QT_QPA_PLATFORMTHEME=qt5ct
