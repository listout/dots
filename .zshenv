typeset -U PATH path
path=("$HOME/.local/bin" "$path[@]")
if [[ -d "$HOME/.platformio" ]]; then
	path=("$HOME/.platformio/penv/bin" "$path[@]")
fi
export PATH

# fnm
export PATH=/home/gogo/.fnm:$PATH
eval "`fnm env`"

export EDITOR=/usr/bin/nvim
export PAGER="/bin/sh -c \"col -b | nvim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""
export MANPAGER="/bin/sh -c \"col -b | nvim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""
export VISUAL=/usr/bin/nvim
export BROWSER=/usr/bin/firefox
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_PLATFORM_PLUGIN=qt5ct
export QT_PLATFORMTHEME=qt5ct
export GPG_TTY=$(tty)
