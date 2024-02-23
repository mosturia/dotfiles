#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

COL_DIR="\e[35m"
COL_GIT="\e[33m"
COL_NORM="\e[97m"
COL_ARCH="\e[34m"

git_info() {
  if [[ $(parse_git_branch) ]]; then
    printf '󰊢'
    parse_git_branch
  fi
}

PS1="╭$COL_DIR $(pwd) $COL_GIT $(git_info) \n$COL_DIR╰─ $COL_NORM"
#PS1='[\u@\h \W]\$ '

alias "ls"='eza --color=auto --icons=auto'
alias "yt"="yt-dlp"
alias "yt-music"="yt-dlp --embed-thumbnail -f bestaudio -x --audio-format mp3 --audio-quality 320k"
alias "mpv"="mpv --vo=gpu-next tone-mapping=bt.2446a" # Otherwise HDR content in SDR looks off...
alias "mpv-term"="mpv --no-config --no-pause --vo=tct"
alias "nm-shutup"="sudo systemctl restart NetworkManager"

# Fetch Pywal colors
cat $HOME/.cache/wal/sequences

# Support for Powerline
#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#. /usr/share/powerline/bindings/bash/powerline.sh

# Editor stuff
export EDITOR="nvim"
export VISUAL="nvim"
