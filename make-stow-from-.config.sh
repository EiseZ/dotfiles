#!/bin/sh
mkdir -p "$HOME/.dotfiles/$1/.config"
mv "$HOME/.config/$1" "$HOME/.dotfiles/$1/.config/"
stow --dir=$HOME/.dotfiles $1
