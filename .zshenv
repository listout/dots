# XDG directories
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

export PROJ_HOME=$HOME/Documents/work/idf_projects/walk

# fnm
#export PATH=/home/gogo/.fnm:$PATH
PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/.local/bin/mgorny-dev-scripts:$PATH"
export PATH=$HOME/.local/bin:$PATH
export npm_config_prefix="$HOME/.local"
#eval "`fnm env`"

export EDITOR=/usr/bin/nvim
export PAGER=less
export MANPAGER=less
export VISUAL=/usr/bin/nvim
export BROWSER=/usr/bin/firefox
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_PLATFORM_PLUGIN=qt5ct
export QT_PLATFORMTHEME=qt5ct
export GPG_TTY=$(tty)
export LIBGL_DRI3_DISABLE=true
