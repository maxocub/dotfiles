#!/usr/bin/env bash

dotfiles=$(echo "bin git i3 nvim tmux zsh")

for f in $dotfiles; do
    stow --restow --target=$HOME $f
done
