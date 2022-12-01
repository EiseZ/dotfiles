#!/bin/sh
mkdir -p "$HOME/.dotfiles/$1"
mv "$HOME/$1" "$HOME/.dotfiles/$1/"
stow --dir=$HOME/.dotfiles $1
