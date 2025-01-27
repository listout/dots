# XDG directories
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

eval $(keychain --eval --quiet id_rsa_thinkpade14 digitalocean)

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
	export VISUAL=$HOME/.local/nvim/bin/nvim
else
	export EDITOR=nvim
	export VISUAL=nvim
fi
export MANPAGER='nvim +Man!'
export PAGER="less"
export BROWSER=/usr/bin/firefox
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_PLATFORM_PLUGIN=qt5ct
export QT_PLATFORMTHEME=qt5ct
export GPG_TTY=$(tty)
export LIBGL_DRI3_DISABLE=true
