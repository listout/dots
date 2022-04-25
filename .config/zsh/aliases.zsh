alias vim='nvim'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip --color=auto'
alias ls='ls --color=auto'
alias mv='mv -iv'
alias cp='cp -riv'
alias rm='rm -ir'
alias mkdir='mkdir -vp'
alias less='/usr/share/nvim/runtime/macros/less.sh'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

if [ -d "$HOME/esp/esp-idf" ]
then
	alias get_idf='. $HOME/esp/esp-idf/export.sh'
	export MENUCONFIG_STYLE=monochrome
	export IDF_CCACHE_ENABLE=1
	export IOT_SOLUTION_PATH=~/esp/esp-iot-solution
fi

export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
