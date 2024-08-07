# History search

dir=$HOME'/.cache/zsh'
if [[ ! -e $dir ]]; then
	mkdir -p $dir
fi

HISTFILE=~/.cache/zsh/zsh_history
HISTSIZE=90000
SAVEHIST=90000
setopt appendhistory

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search

## Do not write duplicate events to history
setopt HIST_SAVE_NO_DUPS
