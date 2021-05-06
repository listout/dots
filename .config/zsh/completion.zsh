# From https://wiki.archlinux.org/index.php/Zsh

### Handle command not found
if [ -e /usr/share/doc/pkgfile/command-not-found.zsh ]; then
	source /usr/share/doc/pkgfile/command-not-found.zsh
else
	echo "pkgfile not installed"
fi

### For autocompletion with an arrow-key driven interface
zstyle ':completion:*' menu select

### For autocompletion of command line switches for aliases
setopt complete_aliases

### For enabling autocompletion of privileged environments in privileged commands
zstyle ':completion::complete:*' gain-privileges 1

### Use cache
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.cache/zsh/cache

### Prevent CVS files/directories from being completed
zstyle ':completion:*:(all-|)files' ignored-patterns '(|*/)CVS'
zstyle ':completion:*:cd:*' ignored-patterns '(*/)#CVS'

### Fuzzy matching of completions for when you mistype them
zstyle ':completion:*' completer _complete _correct _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

### The number of errors allowed by _approximate to increase with the length of what you have typed so far
zstyle -e ':completion:*:approximate:*' \
	max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3))numeric)'

### Ignore completion functions for commands you don't have
zstyle ':completion:*:functions' ignored-patterns '_*'

### With helper functions
xdvi() { command xdvi ${*:-*.dvi(om[1])} }

### you can avoid having to complete at all in many cases, but if you do, you might want to fall into menu selection immediately andto have the words sorted by time:
zstyle ':completion:*:*:xdvi:*' menu yes select
zstyle ':completion:*:*:xdvi:*' file-sort time

### Completing process IDs with menu selection
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list always
zstyle ':completion:*:processes' command 'ps -A -o pid,user,comm -w -w'

### If you end up using a directory as argument, this will remove the trailing slash
zstyle ':completion:*' squeeze-slashes true

### cd will never select the parent directory
zstyle ':completion:*:cd:*' ignore-parents parent pwd

### cd without cd
setopt auto_cd

### Quick change directories
rationalise-dot() {
	if [[ $LBUFFER = *.. ]]; then
		LBUFFER+=/..
	else
		LBUFFER+=.
	fi
}
zle -N rationalise-dot
bindkey . rationalise-dot

### Complete from middle of filename
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'

### auto rehash
zstyle ':completion:*' rehash true

### add colors
zstyle ':completion:*' menu select list-colors ${(s.:.)LS_COLORS}

### completion and prompt init
autoload -Uz compinit colors vcs_info
fpath+=~/.zfunc
compinit
