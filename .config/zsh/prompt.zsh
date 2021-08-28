fpath+=$HOME/.config/zsh/pure

# prompt init
autoload -U promptinit; promptinit

# prompt symbols
PURE_PROMPT_SYMBOL=\>\>
PURE_PROMPT_VICMD_SYMBOL=\<\<

# turn on git stash status
zstyle :prompt:pure:git:stash show yes

prompt pure
