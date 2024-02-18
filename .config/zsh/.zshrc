## History vars
HISTSIZE=10000
SAVEHIST=10000
HISTFILE="$XDG_STATE_HOME"/zsh/history

## Variables
export EDITOR="nvim"
export VISUAL="nvim"
export EDGUI="codium"
export ZDOTDIR="$HOME"/.config/zsh

zstyle :compinstall filename "$ZDOTDIR/.zshrc"

autoload -Uz compinit promptinit

zstyle ':vcs_info:git:*' formats '%b'
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                           /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

compinit

## Prompt
promptinit

# I know I should use zsh's vcs stuff but idc
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
	 # This doesn't work lol
     #unntracked=$(git status --porcelain=v1 2>/dev/null | wc -l)
     #if [[ $untracked -eq "0" ]]; then
     #	printf ''
     #else
     #	printf 'X ($untracked)'
     #fi
}
git_info() {
  if [[ $(parse_git_branch) ]]; then
    printf '󰊢'
    parse_git_branch
  fi
}
COL_DIR="%F{6}%"
COL_GIT="%F{4}%"
COL_NORM="%F{7}%"
COL_ARCH="%F{5}%"
setopt PROMPT_SUBST
export PROMPT='$COL_DIR ╭ %~ $(git_info)
╰─$COL_ARCH  $COL_NORM'

source "$ZDOTDIR/.launchrc"
source "$ZDOTDIR/.bindrc"
source "$ZDOTDIR/.aliasrc"
source "$ZDOTDIR"/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source "$ZDOTDIR"/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Nope, you don't get any of that!
source "$ZDOTDIR/.secretrc"
