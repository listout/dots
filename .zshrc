# Created by gogo for 5.8

# Profiling
#zmodload zsh/zprof

## Use vim mode
bindkey -v
# Yank to the system clipboard
function vi-yank-xclip {
	zle vi-yank
	echo "$CUTBUFFER" | xsel -i -b
}

zle -N vi-yank-xclip
bindkey -M vicmd 'y' vi-yank-xclip
export KEYTIMEOUT=1

## Source other configs
### key_bindings should be before completion due to complist
source $HOME/.config/zsh/key_bindings.zsh
source $HOME/.config/zsh/completion.zsh
source $HOME/.config/zsh/prompt.zsh
source $HOME/.config/zsh/history_search.zsh
source $HOME/.config/zsh/aliases.zsh
source $HOME/.config/zsh/help_command.zsh

# Profiling
#zprof
#time zsh -i -c exit
