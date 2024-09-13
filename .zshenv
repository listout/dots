# XDG directories
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

# fnm
#export PATH=/home/gogo/.fnm:$PATH
PATH="$HOME/.local/bin:$PATH"
if [ -d $HOME/.local/nvim ]; then
	PATH="$HOME/.local/nvim/bin:$PATH"
fi
export PATH=$HOME/.local/bin:$PATH
export npm_config_prefix="$HOME/.local"
#eval "`fnm env`"

if [ -d $HOME/.local/nvim ]; then
	export EDITOR=$HOME/.local/nvim/bin/nvim
	export MANPAGER='$HOME/.local/nvim/bin/nvim +Man!'
	export VISUAL=$HOME/.local/nvim/bin/nvim
else
	export EDITOR=nvim
	export MANPAGER='nvim +Man!'
	export VISUAL=nvim
fi
export PAGER="less"
export BROWSER=/usr/bin/firefox
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_PLATFORM_PLUGIN=qt5ct
export QT_PLATFORMTHEME=qt5ct
export GPG_TTY=$(tty)
export LIBGL_DRI3_DISABLE=true
