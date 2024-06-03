## History vars
HISTSIZE=10000
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_find_no_dups


## Variables
export EDITOR="micro" # imma pussy lol
export VISUAL="micro"
export EDGUI="codium"
export ZDOTDIR="$HOME"/.config/zsh

typeset -U path PATH
path=(~/.local/bin/ $path)
export PATH="$PATH:$HOME/.symfony5/bin:$PATH"
export PATH="$PATH:$HOME/.local/share/cargo/bin"
export PATH="$PATH:$HOME/.local/bin/notifications"
export PATH="$PATH:$HOME/.local/bin/fzf"
export HOMEBREW_NO_ANALYTICS=1
