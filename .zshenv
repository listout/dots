# XDG directories
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

# fnm
#export PATH=/home/gogo/.fnm:$PATH
PATH="$HOME/.local/bin:$PATH"
export PATH=/home/gogo/.local/bin:$PATH
export npm_config_prefix="$HOME/.local"
#eval "`fnm env`"

export TERM=xterm-256color
export EDITOR=/usr/bin/nvim
export PAGER="/bin/sh -c \"col -b | nvim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""
export MANPAGER="/bin/sh -c \"col -b | nvim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""
export VISUAL=/usr/bin/nvim
export BROWSER=/usr/bin/firefox
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_PLATFORM_PLUGIN=qt5ct
export QT_PLATFORMTHEME=qt5ct
export GPG_TTY=$(tty)
