#!/usr/bin/env bash

dotfiles=$(find . -mindepth 1 -maxdepth 1 -type d -not -path ./.git)

for f in $dotfiles; do
  stow --restow --target="$HOME" "$(basename "$f")"
done
