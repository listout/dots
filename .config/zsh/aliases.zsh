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
alias less='less -x4RFsX'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias chkspeed='wget http://speedtest.tele2.net/1GB.zip -O /dev/null'

export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
# nicer highlighting
if [ -f "/usr/share/source-highlight/src-hilite-lesspipe.sh" ]; then
	# ubuntu 12.10: sudo apt-get install source-highlight
	export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
elif [ -f "/usr/bin/src-hilite-lesspipe.sh" ]; then
	# fedora 18: sudo yum install source-highlight
	# gentoo: sudo emerge -a source-highlight
	export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s"
fi

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

alias get_idf='. $HOME/esp/esp-idf/export.sh'
export MENUCONFIG_STYLE=monochrome
export IDF_ENABLE_CCACHE=1

function fman() {
	man -k . | fzf -q "$1" --prompt='man> '  --preview $'echo {} | tr -d \'()\' | awk \'{printf "%s ", $2} {print $1}\' | xargs -r man' | tr -d '()' | awk '{printf "%s ", $2} {print $1}' | xargs -r man
}
