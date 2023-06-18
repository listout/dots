alias vim='nvim'
alias mutt='neomutt'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip --color=auto'
alias ls='ls --hyperlink=auto --color=auto'
alias mv='mv -iv'
alias cp='cp -riv'
alias rm='rm -ir'
alias mkdir='mkdir -vp'
alias less='/usr/share/nvim/runtime/macros/less.sh'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias chkspeed='wget http://speedtest.tele2.net/1GB.zip -O /dev/null'

if [ -d "$HOME/esp/esp-idf" ]
then
	alias get_idf='. $HOME/esp/esp-idf/export.sh'
	export MENUCONFIG_STYLE=monochrome
	export IDF_CCACHE_ENABLE=1
fi

export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

# leio's scripts
function pu () {
	diff --color=auto -u $1 $2
}

function prep () {
        ebuild $1 prepare
        ebuild $2 prepare
        diff --color=auto -u $1 $2
}

function p () {
        if [ $# -gt 1 ]; then
                prep "$@"
        else
                diff --color=auto -u /var/db/pkg/`pwd |rev |cut -d/ -f2 |rev`/"${1%.ebuild}/$1" "$1"
        fi
}

function b2() {
	if [ $# -ne 2 ]; then
		echo "Wrong amount of parameters"
		return
	fi

	cp -v "${1}" "${2}";
	(ekeyword \~all "${2}")
	ebuild "${2}" manifest;
}

function b () {
    if [ $# -ne 2 ]; then
        echo "Wrong amount of parameters"
        return
    fi

    b2 "$@"
    p "${1}" "${2}"
}

function s () {
    git log "$@" |git shortlog -e
}

function ss () {
    git log "$@" |git shortlog -e |grep -v '[Ss]tabilize' | grep -v '[Ss]table' |grep -v '[Kk]eyword ' |less
}
