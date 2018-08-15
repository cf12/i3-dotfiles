#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Personal Aliases
alias vim='nvim'
alias modi3='vim ~/.config/i3/config'
alias modpolybar='vim ~/.config/polybar/config'

# Load pywal colors
(cat ~/.cache/wal/sequences &)

# Load Powerline
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

