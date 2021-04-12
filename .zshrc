# Created by newuser for 5.8

## Use vim mode
bindkey -v
export KEYTIMEOUT=1

## Source other configs
### key_bindings should be before completion due to complist
source $HOME/.config/zsh/key_bindings.zsh
source $HOME/.config/zsh/completion.zsh
source $HOME/.config/zsh/history_search.zsh
source $HOME/.config/zsh/aliases.zsh
source $HOME/.config/zsh/help_command.zsh
