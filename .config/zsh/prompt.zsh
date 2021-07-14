fpath+=$HOME/.config/zsh/pure

# prompt init
autoload -U promptinit; promptinit

# prompt symbols
PURE_PROMPT_SYMBOL=▲ #λ
PURE_PROMPT_VICMD_SYMBOL=▼ #ẟ

# turn on git stash status
zstyle :prompt:pure:git:stash show yes

prompt pure
