## History vars
HISTSIZE=100000
SAVEHIST=100000

## Variables
export EDITOR="nvim"
export VISUAL="nvim"
export EDGUI="codium"
export ZDOTDIR="$HOME"/.config/zsh

typeset -U path PATH
path=(~/.local/bin/ $path)
export PATH="$PATH:$HOME/.symfony5/bin:$PATH"
export PATH="$PATH:$HOME/.local/share/cargo/bin"
export PATH="$PATH:$HOME/.local/bin/notifications"
export PATH="$PATH:$HOME/.local/bin/fzf"
export HOMEBREW_NO_ANALYTICS=1
