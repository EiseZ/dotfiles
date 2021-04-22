#
# ~/.bashrc
#

# If not running interactively, don't do anything
neofetch

[[ $- != *i* ]] && return

export PATH="$HOME/.emacs.d/bin:$PATH"

alias ls='ls --color=auto'
alias ..='cd ..'
alias remove='sudo pacman -Rcns'
alias install='sudo pacman -S'
alias list-unused='sudo pacman -Qdtq'
alias remove-unused='sudo pacman -R $(pacman -Qdtq)'
PS1='\u \W >>> '
